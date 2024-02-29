test_that("dataframe is returned",{
          expect_true(is.data.frame(nz_dataset_metadata('directory-of-educational-institutions')), TRUE)
})

#> Test passed

test_that("dataframe has 1 row", {
  expect_equal(nrow(nz_dataset_metadata('directory-of-educational-institutions')), 1)
})

#> Test passed

test_that("error is returned for invalid dataset id", {
  expect_error(nz_dataset_metadata("directory-of-educational-instituti"), "Failed")
})

#> Test passed

test_that("error is returned for a resource id", {
expect_error(nz_dataset_metadata('4b292323-9fcc-41f8-814b-3c7b19cf14b3'), "resource")
})

#> Test passed

