#' Gamma Function (gamma)
#'
#' Computes the Gamma function, defined as:
#' \deqn{\Gamma(x) = \int_0^\infty t^{x-1} e^{-t} \, dt, \text{ for } x > 0}
#'
#' The Gamma function generalizes the factorial function to real and complex numbers. Specifically, for a positive integer n, Gamma(n) = (n-1)!. The Gamma function is widely used in probability theory, statistics, and various areas of mathematics, including complex analysis and calculus.
#'
#' @param x A numeric vector, matrix, or scalar. The value(s) for which the Gamma function will be calculated. It can accept positive real or complex values.
#'
#' @return A numeric value or vector/matrix, depending on the input, representing the computed value of the Gamma function for each corresponding element in `x`.
#'
#' @details
#' The Gamma function is defined for all real numbers except non-positive integers (where the function has poles). The function is often used to compute factorials for non-integer values, and it is crucial in various fields such as statistical distributions (e.g., the Gamma distribution, Beta distribution) and in the study of special functions.
#'
#' The Gamma function satisfies the following important property:
#' \deqn{\Gamma(x+1) = x \cdot \Gamma(x)}
#'
#' @examples
#' # Example 1: Compute Gamma function for a single value
#' mygamma(5)
#'
#' @seealso
#' \code{\link{beta}} for the Beta function.
#' \code{\link{factorial}} for computing the factorial of an integer.
#'
#' @references
#' Abramowitz, M., & Stegun, I. A. (1964). *Handbook of Mathematical Functions with Formulas, Graphs, and Mathematical Tables* (Dover Publications).
#' Wikipedia: \url{https://en.wikipedia.org/wiki/Gamma_function}
#'
#' @export
#' @importFrom stats integrate
mygamma <- function(x) {
  integrand <- function(t) {
    t^(x - 1) * exp(-t)
  }

  # Perform the numerical integration
  result <- integrate(integrand, lower = 0, upper = Inf)

  return(result$value)
}

