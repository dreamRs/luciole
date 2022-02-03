
#' Generate HTML tags used in examples
#'
#' @param class Class of the main div.
#'
#' @importFrom htmltools HTML tags css tagList
#'
#' @return HTML tags.
#' @export
#'
#' @examples
#' tag_example()
tag_example <- function(class = NULL) {
  tags$div(
    class = class,
    tags$blockquote(
      tags$p(HTML("&Eacute;coutez !")),
      tags$p(HTML("Puisqu&rsquo;on allume les &eacute;toiles,")),
      tags$p(HTML("C&rsquo;est qu&rsquo;elles sont &agrave; quelqu&rsquo;un n&eacute;cessaires ?")),
      tags$p(HTML("C&rsquo;est que quelqu&rsquo;un d&eacute;sire qu&rsquo;elles soient ?")),
      tags$br(),
      tags$p(HTML("Vladimir Ma&iuml;akovski &ndash; &Eacute;coutez !"))
    ),
    tags$div(

      lapply(
        X = list(
          paste(letters, collapse = ""),
          paste(LETTERS, collapse = ""),
          paste(0:9, collapse = "")
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
  )
}

