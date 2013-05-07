library(pnn)

(trainset <- data.frame(category=c("A", "B"), x=c(1,2)))
(pnn <- learn(trainset))
(pnn <- smooth(pnn, sigma=1))

guess(pnn, 1)
guess(pnn, 1.49)
guess(pnn, 1.51)
guess(pnn, 2)

(trainset2 <- data.frame(category="C", x=1.5))
(pnn <- learn(trainset2, pnn))

guess(pnn, 1)
guess(pnn, 1.249)
guess(pnn, 1.251)
guess(pnn, 1.5)
guess(pnn, 1.749)
guess(pnn, 1.751)
guess(pnn, 2)

