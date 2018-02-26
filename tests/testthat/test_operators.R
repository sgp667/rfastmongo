context("Operator basics")

test_that("Operator names have dollar sign in front" , {
  expect(is.list(eq(1)))
  expect_named(gt(1),"$gt")
})

test_that("Operators that are already used in R language can be used",{
  expect_named(inside(1),"$in")
})
