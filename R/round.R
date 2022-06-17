#' Round: Round numbers. Without outrage.
#'
#' @param x a numeric vector
#' @param digits a positive integer indicating the number of decimal places.
#'
#' @return a sensibly rounded number.
#' @export
#'
#' @examples
#' x <- 0.5
#' round(x, digits = 0)
round <- function(x, digits = 0){

  lil_bit <- 0.1^(digits + 1)
  sign = ifelse(x == 0, 1, x/abs(x))

  base::round(x + sign*lil_bit, digits = digits)

}
