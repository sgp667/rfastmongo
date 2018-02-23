context("Parsting of query operators")

test_that("Empty queries are parsed as curly brackets", {
  parser_output <- build_query(list())
  expect_is(parser_output,"json")
  expect_equal(parser_output,"{}",
               info = paste("Output:",parser_output))
})
