#' Round: Round numbers. Without outrage.
#'
#' @param x a number. Just one. For now.
#' @param digits integer indicating the number of decimal places. Negative values are probably allowed, but I haven't tested this, so maybe just... don't.
#'
#' @return a sensibly rounded number.
#' @export
#'
#' @examples
#' x <- 0.5
#' round(x, digits = 0)
round <- function(x, digits = 0){

  if(x == 0) return(0)

  lil_bit <- 0.1^(digits + 1)
  sign = x/abs(x)

  base::round(x + sign*lil_bit, digits = digits)

}
