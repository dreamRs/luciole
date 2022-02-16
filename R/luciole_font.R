
#' @title HTML dependency for Luciole typeface
#' 
#' @description It can be used to integrate Luciole font
#'  into web pages (Shiny applications or RMarkdown documents).
#'
#' @param selector CSS selector for which to use the font,
#'  usually an HTML tag, default to `"body"` (all document).
#'  If `NULL` style tag isn't included.
#'
#' @return 
#' * `luciole_font_dependency`: an [htmltools::htmlDependency()].
#' * `attach_luciole`: an empty `div` with Luciole dependency attached.
#' 
#' @export
#' 
#' @name luciole-dependency
#'
#' @importFrom htmltools tags htmlDependency
#' @importFrom utils packageVersion
#'
#' @example examples/luciole_font_dependency.R
luciole_font_dependency <- function(selector = "body") {
  if (!is.null(selector)) {
    css <- paste(selector, "{ font-family: 'Luciole', sans-serif !important; }")
    css <- as.character(tags$style(css))
  } else {
    css <- NULL
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

#' @export
#' 
#' @rdname luciole-dependency
attach_luciole <- function(selector = "body") {
  htmltools::attachDependencies(
    x = htmltools::tags$div(), 
    value = luciole_font_dependency(selector = selector)
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



