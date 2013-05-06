#' Smooth
#' 
#' Set the smoothing parameter.
#' 
#' The function \code{smooth} sets the smoothing parameter for a Probabilist neural network. If you have no idea of which value it can be, you can let the function finds the best value using a genetic algorithm. This search takes some time, so if you have already an idea of the value, you can set it in the \code{sigma} argument.
#' 
#' @param nn A Probabilist neural network.
#' @param limits A vector giving the interval (minimum, maximum) in which the function has to search the best value.
#' 
#' @seealso \code{\link{pnn-package}}, \code{\link{learn}}, \code{\link{perf}}, \code{\link{guess}}, \code{\link{norms}}, \code{\link{skin}}
#' 
#' @references Walter Mebane, Jr. and Jasjeet S. Sekhon. 2011. Genetic Optimization Using Derivatives: The rgenoud package for R. Journal of Statistical Software, 42(11): 1-26.
#' @examples
#' library(pnn)
#' data(norms)
#' 
#' # Search the best value
#' pnn <- learn(set=norms)
#' pnn <- smooth(pnn)
#' pnn$sigma
#' 
#' # Or set the value
#' pnn <- smooth(pnn, sigma=0.8)
#' 
#' @export
smooth <- function(nn, limits=c(0,10), sigma) {
    if(!missing(sigma)) {
        nn$sigma <- sigma
        return(nn)
    }
    ToMinimize <- iToMinimize(nn)
    library(rgenoud)
    range <- matrix(limits, ncol=2)
    opt <- genoud(fn=ToMinimize, nvars=1, Domains=range, pop.size=10, wait.generations=2, solution.tolerance=1)
    nn$opt <- opt
    nn$sigma <- opt$par
    nn <- perf(nn)
    return(nn)
}

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

plot.sigma <- function(nn, limits=c(0,2), resolution=10) {
    Sigma <- seq(limits[1], limits[2], length.out=resolution)
    Success <- function(sigma, nn) {
        nn$sigma <- sigma
        return(perf(nn)$success)
    }
    Performance <- as.vector(apply(X=cbind(Sigma), MARGIN=1, FUN=Success, nn))
    plot(Performance~Sigma)
}

#scale
#kmeans(x=set, centers=pars[1])
#aggregate(x=kset, by=cluster, FUN=mean)