test_that("dataframe is returned",{
  expect_true(is.data.frame(get_nz_data('4b292323-9fcc-41f8-814b-3c7b19cf14b3')), TRUE)
})

#> Test passed

test_that("dataframe is not empty", {
  expect_true(nrow(get_nz_data('4b292323-9fcc-41f8-814b-3c7b19cf14b3')) > 0)
})

#> Test passed


test_that("invalid resource id throws error", {
  expect_error(get_nz_data('4b292323-9fcc-41f8-814'), "Failed")
})

#> Test passed


test_that("error is returned for a dataset id", {
  expect_error(get_nz_data('directory-of-educational-institutions'), "dataset")
})

#> Test passed
