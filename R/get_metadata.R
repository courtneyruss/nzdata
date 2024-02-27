#' Get Metadata
#'
#' @export
get_nz_metadata <- function(dataset_id) {
  # Fetch data from the provided URL
  url <- paste0("https://catalogue.data.govt.nz/api/action/package_show?id=", dataset_id)
  response <- httr::GET(url)

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
