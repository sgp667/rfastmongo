context("Parsting of query operators")
library(jsonlite)

test_that("Queries can be parsed into JSON",{
  parser_output <- build_query(list(a = 1))
  expected_json <- toJSON(list(a = 1),auto_unbox = TRUE)

  expect_is(parser_output,"json")
  expect_equal(parser_output,expected_json,
               info = paste0("Output: ",parser_output,"\n","Expected: ",expected_json))

})

test_that("Empty queries are parsed as curly brackets", {
  parser_output <- build_query(list())
  expected_json <- toJSON(NULL,auto_unbox = TRUE)

  expect_is(parser_output,"json")
  expect_equal(parser_output,expected_json,
               info = paste0("Output: ",parser_output,"\n","Expected: ",expected_json))
})
