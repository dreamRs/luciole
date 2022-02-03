
#' @title Integrate Luciole typeface in web pages
#'
#' @param selector CSS selector for which to use the font,
#'  usually an HTML tag, default to `"body"` (all document).
#'  If `NULL` style tag isn't included.
#'
#' @return an [htmltools::htmlDependency()].
#' @export
#'
#' @importFrom htmltools tags htmlDependency
#' @importFrom utils packageVersion
#'
#' @example examples/luciole_font.R
luciole_font_dependency <- function(selector = "body") {
  if (!is.null(selector)) {
    css <- paste(selector, "{ font-family: 'Luciole', sans-serif !important; }")
    css <- as.character(tags$style(css))
  }
  htmlDependency(
    name = "luciole",
    version = as.character(packageVersion("luciole")),
    src = list(file = "assets"),
    package = "luciole",
    stylesheet = "css/luciole.css",
    all_files = TRUE,
    head = css
  )
}


font_luciole <- function() {
  structure(list(
    families = "'Luciole', sans-serif",
    html_deps = htmltools::tagFunction(function() {
      luciole::luciole_font_dependency(NULL)
    })
  ), class = c("font_collection", "list"))
}



