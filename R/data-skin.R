#' Skin
#' 
#' Skin colour segmentation dataset.
#' 
#' This source describes if a given colour (R,G,B) could be associated with the one of a skin.
#' 
#' @name skin
#' @usage data(skin)
#' @docType data
#' @keywords datasets
#' @format A data-frame with 245057 observations described by a color (R,G,B) and a binary variable (0/1) for the skin test.
#' @source \url{http://archive.ics.uci.edu/ml/datasets/Skin+Segmentation}
#' @references Rajen Bhatt, Abhinav Dhall, 'Skin Segmentation Dataset', UCI Machine Learning Repository
#' @seealso \code{\link{pnn-package}}, \code{\link{learn}}, \code{\link{smooth}}, \code{\link{perf}}, \code{\link{guess}}, \code{\link{norms}}
#' @examples
#' library(pnn)
#' data(skin)
#' skin[1:10,]
NULL
