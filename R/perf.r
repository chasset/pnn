perf <- function(nn) {
    ts_hdo <- hold_out(nn$set)
    success <- 0
    expected <- c()
    while(length(ts <- ts_hdo()) > 1) {
        model0 <- learn(set=ts$rest, category.column=nn$category.column)
        model0$sigma <- nn$sigma
        X <- ts$one[-nn$category.column]
        category <- guess.category(model0, as.matrix(X))
        if(!is.na(category) & category == ts$one[nn$category.column]) success <- success + 1
        expected <- c(expected, category)
    }
    nn$success <- success
    nn$fails <- nn$n - nn$success
    nn$success_rate <- nn$success / nn$n
    nn$observed <- pnn$set[,pnn$category.column]
    nn$expected <- factor(expected)
    nn$bic <- nn$n * log( (nn$n - nn$success) / (nn$n - 1) ) + nn$k * log(nn$n)
    return(nn)
}
