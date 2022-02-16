
#' Character set in HTML tags for examples
#'
#' @param ... Arguments passed to `tags$div`.
#'
#' @importFrom htmltools tags css tagList
#'
#' @return HTML tags.
#' @export
#'
#' @examples
#' tag_example()
tag_example <- function(...) {
  tags$div(
    ...,
    lapply(
      X = list(
        paste(letters, collapse = ""),
        paste(LETTERS, collapse = ""),
        paste(c(0:9, "$\u20ac\u00a3\u00a5"), collapse = ""),
        "?,;.:/!()[]{}@&",
        "\U00f7\U00d7\U2212\U002b\U220f\U222b\U221e"
      ),
      FUN = function(x) {
        tagList(
          tags$p(
            style = css(fontStyle = "normal"),
            x
          ),
          tags$p(
            style = css(fontStyle = "italic"),
            x
          ),
          tags$p(
            style = css(fontWeight = "bold"),
            x
          )
        )
      }
    )
  )
}

