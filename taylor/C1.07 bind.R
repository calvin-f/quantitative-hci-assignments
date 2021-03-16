# Concatenate data
# ===
# Goal: Create a table showing all meal preferences
# Functions: bind_rows(), bind_cols()
# Example output: 
#
#      # A tibble: 3 x 4
#        name    breakfast   lunch     dinner  
#        <chr>   <chr>       <chr>     <chr>   
#      1 Tomo    Yogurt      Schnitzel Rissotto
#      2 Susanne Boiled eggs Spaghetti Steak   
#      3 Rajit   Soup        Burger    Salad  
#      
# Relevant R4DS chapter: 
#    None. Please check the help of the two functions, especially the examples.


#===============================================================================

library(tidyverse)

bd_input <- tribble(
  ~name,      ~breakfast,    ~lunch,
  "Tomo",     "Yogurt",      "Schnitzel",
  "Susanne",  "Boiled eggs", "Spaghetti")

bd_input_right <- tribble(
  ~dinner,
  "Rissotto",
  "Steak",
  "Salad")

bd_input_bottom <- tribble(
  ~name, ~breakfast, ~lunch,
  "Rajit", "Soup", "Burger")


# Answer:
the_answer <- 
  bd_input %>%
  bind_rows(bd_input_bottom) %>%
  bind_cols(bd_input_right)
the_answer

