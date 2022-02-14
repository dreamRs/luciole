
#' @title Register Luciole with systemfonts
#' 
#' @description Register Luciole font to use in your R graphics.
#'  In RStudio, you need to use the `AGG` graphics device.
#'
#' @return No value.
#' @export
#' 
#' @note In RStudio, you need to use `AGG` as graphics backend to display fonts correctly
#' to do so, go to
#'  **Tools** > **Global Options** > **General** > **Graphics Device**
#'   and select `AGG` in **Backend** menu, then **restart** RStudio.
#' 
#' @importFrom systemfonts register_font
#'
#' @example examples/register_luciole.R
register_luciole <- function() {
  systemfonts::register_font(
    "Luciole",
    plain = system.file("assets/fonts/Luciole-Regular.ttf", package = "luciole"),
    bold = system.file("assets/fonts/Luciole-Bold.ttf", package = "luciole"),
    italic = system.file("assets/fonts/Luciole-Regular-Italic.ttf", package = "luciole"),
    bolditalic = system.file("assets/fonts/Luciole-Bold-Italic.ttf", package = "luciole")
  )
}
