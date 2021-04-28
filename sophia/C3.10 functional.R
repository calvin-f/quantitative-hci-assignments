# Changing from loop to functional
# ===
# Goal: Replace `for()` loop with a functional programming implementation.
# Functions: pwalk()
# Example output: 
#
#      weight: 50 height: 1.55 bmi: 20.81165 
#      weight: 60 height: 1.75 bmi: 19.59184 
#      weight: 70 height: 1.74 bmi: 23.12062 
#
# Relevant R4DS chapter: https://r4ds.had.co.nz/iteration.html?q=pwalk#iteration

#===============================================================================
library(tidyverse)

nl_input <- tribble(
  ~weight_kg, ~height_m,
  50,         1.55,
  60,         1.75,
  70,         1.74,
)

bmi <- function(kg, m) {kg / (m^2)}

# loop-version of the output
for (i in 1:nrow(nl_input)) {
  a_bmi <- bmi(nl_input$weight_kg[i], nl_input$height_m[i])
  cat("weight:", nl_input$weight_kg[i], "height:", nl_input$height_m[i], "bmi:", a_bmi, "\n")
}

# Answer:
f <- function(weight_kg, height_m) { # TODO: specify the names of the arguments for f
  cat("weight:", weight_kg, "height:", height_m, "bmi:", weight_kg/(height_m^2), "\n") # TODO: write the function f
} 

nl_input %>% pwalk(f)

#-------------------------------------------------------------------------------
# Reflect: If we need to use an existing function without a control of how its arguments are named,
#          what are different ways that can we do to make `pmap()` work?
# 
# Your reflection:
# 
# 
#-------------------------------------------------------------------------------

