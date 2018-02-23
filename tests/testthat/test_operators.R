context("Operator basics")

test_that("Operator names have dollar sign in front" , {
  expect_named(eq(1),"$eq")
  expect_named(gt(1),"$gt")
})

