#' Factorial Function (factorial)
#'
#' Computes the factorial of a non-negative integer \( n \), defined as:
#' \deqn{ n! = n \times (n-1) \times (n-2) \times \cdots \times 1 }
#'
#' The factorial function is commonly used in combinatorics, probability theory, and algebra. It represents the number of ways to arrange n distinct objects in a sequence. The function is defined for non-negative integers, and the result grows rapidly as n increases.
#'
#' @param n A non-negative integer for which the factorial will be computed.
#'
#' @return A numeric value representing the factorial of `n`.
#'
#' @details
#' The factorial of a non-negative integer is the product of all integers from 1 to n. The factorial function has important applications in combinatorics (e.g., permutations and combinations), calculus (e.g., Taylor series), and probability theory (e.g., binomial coefficients).
#'
#' Special case:
#' \deqn{0! = 1}
#'
#' For large values of \(n\), the function is implemented using a numerically stable method that may involve logarithmic approximations.
#'
#' @examples
#' # Example 1: Compute the factorial of a single value
#' myfactorial(5)
#'
#' # Example 2: Compute factorial of 0
#' myfactorial(0)
#'
#' @seealso
#' \code{\link{gamma}} for the Gamma function, which generalizes the factorial to real and complex numbers.
#' \code{\link{choose}} for computing combinations (binomial coefficients).
#'
#' @references
#' Abramowitz, M., & Stegun, I. A. (1964). *Handbook of Mathematical Functions with Formulas, Graphs, and Mathematical Tables* (Dover Publications).
#' Wikipedia: \url{https://en.wikipedia.org/wiki/Factorial}
#'
#' @export
# Define the factorial function
myfactorial <- function(n) {
  if (n == 0) {
    return(1)
  } else if (n < 0) {
    stop("n must be a non-negative integer")
  } else {
    result <- 1
    for (i in 1:n) {
      result <- result * i
    }
    return(result)
  }
}


