#' Error Function (erf)
#'
#' Computes the error function, defined as:
#' \deqn{ \text{erf}(x) = \frac{2}{\sqrt{\pi}} \int_0^x e^{-t^2} dt }
#'
#' The error function is widely used in probability, statistics, and various areas of mathematical physics, particularly in the context of normal distributions and diffusion processes.
#'
#' @param x A numeric vector, matrix, or scalar. The value(s) for which the error function will be calculated.
#'
#' @return A numeric value or vector/matrix, depending on the input, representing the computed value of the error function for each corresponding element in `x`.
#'
#' @details
#' The function calculates the error function \eqn{\text{erf}(x)}, which is commonly used in statistics, particularly in the computation of cumulative distribution functions (CDF) for the normal distribution. This implementation uses efficient numerical methods for fast computation and handles both small and large input values.
#'
#' @examples
#' # Example 1: Compute myerf for a single value
#' myerf(1)
#'
#' @seealso
#' \code{\link{erfc}} for the complementary error function.
#' \code{\link{pnorm}} for the cumulative distribution function of the normal distribution.
#'
#' @references
#' Abramowitz, M., & Stegun, I. A. (1964). *Handbook of Mathematical Functions with Formulas, Graphs, and Mathematical Tables* (Dover Publications).
#' Wikipedia: \url{https://en.wikipedia.org/wiki/Error_function}
#'
#' @export
#' @importFrom stats integrate
myerf <- function(x) {
  integrand <- function(t) {
    exp(-t^2)
  }

  # Perform the numerical integration
  result <- integrate(integrand, lower = 0, upper = x)

  return(2 / sqrt(pi) * result$value) #This is because result is a list, and the arithmetic operation (*) cannot be applied to a list. $ extracts the numeric value
  #value is the main result
}


