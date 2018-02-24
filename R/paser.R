build_query <- function(x, prettify = FALSE) {
  query <- list(x,NULL)[[1+is_empty_query(x)]]
  jsonlite::toJSON(query,pretty = prettify,auto_unbox = TRUE,Date = "ISO8601",POSIXt = "mongo")
}

is_empty_query <- function(x) {
  is.list(x) & length(x) == 0
}
