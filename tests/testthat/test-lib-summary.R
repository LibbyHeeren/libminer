test_that("lib_summary returns expected result", {
  res <- lib_summary() # res is short for result
  expect_s3_class(res, "data.frame")
  expect_equal(ncol(res), 2)
  expect_equal(names(res), c("Library", "n_packages"))
  expect_type(res$Library, "character")
  expect_type(res$n_packages, "integer")
})

test_that("lib_summary fails appropriately", {
  expect_error(lib_summary("foo"))
})


test_that("sizes argument works", {
  res <- lib_summary(sizes = TRUE)
  expect_equal(ncol(res), 3)
  expect_equal(names(res), c("Library", "n_packages", "lib_size"))
  expect_type(res$lib_size, "double")
})
