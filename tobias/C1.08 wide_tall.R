# Wide to tall
# ===
# Goal: Change the meal preference to the tidy data format:
#   
#   * Each variable forms a column. (`name`, `meal`, `food`)
#   * Each observation forms a row.
#   * Each type of observational unit forms a table.
#   
# Functions: pivot_longer()
# Example output: 
#
#      # A tibble: 9 x 3
#        name    meal      food       
#        <chr>   <chr>     <chr>      
#      1 Tomo    breakfast Yogurt     
#      2 Susanne breakfast Boiled eggs
#      3 Rajit   breakfast Soup       
#      4 Tomo    lunch     Schnitzel  
#      5 Susanne lunch     Spaghetti  
#      6 Rajit   lunch     Burger     
#      7 Tomo    dinner    Rissotto   
#      8 Susanne dinner    Steak      
#      9 Rajit   dinner    Salad 
#
# Relevant R4DS chapter: https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html#tidy-data

#===============================================================================

library(tidyverse)

wt_input <- tribble(
  ~name,     ~breakfast,    ~lunch,      ~dinner,
  "Tomo",    "Yogurt",      "Schnitzel", "Rissotto",
  "Susanne", "Boiled eggs", "Spaghetti", "Steak",
  "Rajit",   "Soup",        "Burger",    "Salad")


# Answer:
the_answer <- 
  wt_input %>%
  pivot_longer(cols = breakfast:dinner , names_to = "meal", values_to = "food")

# TODO: replace NULL with your answer

