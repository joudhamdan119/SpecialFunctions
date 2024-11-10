## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
knitr::opts_knit$set(root.dir = "C:/Users/pc/Documents/SpecialFunctions")

## ----setup--------------------------------------------------------------------
# Load the SpecialFunctions package
#devtools::install()
library(SpecialFunctions)
library(knitr)

## -----------------------------------------------------------------------------
# Calculate Gamma(5) using the gamma() function from SpecialFunctions
gamma_value <- mygamma(5)
gamma_value  # This will return 24

## -----------------------------------------------------------------------------
# Calculate Beta(2, 3)
beta_value <- mybeta(2, 3)
beta_value   # This will return 0.08333333

## -----------------------------------------------------------------------------
# Calculate Factorial(5) using the myfactorial() function from SpecialFunctions
factorial_value <- myfactorial(5)
factorial_value  # This will return 120

## -----------------------------------------------------------------------------
# Calculate Double Factorial(6) using the mydoublefactorial() function from SpecialFunctions
double_factorial_value <- mydoublefactorial(6)
double_factorial_value  # This will return 48

## -----------------------------------------------------------------------------
# Calculate erf(1) using the myerf() function from SpecialFunctions
erf_value <- myerf(1)
erf_value   # This will return 0.8427008

