#' Get Dataset
#'
#' 'get_nz_data()' returns a dataframe from the resource identified in resource_id.
#' @param resource_id A string
#' @returns A dataframe
#' @examples
#' get_nz_data('4b292323-9fcc-41f8-814b-3c7b19cf14b3')
#' @export
get_nz_data <- function(resource_id) {
  url <- paste0("https://catalogue.data.govt.nz/api/3/action/datastore_search?resource_id=", resource_id, "&limit=1000")

  response <- httr::GET(url)

  if (response$status_code == 200) {
    content <- httr::content(response, "text")
    parsed <- jsonlite::fromJSON(content)
    combined_records <- parsed$result$records

    # Check if pagination is needed
    if (nrow(combined_records) == 1000) {
      next_val <- parsed$result$`_links`$`next`
      next_link <- paste0("https://catalogue.data.govt.nz", next_val)
      next_response <- httr::GET(next_link)
      next_content <- httr::content(next_response, "text")
      next_parsed <- jsonlite::fromJSON(next_content)
      new_record <- next_parsed$result$records
      combined_records <- rbind(combined_records, new_record)

        while (nrow(new_record) == 1000) {
        if (next_response$status_code == 200) {
          next_val <- next_parsed$result$`_links`$`next`
          next_link <- paste0("https://catalogue.data.govt.nz", next_val)
          next_response <- httr::GET(next_link)
          next_content <- httr::content(next_response, "text")
          next_parsed <- jsonlite::fromJSON(next_content)
          new_record <- next_parsed$result$records
          combined_records <- rbind(combined_records, new_record)


        } else {
          stop("Error: Failed to fetch next page data. Status code: ", next_response$status_code)
        }
      }
    }
    return(combined_records)
  } else {
    stop("Error: Failed to fetch data. Status code: ", response$status_code)
  }
}
