library(testthat)
library(rfastmongo,warn.conflicts = FALSE)

test_check("rfastmongo",reporter = ListReporter)
