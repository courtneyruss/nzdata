#' Load data
#' @param resource_id A string
#' @return large list
#'
#' @export
load_data <- function(resource_id) {
  url <- paste0("https://catalogue.data.govt.nz/api/3/action/datastore_search?resource_id=", resource_id)

  response <- httr::GET(url)

  if (response$status_code == 200) {
    content <- httr::content(response, "text")
    parsed <- jsonlite::fromJSON(content)
    parsed
  } else {
    stop("Error: Failed to fetch data. Status code: ", response$status_code)
  }
}
