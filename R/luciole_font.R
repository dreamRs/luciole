
#' @title Integrate Luciole typeface in web pages
#'
#' @param selector CSS selector for which to use the font,
#'  usually an HTML tag, default to `"body"` (all document).
#'
#' @return an object of class shiny.tag` with a [htmltools::htmlDependency()]
#' @export
#'
#' @importFrom htmltools attachDependencies tags htmlDependency
#' @importFrom utils packageVersion
#'
#' @example examples/luciole_font.R
luciole_font <- function(selector = "body") {
  css <- paste(selector, "{ font-family: 'Luciole', sans-serif; }")
  attachDependencies(
    x = tags$style(css),
    value = htmlDependency(
      name = "luciole",
      version = as.character(packageVersion("luciole")),
      src = list(href = "luciole", file = "assets"),
      package = "luciole",
      stylesheet = "css/luciole.css"
    )
  )
}

