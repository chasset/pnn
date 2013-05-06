\docType{data}
\name{norms}
\alias{norms}
\title{Norms}
\format{A data-frame with 400 rows and 3 columns.}
\description{
  Gaussian random sample dataset.
}
\details{
  This dataset generates gaussian random points centered at
  (1,1) and (2,2) for category 1; centered at (1,2) and
  (2,1) for category 2.
}
\examples{
library(pnn)
data(norms)
norms[1:10,]
}
\seealso{
  \code{\link{pnn-package}}, \code{\link{learn}},
  \code{\link{smooth}}, \code{\link{perf}},
  \code{\link{guess}}, \code{\link{skin}}
}
\keyword{datasets}

