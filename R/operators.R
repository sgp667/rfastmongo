

#' gt
#'
#' @param x value that your field will be compared to
#'
#' @return greater than mongo operator
#' @export
gt <- function(x) {
  list(`$gt` = x)
}




#' eq
#'
#' @param x value that your field will be compared to
#'
#' @return equals than mongo operator
#' @export
eq <- function(x) {
  list(`$eq` = x)
}
