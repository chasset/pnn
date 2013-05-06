\name{smooth}
\alias{smooth}
\title{Smooth}
\usage{
  smooth(nn, limits = c(0, 10), sigma)
}
\arguments{
  \item{nn}{A Probabilist neural network.}

  \item{limits}{A vector giving the interval (minimum,
  maximum) in which the function has to search the best
  value.}
}
\description{
  Set the smoothing parameter.
}
\details{
  The function \code{smooth} sets the smoothing parameter
  for a Probabilist neural network. If you have no idea of
  which value it can be, you can let the function finds the
  best value using a genetic algorithm. This search takes
  some time, so if you have already an idea of the value,
  you can set it in the \code{sigma} argument.
}
\examples{
library(pnn)
data(norms)

# Search the best value
pnn <- learn(set=norms)
pnn <- smooth(pnn)
pnn$sigma

# Or set the value
pnn <- smooth(pnn, sigma=0.8)
}
\references{
  Walter Mebane, Jr. and Jasjeet S. Sekhon. 2011. Genetic
  Optimization Using Derivatives: The rgenoud package for
  R. Journal of Statistical Software, 42(11): 1-26.
}
\seealso{
  \code{\link{pnn-package}}, \code{\link{learn}},
  \code{\link{perf}}, \code{\link{guess}},
  \code{\link{norms}}, \code{\link{skin}}
}

