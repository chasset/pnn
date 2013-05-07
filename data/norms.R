norms <- (function(n,m,s,d) {
    c <- rep(c("A","B"), each=n*2)
    x <- c( rnorm(n,m,s), rnorm(n,m,s) + d, rnorm(n,m,s) + d, rnorm(n,m,s) )
    y <- c( rnorm(n,m,s), rnorm(n,m,s) + d, rnorm(n,m,s), rnorm(n,m,s) + d )
    df <- data.frame(c,x,y)
    return(df)
})(100, 1, 0.25, 1)
