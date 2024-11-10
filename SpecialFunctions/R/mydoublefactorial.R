#' Double Factorial Function
#'
#' This function computes the double factorial (denoted as n!! of a given non-negative integer n).
#' The double factorial is the product of all integers from n to 1 that have the same parity (odd or even) as n.
#'
#' @param n A non-negative integer. The number for which the double factorial is to be computed.
#'
#' @return An integer representing the double factorial of the input n.
#'
#' @examples
#' mydoublefactorial(5)
#' # [1] 15
#'
#' mydoublefactorial(6)
#' # [1] 48
#'
#' @export
mydoublefactorial <- function(n) {
  if (n < 0) {
    stop("n must be a non-negative integer")
  }

  result <- 1

  # Calculate double factorial for even and odd n
  if (n %% 2 == 0) {
    for (i in seq(n, 2, by = -2)) {
      result <- result * i
    }
  } else {
    for (i in seq(n, 1, by = -2)) {
      result <- result * i
    }
  }

  return(result)
}
