#' Get convenient colors for soil texture
#' @return named color vector for abreviated soil texture
#' @noRd
#' @export
#'
hwsd_cols <- function(){
cols_abr <-  c(
    Cl     = "#77655B",
    SiCl   = "#8F7863",
    SaCl   = "#A68C6A",
    ClLo   = "#BFA072",
    SiClLo = "#D8B579",
    SaClLo = "#F1CA80",
    Lo     = "#FFD88D",
    SiLo   = "#FFDF9F",
    SaLo   = "#FFE7B1",
    Si     = "#FFEEC3",
    LoSa   = "#FFF5D5",
    Sa     = "#FEFCE7"
  )
  return(cols_abr)
}

#' Translation of USDA texture class
#' @importFrom dplyr case_when
#' @return translated texture
#' @noRd
#'

.translate_usda <- function(texture="SaCl",to = "num"){
  if ( !(to %in% c("num","name_en","name_fr"))) stop("Can not translate USDA texture. `to` argument is one of 'num','name_en','name_fr'")
  if (to == "num"){
    res <- dplyr::case_when(
    texture == "Cl" ~ 1,
    texture == "SiCl" ~ 2,
    texture == "SaCl" ~ 3,
    texture == "ClLo" ~ 4,
    texture == "SiClLo" ~ 5,
    texture == "SaClLo" ~ 6,
    texture == "Lo" ~ 7,
    texture == "SiLo" ~ 8,
    texture == "SaLo" ~ 9,
    texture == "Si" ~ 10,
    texture == "LoSa" ~ 11,
    .default = 12
  )
  } else if (to == "name_en") {
    res <- dplyr::case_when(
    texture == "Cl" ~     "clay",
    texture == "SiCl" ~   "silty clay",
    texture == "SaCl" ~   "sandy clay",
    texture == "ClLo" ~   "clay loam",
    texture == "SiClLo" ~ "silty clay loam",
    texture == "SaClLo" ~ "sandy clay loam",
    texture == "Lo" ~     "loam",
    texture == "SiLo" ~   "silty loam",
    texture == "SaLo" ~   "sandy loam",
    texture == "Si" ~     "silt",
    texture == "LoSa" ~   "loamy sand" ,
    .default =            "sand"
  )
  } else {
    res <- dplyr::case_when(
    texture == "Cl" ~    "argile",
    texture == "SiCl" ~  "argile limoneuse",
    texture == "SaCl" ~  "argile sableuse",
    texture == "ClLo" ~  "limon argileux",
    texture == "SiClLo" ~"limon argileux fin",
    texture == "SaClLo" ~"limon argilo-sableux",
    texture == "Lo" ~    "limon",
    texture == "SiLo" ~  "limon fin",
    texture == "SaLo" ~  "limon sableux",
    texture == "Si" ~    "limon très fin",
    texture == "LoSa" ~  "sable limoneux" ,
    .default =           "sable"
    )

  }
  return(res)
}

#' Translation of USDA texture class number to "abr", "name_en" or "name_fr"
#' @param to convert numeric USDA class to. one of "abr", "name_en","name_fr"
#' @importFrom dplyr case_when
#' @return translated texture
#' @export
#' @examples
#' num_to_usda(texture = 1:12, to = "abr")
#' num_to_usda(texture = 1:12, to = "name_en")
#' num_to_usda(texture = 1:12, to = "name_fr")
#'
num_to_usda <- function(texture = 1,to ="abr"){
  if (to == "abr"){
    res <- dplyr::case_when(
    texture == 1  ~  "Cl",
    texture == 2  ~  "SiCl",
    texture == 3  ~  "SaCl",
    texture == 4  ~  "ClLo",
    texture == 5  ~  "SiClLo",
    texture == 6  ~  "SaClLo",
    texture == 7  ~  "Lo",
    texture == 8  ~  "SiLo",
    texture == 9  ~  "SaLo",
    texture == 10 ~  "Si",
    texture == 11 ~  "LoSa",
    texture == 12 ~  "Sa",
    .default = NA_character_
  )
  } else if (to == "name_fr"){
    res <- dplyr::case_when(
    texture == 1  ~  "argile",
    texture == 2  ~  "argile limoneuse",
    texture == 3  ~  "argile sableuse",
    texture == 4  ~  "limon argileux",
    texture == 5  ~  "limon argileux fin",
    texture == 6  ~  "limon argilo-sableux",
    texture == 7  ~  "limon",
    texture == 8  ~  "limon fin",
    texture == 9  ~  "limon sableux",
    texture == 10 ~  "limon très fin",
    texture == 11 ~  "sable limoneux" ,
    texture == 12 ~  "sable",
    .default = NA_character_
  )
  } else{
   res <- dplyr::case_when(
    texture == 1  ~  "clay",
    texture == 2  ~  "silty clay",
    texture == 3  ~  "sandy clay",
    texture == 4  ~  "clay loam",
    texture == 5  ~  "silty clay loam",
    texture == 6  ~  "sandy clay loam",
    texture == 7  ~  "loam",
    texture == 8  ~  "silty loam",
    texture == 9  ~  "sandy loam",
    texture == 10 ~  "silt",
    texture == 11 ~  "loamy sand" ,
    texture == 12 ~  "sand",
    .default = NA_character_
  )
  }
  return(res)
}
