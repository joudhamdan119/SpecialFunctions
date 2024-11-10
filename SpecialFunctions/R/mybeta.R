#' Beta Function (mybeta)
#'
#' Computes the Beta function B(x, y), which is defined as:
#' \deqn{ B(x, y) = \int_0^1 t^{x-1} (1-t)^{y-1} \, dt }
#' for real (x > 0) and (y > 0).
#'
#' The Beta function is a special function that is closely related to the Gamma function and has applications in calculus, probability theory, and statistics. It is also used to model distributions, such as the Beta distribution in statistics.
#'
#' @param x A positive numeric value or vector representing the first parameter of the Beta function.
#' @param y A positive numeric value or vector representing the second parameter of the Beta function.
#'
#' @return A numeric value or vector, depending on the input, representing the Beta function evaluated at each pair of corresponding values in `x` and `y`.
#' If both `x` and `y` are vectors, the Beta function is computed for each pair of corresponding elements.
#'
#' @details
#' The Beta function is related to the Gamma function by the following identity:
#' \deqn{ B(x, y) = \frac{\Gamma(x)\Gamma(y)}{\Gamma(x + y)} }
#'
#' This relationship provides an efficient way to compute the Beta function using properties of the Gamma function. The Beta function appears in various fields, such as combinatorics, calculus, and mathematical statistics.
#'
#' Special cases include:
#' \deqn{ B(x, 1) = \frac{1}{x}, }
#' \deqn{ B(1, y) = \frac{1}{y}, }
#' which correspond to simple rational expressions.
#'
#' @examples
#' # Example 1: Compute Beta function for single values
#' mybeta(2, 3)
#'
#' # Example 2: Compute Beta function for vectors
#' mybeta(c(2, 3), c(4, 5))
#'
#' @seealso
#' \code{\link{gamma}} for the Gamma function, which is closely related to the Beta function.
#'
#' @references
#' Abramowitz, M., & Stegun, I. A. (1964). *Handbook of Mathematical Functions with Formulas, Graphs, and Mathematical Tables* (Dover Publications).
#' Wikipedia: \url{https://en.wikipedia.org/wiki/Beta_function}
#'
#' @export
mybeta <- function(x, y) {
  if (any(x <= 0) || any(y <= 0)) {
    stop("Both x and y must be positive numbers")
  }

  # Using the relationship with the Gamma function
  result <- gamma(x) * gamma(y) / gamma(x + y)

  return(result)
}

