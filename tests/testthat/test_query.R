
context("Query composition tools")
test_that("Queries can be composed using pipes",{
  unfinished_query <- query(lte(1)) %>%
    query(ne(0))

  expect_equal_tree(
    unfinished_query,
    list(`$lte` = list(1),
         `$ne`  = list(0)))
})
