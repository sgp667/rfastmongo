as_JSON <- function(x) {
  class(x) <- c("json")
  x
}

expect_json <- function(object, json) {
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

expect_equal_tree <- function(tree, expected) {
  function_nested_equals <- function(tree,expected,nesting = c()) {
    nested_sting <- paste(nesting,collapse = "/")
    expect_named(tree,names(expected),info = paste("Name don't match in",nested_sting))

    purrr::pmap(
      list(x=tree,y=expected,key=names(tree)),
      function(x,y,key) {
        if(is.list(x)) {
          function_nested_equals(x,y,c(nesting, key))
        } else {
          expect(x == y,paste("Node value doesn't match in",nested_sting))
        }
      }
    )
  }
  function_nested_equals(tree,expected,c())
}
