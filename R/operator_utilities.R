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


