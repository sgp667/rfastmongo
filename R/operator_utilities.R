# Top Level Query functions ----

#' Top level functions that store all of operators that make up a query
#' @param ... query operators
#' @return nested lists that can be parsed into a MongoDB query, or JSON string
#' @rdname queries
find_query <- function(...) {
  operators <- list(...)

  lapply(operators,function(x){
    attr(x,"context") <- "find"
    x
  })
}

#' @rdname queries
project_query <- function(...) {
  operators <- list(...)

  lapply(operators,function(x){
    attr(x,"context") <- "project"
    x
  })
}

#' @rdname queries
update_query <- function(...) {
  operators <- list(...)

  lapply(operators,function(x){
    attr(x,"context") <- "update"
    x
  })
}
#' Query
#' This function is a wrapper used to make it possible to build queries using magrittr pipes
#' @param x an unfinished mongo query object
#' @rdname queries
#' @export
query <- function(x,...) {
   new_operators <- list(...)
   c(x,unlist(new_operators))
}

# Query generalized operators ----

general_operator <- function(name, x, allowed_context) {
  operator <- list()
  attr(operator,"allowed_context") <- allowed_context

  attr(x,"context") <- name

  operator[[paste0("$",name)]] <- x
  operator
}

find_operator <- function(name, x) {
  general_operator(name, x, "find")
}

project_operator <- function(name, x) {
  general_operator(name, x, "project")
}

update_operator <- function(name, x) {
  general_operator(name, x, "update")
}

expect_number <- function(operator_name,x) {
  assert_that(
    is.number(x),
    msg = paste(operator_name, "expects a numeric value, received:",x))
}

expect_single_argument <- function(operator_name,x) {
  assert_that(
    length(x) == 1,
    msg = paste(operator_name, "expects a single value, received:",length(x)))
}


