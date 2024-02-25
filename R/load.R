#' @export
load_data <- function(resource_id) {
url <- paste0("https://catalogue.data.govt.nz/api/3/action/datastore_search?resource_id=", resource_id, "&limit=32000")

response <- httr::GET(url)
content <- httr::content(response, "text")
parsed <- jsonlite::fromJSON(content)
}
