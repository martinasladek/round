#' Round: Round numbers the way you'd (probably) expect
#'
#' @param x a numeric vector
#' @param digits a positive integer indicating the number of decimal places. Negative integers are converted to absolute values.
#'
#' @return a sensibly rounded number.
#' @export
#'
#' @examples
#' x <- c(0.5, 1.5, 2.5, 3.5, 4.5)
#' round(x, digits = 0)

round <- function(x, digits = 0){

  lil_bit <- 0.1^(abs(digits) + 1)
  sign = ifelse(x == 0, 1, x/abs(x))

  base::round(x + sign*lil_bit, digits = abs(digits))

}
