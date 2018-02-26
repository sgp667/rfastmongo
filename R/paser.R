#' Query Parsing Functions
#'
#' @param x R object(list or vector) that can be parsed into ason
#' @param prettify flag for jsonlite::toJSON adds line breaks in output
#'
#' @return character string that is a properly formated json ready for querying the database
#' @export
#' @rdname parser
build_query <- function(x, prettify = FALSE) {
  query <- list(x,NULL)[[1 + is_empty_query(x)]]
  jsonlite::toJSON(query,pretty = prettify,auto_unbox = TRUE,Date = "ISO8601",POSIXt = "mongo")
}

#' @export
#' @rdname parser
is_empty_query <- function(x) {
  is.list(x) & length(x) == 0
}
