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
#      tibble: 9 x 3
#      name    meal      food       
#      <chr>   <chr>     <chr>      
#      1 Tomo    breakfast Yogurt     
#      2 Tomo    lunch     Schnitzel  
#      3 Tomo    dinner    Rissotto   
#      4 Susanne breakfast Boiled eggs
#      5 Susanne lunch     Spaghetti  
#      6 Susanne dinner    Steak      
#      7 Rajit   breakfast Soup       
#      8 Rajit   lunch     Burger     
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
  pivot_longer(!name,
    names_to = "meal",
    values_to = "food",
    values_drop_na = TRUE
  )
the_answer

