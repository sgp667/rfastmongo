context("Parsting of query operators")
library(jsonlite)

test_that("Queries can be parsed into JSON",{
  expect_json(build_query(list(a = 1)),as_JSON('{"a":1}'))
})

test_that("Empty lists are parsed as curly brackets", {
  expect_json(build_query(list()),as_JSON("{}"))
})

test_that("Lists nested in vector are parsed as arrays of objects", {
  expect_json(
    build_query(list(list("a" = 1),list("b" = 2))),
    as_JSON('[{"a":1},{"b":2}]')
  )
})

test_that("Query operator functions can be parsed into JSON",{
  expect_json(
    build_query(find_query( field = gt(1))),
    as_JSON('{"field":{"$gt":1}}')
  )
})
