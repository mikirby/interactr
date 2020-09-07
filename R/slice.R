#' Return the First Rows of a Data Frame
#'
#' \code{slice_top} returns the top n rows of a data frame.
#'
#' @param df A data frame to slice.
#' @param n. A numeric scalar indicating the number of rows to slice from the
#' top.
#' @return A data frame, containing the top n rows of the original data frame.
#' @seealso \code{\link{slice_bottom}}
#' @examples
#' df <- data.frame(x = 1:10, y = 11:20)
#'
#' # return the top 6 rows of df
#' slice_top(df)
#'
#' # return the top 3 rows of df
#' slice_top(df, 3)
#' @export
slice_top <- function(df, n. = 6L) {

  assertive::assert_is_data.frame(df)
  assertive::assert_is_a_number(n.)

  # TODO: add safety measure for `df`s provided with list-columns

  head(as.data.frame(df), n = n.)
  # TODO: return `df` invisibly, as suggested by:
  # https://style.tidyverse.org/functions.html#return

}
