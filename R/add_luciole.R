
#' @title Add Luciole Family to 'sysfonts'
#' 
#' @description Allow to use Luciole font through
#'  package [showtext](https://cran.r-project.org/package=showtext).
#'  
#' @param showtext_auto Call [showtext::showtext_auto()] to automatically use showtext functionality.
#'
#' @return No value.
#' @export
#' 
#' @importFrom sysfonts font_add
#' @importFrom showtext showtext_auto
#'
#' @example examples/add_luciole.R
add_luciole <- function(showtext_auto = TRUE) {
  sysfonts::font_add(
    "Luciole",
    regular = luciole_path_regular(),
    bold = luciole_path_bold(),
    italic = luciole_path_italic(),
    bolditalic = luciole_path_bolditalic()
  )
  if (isTRUE(showtext_auto)) {
    showtext::showtext_auto()
  }
}
