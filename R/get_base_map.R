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
#'library(sf)
#'library(tidyverse)
#'
#' # get base map
#' hex_bf <- get_base_map() # No argument, need internet connection.
#' ggplot(hex_bf)+geom_sf() # Quick visualization
#' @export
get_base_map<-function(){
  hex<-read_sf('https://github.com/oousmane/hexburdb/raw/main/map/hex_grid.gpkg')
  return(hex)
}
