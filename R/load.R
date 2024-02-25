#' Load data
#' @param resource_id A string
#' @return large list
#' @examples
#' streets <- '2f4e30a7-091f-4aed-b18f-4b21cc19e6b4'
#' load_data(streets)
#' @export
load_data <- function(resource_id) {
  url <- paste0("https://catalogue.data.govt.nz/api/3/action/datastore_search?resource_id=", resource_id, "&limit=32000")

  response <- httr::GET(url)

  if (response$status_code == 200) {
    content <- httr::content(response, "text")
    parsed <- jsonlite::fromJSON(content)
    parsed
  } else {
    stop("Error: Failed to fetch data. Status code: ", response$status_code)
  }
}
