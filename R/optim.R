iToMinimize <- function(nn) {
    return(
        function(parameter) {
            nn$sigma <<- parameter
            result <<- NULL
            result <<- perf(nn)$fails
            if(is.null(result)) return(Inf)
            return(result)
        }
    )
}

optim.pnn <- function(nn, limits=c(0,10)) {
    ToMinimize <- iToMinimize(nn)
    library(rgenoud)
    range <- matrix(limits, ncol=2)
    opt <- genoud(fn=ToMinimize, nvars=1, Domains=range, pop.size=10, wait.generations=2, solution.tolerance=1)
    nn$opt <- opt
    nn$sigma <- opt$par
    nn <- perf(nn)
    return(nn)
}

plot.sigma <- function(nn, limits=c(0,2), resolution=10) {
    Sigma <- seq(limits[1], limits[2], length.out=resolution)
    Success <- function(sigma, nn) {
        nn$sigma <- sigma
        return(perf(nn)$success)
    }
    Performance <- as.vector(apply(X=cbind(Sigma), MARGIN=1, FUN=Success, nn))
    plot(Performance~Sigma)
}