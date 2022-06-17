round <- function(x, digits = 0){

  if(x == 0) return(0)

  lil_bit <- 0.1^(digits + 1)
  sign = x/abs(x)

  base::round(x + sign*lil_bit, digits = digits)

}
