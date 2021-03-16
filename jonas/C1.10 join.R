# Joining
# ===
# Goal: Combine multiple tibbles by matching the rows by `name`
# Functions: inner_join()
# Example output: 
#
#      # A tibble: 3 x 5
#        name    breakfast   mood_breakfast lunch     mood_lunch
#        <chr>   <chr>       <chr>          <chr>     <chr>     
#      1 Tomo    Yogurt      good           Schnitzel bad       
#      2 Susanne Boiled eggs neutral        Spaghetti neutral   
#      3 Rajit   Soup        good           Burger    good   

#
# Relevant R4DS chapter: https://r4ds.had.co.nz/relational-data.html

#===============================================================================

library(tidyverse)

jn_input_b <- tribble(
  ~name,      ~breakfast,    ~mood,
  "Tomo",     "Yogurt",      "good",
  "Susanne",  "Boiled eggs", "neutral",
  "Rajit",    "Soup",        "good")

jn_input_l <- tribble(
  ~name,      ~lunch,        ~mood,
  "Rajit",    "Burger",      "good",
  "Tomo",     "Schnitzel",   "bad",
  "Susanne",  "Spaghetti",   "neutral")


# Answer:
the_answer <- 
  jn_input_b %>% 
  inner_join(jn_input_l, by="name", suffix = c("_breakfast", "_lunch"))

