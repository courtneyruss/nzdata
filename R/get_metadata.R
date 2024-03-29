#' Get Dataset Metadata
#'
#' 'nz_dataset_metadata()' returns the metadata for the dataset identified by 'dataset_id'
#' @param dataset_id A string
#' @return A dataframe
#' @examples
#' nz_dataset_metadata('directory-of-educational-institutions')
#' @export
nz_dataset_metadata <- function(dataset_id) {
  # Check if data.govt.nz is up
  check_response <- httr::GET("https://data.govt.nz/")
  if (httr::status_code(check_response) != 200) {
    stop("Error: Failed to connect to data.govt.nz. Status code: ", httr::status_code(check_response))
  }

  # Fetch data from the provided URL
  url <- paste0("https://catalogue.data.govt.nz/api/action/package_show?id=", dataset_id)
  response <- httr::GET(url)

  # Check if the status code is 200 (OK)
  if (httr::status_code(response) == 200) {
    # Extract content as text
    json_content <- httr::content(response, as = "text")

    # Parse JSON string into a list
    json_list <- jsonlite::fromJSON(json_content)

    # Extract the $result part
    result_df <- as.data.frame(t(sapply(json_list$result, unlist)), stringsAsFactors = FALSE)

    # Optionally, you can set column names
    colnames(result_df) <- names(json_list$result)

    # Return the resulting dataframe
    return(result_df)
  } else {
    # Fetch metadata for dataset
    resource_metadata_url <- paste0("https://catalogue.data.govt.nz/api/action/resource_show?id=", dataset_id)
    resource_metadata_response <- httr::GET(resource_metadata_url)
    if (httr::status_code(resource_metadata_response) == 200) {
      stop("That's a resource id. Run ?nz_resource_metadata() for information about getting metadata for a resource.")
    } else {
      stop("Error: Failed to fetch data. Status code: ", httr::status_code(resource_metadata_response))
    }
  }
}
