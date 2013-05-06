\docType{package}
\name{pnn-package}
\alias{pnn}
\alias{pnn-package}
\title{PNN}
\description{
  Probabilistic neural network.
}
\details{
  The package \pkg{PNN} implements the algorithm proposed
  by Specht (1990). It is written in the statistical
  langage R. It solves a common problem in automatic
  learning. Knowing a set of observations described by a
  vector of quantitative variables, we classify them in a
  given number of groups. Then, the algorithm is trained
  with this datasets and should guess afterwards the group
  of any new observation.  This neural network has the main
  advantage to begin generalization instantaneously even
  with a small set of known observations.

  The package exports four functions: \itemize{ \item
  \code{\link{learn}}: Create a new Probabilist neural
  network with a new training set or update an existing one
  with new known observations.  \item \code{\link{smooth}}:
  Compute the best value using a genetic algorithm.  \item
  \code{\link{perf}}: Compute the performance of the
  Probabilist neural network.  \item \code{\link{guess}}:
  Guess the category of a new observation. }

  To help the use of \pkg{PNN}, the package contains:
  \itemize{ \item Two datasets: \code{\link{norms}} and
  \code{\link{skin}}.  \item Two demonstrations:
  \code{norms-trainingset} and \code{small-trainingset}. }

  The Probabilist neural network returned is a \code{list}.
  It has several description fields: \itemize{ \item
  \code{model}: A name of the model ("Probabilistic neural
  network" by default).  \item \code{set}: The raw training
  set.  \item \code{category.column}: See above.  \item
  \code{categories}: The categories found in the
  \code{category.column} field.  \item \code{k}: The number
  of variables.  \item \code{n}: The number of
  observations.  \item \code{success}: The number of times
  that the neural network chooses the right category.
  \item \code{fails}: The number of times that the neural
  network fails to guess the right category.  \item
  \code{success_rate}: The rate of sucess over all
  observations in training set.  \item \code{bic}: It is an
  adapted version of the Bayesian Information Criterion
  helping to compare different version of models. }

  More documentation at \url{http://flow.chasset.net/pnn/}.
}
\examples{
library(pnn)
data(norms)

# The long way
pnn <- learn(set=norms)
pnn <- smooth(pnn)
pnn$sigma
pnn <- perf(pnn); pnn$success_rate # Optional
guess(pnn, c(1,1))
guess(pnn, c(2,1))
guess(pnn, c(1.5,1))

# The short way
guess(smooth(learn(set=norms), sigma=0.8), c(1,1))
guess(smooth(learn(set=norms), sigma=0.8), c(2,1))
guess(smooth(learn(set=norms), sigma=0.8), c(1.5,1))

# Demonstrations
demo("norms-trainingset", "pnn")
demo("small-trainingset", "pnn")
}
\author{
  Pierre-Olivier Chasset
}
\references{
  Specht D.F. (1990). Probabilistic neural networks. Neural
  networks, 3(1):109-118.
}
\seealso{
  \code{\link{learn}}, \code{\link{smooth}},
  \code{\link{perf}}, \code{\link{guess}},
  \code{\link{norms}}, \code{\link{skin}}
}
\keyword{Neural}
\keyword{Probability}
\keyword{network,}

