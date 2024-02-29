test_that("dataframe is returned",{
  expect_true(is.data.frame(nz_resource_metadata('4b292323-9fcc-41f8-814b-3c7b19cf14b3')), TRUE)
})

#> Test passed

test_that("dataframe has 1 row", {
  expect_equal(nrow(nz_resource_metadata('4b292323-9fcc-41f8-814b-3c7b19cf14b3')), 1)
})

#> Test passed

test_that("error is returned for invalid dataset id", {
  expect_error(nz_resource_metadata("4b292323-9fcc-41f8-814b-3c7b19cf"), "Failed")
})

#> Test passed

test_that("error is returned for a dataset id", {
  expect_error(nz_resource_metadata('directory-of-educational-institutions'), "dataset")
})

#> Test passed
