#' Get Dataset Metadata
#'
#' 'nz_dataset_metadata()' returns the metadata for the dataset identified by 'dataset_id'
#' @param dataset_id A string
#' @returns A dataframe
#' @examples
#' nz_dataset_metadata('directory-of-educational-institutions')
#' @export
nz_dataset_metadata <- function(dataset_id) {
  # Fetch data from the provided URL
  url <- paste0("https://catalogue.data.govt.nz/api/action/package_show?id=", dataset_id)
  response <- httr::GET(url)

  # Check if the status code is 200 (OK)
  if (httr::status_code(response) != 200) {
    stop("Error: Failed to retrieve data. HTTP status code: ", httr::status_code(response))
  }

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
}
