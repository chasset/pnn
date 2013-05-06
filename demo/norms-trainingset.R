library(pnn)
data(norms)

pnn <- learn(set=norms)
pnn$sigma <- 0.9
pnn <- perf(pnn)
pnn$success_rate

guess(pnn, c(1,1))$category
guess(pnn, c(1.4,1))$category
guess(pnn, c(1.5,1))$category
guess(pnn, c(1.6,1))$category
guess(pnn, c(2,1))$category
