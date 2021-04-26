# Separate atomic columns into a compound flat column
# ===
# Goal: Combine column `latitude` and `longitude` into a column `coordinate` that contains 
#       latitude and longitude separated by a comma.
# 
# Functions: unite()
# Example output: 
#
#      # A tibble: 3 x 2
#        place         coordinate           
#        <chr>         <chr>                
#      1 IFI           47.4142883,8.5474019 
#      2 Main building 47.37432210,8.5487925
#      3 Irchel        47.3974174,8.54618410
#
# Relevant R4DS chapter: https://r4ds.had.co.nz/tidy-data.html


#===============================================================================

library(tidyverse)

un_input <- tribble(
  ~place,          ~latitude,     ~longitude,
  "IFI",           "47.4142883",  "8.5474019",
  "Main building", "47.37432210", "8.5487925",
  "Irchel",        "47.3974174",  "8.54618410")

# Answer:
the_answer <- 
  un_input %>%
  unite(coordinate, c("latitude", "longitude"), sep=",")# TODO: replace NULL with your answer
