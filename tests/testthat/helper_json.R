as_JSON <- function(x) {
  class(x) <- c("json")
  x
}

expect_json <- function(object, json) {
  act <- quasi_label(rlang::enquo(object))

  object_class <- class(object)
  expect(object_class == "json", glue::glue(
    "object is class: {object_class}",
    "expected: json"
  ))
  expect(as.character(object) == as.character(json), glue::glue(
    "object is parsed as red expected green:",
    crayon::red("{object}"),
    crayon::green("{json}"),
    .sep = "\n"))

  invisible(object)

}
