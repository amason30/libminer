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

test_that("lib_summary fails with char input", {
  expect_error(lib_summary("foo"))
})
