
#' Register Luciole with systemfonts
#'
#' @return No value.
#' @export
#'
#' @examples
register_luciole <- function() {
  systemfonts::register_font(
    "Luciole",
    plain = system.file("assets/fonts/Luciole-Regular.ttf", package = "luciole"),
    bold = system.file("assets/fonts/Luciole-Bold.ttf", package = "luciole"),
    italic = system.file("assets/fonts/Luciole-Regular-Italic.ttf", package = "luciole"),
    bolditalic = system.file("assets/fonts/Luciole-Bold-Italic.ttf", package = "luciole")
  )
}


