#'Load base gridded hexagonal map for Burkina Faso
#'
#'Function to add the gridded hexagonal map of Burkina Faso.
#'This function has no argument
#'
#' @return a sf object with gridded hexagonal map for Burkina Faso
#' @import sf
#'
#'
#' @examples
#' # Plot the map
#' \dontrun{
#'library(sf)
#'library(tidyverse)
#'
#' # get hex map
#' hex_bf <-hex_map() # No argument, need internet connection.
#' ggplot(hex_bf)+geom_sf() # Quick visualization
#' }
#' @export
hex_map <-function(){
  hex <- sf::read_sf('https://github.com/oousmane/hexburdb/raw/main/map/hex_grid.gpkg')
  return(hex)
}

#'Load admin base map for Burkina Faso
#'
#'Function to add the gridded hexagonal map of Burkina Faso.
#'This function has no argument
#'
#' @return a sf object with gridded hexagonal map for Burkina Faso
#' @import sf
#'
#'
#' @noRd
#'
#' @export
admin0_map <-function(){
  hex <- sf::read_sf('https://github.com/oousmane/hexburdb/raw/main/map/admin0.gpkg')
  return(hex)
}

#' @export
admin1_map <-function(){
  hex <- sf::read_sf('https://github.com/oousmane/hexburdb/raw/main/map/admin1.gpkg')
  return(hex)
}

#' @export
admin2_map <-function(){
  hex <- sf::read_sf('https://github.com/oousmane/hexburdb/raw/main/map/admin2.gpkg')
  return(hex)
}

#' @export
admin3_map <-function(){
  hex <- sf::read_sf('https://github.com/oousmane/hexburdb/raw/main/map/admin3.gpkg')
  return(hex)
}

