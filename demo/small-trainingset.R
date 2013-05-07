library(pnn)

(trainset <- data.frame(category=c("A", "B"), x=c(1,2)))
(pnn <- learn(trainset))
(pnn <- smooth(pnn, sigma=1))

guess(pnn, 1)$category
guess(pnn, 1.49)$category
guess(pnn, 1.51)$category
guess(pnn, 2)$category

(trainset2 <- data.frame(category="C", x=1.5))
(pnn <- learn(trainset2, pnn))

guess(pnn, 1)$category
guess(pnn, 1.249)$category
guess(pnn, 1.25)$category
guess(pnn, 1.251)$category
guess(pnn, 1.5)$category
guess(pnn, 1.749)$category
guess(pnn, 1.75)$category
guess(pnn, 1.751)$category
guess(pnn, 2)$category

