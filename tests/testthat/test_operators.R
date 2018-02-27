context("Operator basics")

test_that("Operator names have dollar sign in front" , {
  expect(is.list(eq(1)))
  expect_named(gte(1),"$gte")
})

test_that("Operators that are already used in R language can be used",{
  expect_named(inside(1),"$in")
})

context("Operators accepts only correct parameters")

test_that("Operators allow only correct amount of parameters",{
  expect_error(ne("a"),"ne expects a numeric value, received: a")
  expect_error(lt(c(1,2)),"lt expects a single value, received: 2")
})
