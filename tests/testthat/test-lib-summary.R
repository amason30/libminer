test_that("lib_summary returns expected results", {
  res <- lib_summary()
  # check the correct class is returned
  expect_s3_class(res, "data.frame")

  # check there are only 2 columns in the object
  expect_equal(ncol(res), 2)

  # check the columns names are as expected
  expect_equal(names(res), c("Library", "n_packages"))

  # check the atomic type of the returned object (logical, double, integer, etc.)
  expect_type(res$Library, "character")
  expect_type(res$n_packages, "integer")

})

test_that("lib_summary fails appropriately", {
  expect_error(lib_summary("foo"), "size must be logical") # the brackets makes R think its something else and messes with error message. Not sure how this integrates with cli_abort() - maybe if I put in {} then it will be ok. A - yes! this works and you can remove ', fixed=TRUE' after the message to match
})

test_that("sizes argument works", {
  res <- lib_summary(size = TRUE)
  # check there are only 3 columns in the object
  expect_equal(ncol(res), 3)
  # check the columns names are as expected
  expect_equal(names(res), c("Library", "n_packages", "lib_size"))
  # check the atomic type of the returned object (logical, double, integer, etc.)
  expect_type(res$lib_size, "double")
})
