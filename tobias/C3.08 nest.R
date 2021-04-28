# Keeping a complex data structure inside a tibble
# ===
# Goal: Combine the `latitude` and `longitude` of each row into *a two-column tibble*. 
#       Store the tibble in the column `coordinate`.
# Functions: nest()
# Note: Nesting is useful when you work with some R functions that are not in tidyverse. 
#       It allows you to keep any list-type objects within a tibble.
#       
# Example output: 
#
#      # A tibble: 3 x 2
#        place         coordinate      
#        <chr>         <list>          
#      1 IFI           <tibble [1 × 2]>
#      2 Main building <tibble [1 × 2]>
#      3 Irchel        <tibble [1 × 2]>
#
# Relevant R4DS chapter: https://r4ds.had.co.nz/many-models.html?q=nest#nested-data

#===============================================================================

library(tidyverse)

ns_input <- tribble(
  ~place,          ~latitude,     ~longitude,
  "IFI",           "47.4142883",  "8.5474019",
  "Main building", "47.37432210", "8.5487925",
  "Irchel",        "47.3974174",  "8.54618410")

# Answer:
the_answer <- 
  ns_input %>%
  nest(coordinate = c(latitude:longitude))

# TODO: replace NULL with your answer


