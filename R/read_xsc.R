
#' @param file
#'
#' @export
#'
#' @import dplyr
#' @import stringr
#' @import readr
#'
#' @examples
#' read_xsc("file.xsc")
#'

### FUNCTION ###

read_xsc <- function(file) {

  data = readr::read_csv(file)

  vec <- as.vector(data[[1]])  %>%
    stringr::str_split(" ")  %>% # deler værdierne op i lister
    unlist()        %>% # for at lave en "flad" liste (vektor)
    as.numeric()
}
