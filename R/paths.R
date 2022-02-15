
#' @title Paths to TTF files
#' 
#' @description Use to register Luciole for a graphic device
#'  or to copy `.ttf` file to another location.
#'
#' @return Path to a `.ttf` file.
#' @export
#' @name luciole-paths
#'
#' @examples
#' luciole_path_regular()
luciole_path_regular <- function() {
  system.file("assets/fonts/Luciole-Regular.ttf", package = "luciole")
}

#' @export
#' @rdname luciole-paths
luciole_path_bold <- function() {
  system.file("assets/fonts/Luciole-Bold.ttf", package = "luciole")
}

#' @export
#' @rdname luciole-paths
luciole_path_italic <- function() {
  system.file("assets/fonts/Luciole-Regular-Italic.ttf", package = "luciole")
}

#' @export
#' @rdname luciole-paths
luciole_path_bolditalic <- function() {
  system.file("assets/fonts/Luciole-Bold-Italic.ttf", package = "luciole")
}

