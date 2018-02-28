#' Query Parsing Functions
#'
#' @param x R object(list or vector) that can be parsed into ason
#' @param prettify flag for jsonlite::toJSON adds line breaks in output
#' @param drop_nulls check if each opearator has values and remove it if it is empty
#'
#' @return character string that is a properly formated json ready for querying the database
#' @export
#' @rdname parser
parse_query <- function(x, prettify = FALSE, drop_nulls = TRUE) {
  x %>%
    prune_query() %>%
    if_empty_query_null()%>%
    jsonlite::toJSON(pretty = prettify,auto_unbox = TRUE,Date = "ISO8601",POSIXt = "mongo")
}

#' @export
#' @rdname parser
is_empty_query <- function(x) {
  is.list(x) & length(x) == 0
}

if_empty_query_null <- function(x){
  list(x,NULL)[[1 + is_empty_query(x)]]
}


prune_query <- function(x) {
  prune_nested_list <- function(x) {
    purrr::map_if(x,is.list,prune_nested_list) %>% purrr::compact()
  }
  prune_nested_list(x)
}
