context("Parsting of query operators")


test_that("Queries can be parsed into JSON",{
  expect_json(parse_query(list(a = 1)),as_JSON('{"a":1}'))
})

test_that("Lists nested in vector are parsed as arrays of objects", {
  expect_json(
    parse_query(list(list("a" = 1),list("b" = 2))),
    as_JSON('[{"a":1},{"b":2}]')
  )
})

test_that("Query operator functions can be parsed into JSON",{
  expect_json(
    parse_query(find_query( field = gt(1))),
    as_JSON('{"field":{"$gt":1}}')
  )
})


context("Parser removes elements that are empty")
test_that("prune_query drops NULL elements",{
  expect_equal_tree(prune_query(list(a=1,b=NULL)),list(a=1))
})

test_that("prune_query drops empty lists elements",{
  expect_equal_tree(prune_query(list(a=1,b=list())),list(a=1))
})

test_that("Empty operators are dropped from query",{
  expect_json(
    parse_query(find_query( field1 = gt(1), field2 = list())),
    as_JSON('{"field1":{"$gt":1}}')
  )
})

test_that("Empty lists are parsed as curly brackets", {
  expect_json(parse_query(list()),as_JSON("{}"))
})

