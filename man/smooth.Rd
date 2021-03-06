\name{smooth}
\alias{smooth}
\title{Smooth}
\usage{
  smooth(nn, sigma, limits = c(0, 10))
}
\arguments{
  \item{nn}{A trained Probabilist neural network.}

  \item{limits}{Optional. A vector giving the interval
  (minimum, maximum) in which the function has to search
  the best value.}

  \item{sigma}{Optional. If the value is already known, it
  sets directly the parameter and do not search for the
  best value.}
}
\value{
  A trained and smoothed Probabilistic neural network.
}
\description{
  Work around the smoothing parameter.
}
\details{
  The function \code{smooth} aims to help to set the
  smoothing parameter for a Probabilist neural network. If
  you have no idea of which value it can be, you can let
  the function finds the best value using a genetic
  algorithm. This can be done providing to the function
  only the parameter \code{nn}. This search takes some
  time, so if you have already an idea of the value, you
  can set it if you provide both parameters \code{nn} and
  \code{sigma}. If you want to check visually how fit is
  the sigma value, you can get a plot if you provide
  \code{nn} and set \code{plot} to TRUE. It sets the
  parameters \code{sigma} of the neural network.
}
\examples{
library(pnn)
data(norms)

# Search the best value
pnn <- learn(norms)
\dontrun{pnn <- smooth(pnn)}
\dontrun{pnn$sigma}

# Or set the value
pnn <- smooth(pnn, sigma=0.8)
pnn$sigma
}
\references{
  Walter Mebane, Jr. and Jasjeet S. Sekhon. 2011. Genetic
  Optimization Using Derivatives: The rgenoud package for
  R. Journal of Statistical Software, 42(11): 1-26.
}
\seealso{
  \code{\link{pnn-package}}, \code{\link{learn}},
  \code{\link{perf}}, \code{\link{guess}},
  \code{\link{norms}}
}

