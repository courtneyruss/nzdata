#' Get Resource Metadata
#'
#' 'nz_resource_metadata()' returns the metadata for the dataset identified by 'resource_id'
#' @param resource_id A string
#' @returns A dataframe
#' @examples
#' nz_resource_metadata('4b292323-9fcc-41f8-814b-3c7b19cf14b3')
#' @export
nz_resource_metadata <- function(resource_id) {
  # Check if data.govt.nz is up
  check_response <- httr::GET("https://data.govt.nz/")
  if (httr::status_code(check_response) != 200) {
    stop("Error: Failed to connect to data.govt.nz. Status code: ", httr::status_code(check_response))
  }

  # Fetch data from the provided URL
  url <- paste0("https://catalogue.data.govt.nz/api/action/resource_show?id=", resource_id)
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
    # Check if the resource_id corresponds to a dataset
    dataset_metadata_url <- paste0("https://catalogue.data.govt.nz/api/action/package_show?id=", resource_id)
    dataset_metadata_response <- httr::GET(dataset_metadata_url)

    if (httr::status_code(dataset_metadata_response) == 200) {
      stop("Error: That's a dataset id. Run ?nz_dataset_metadata() for information.")
    } else {
      stop("Error: Failed to fetch data. Status code: ", httr::status_code(response))
    }
  }
}
