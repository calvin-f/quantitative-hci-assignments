# Separate a compound flat column into atomic columns
# ===
# Goal: Split the coordinates into `latitude` and `longitude`.
# Functions: separate()
# Example output: 
#
#      # A tibble: 3 x 3
#        place         latitude    longitude 
#        <chr>         <chr>       <chr>     
#      1 IFI           47.4142883  8.5474019 
#      2 Main building 47.37432210 8.5487925 
#      3 Irchel        47.3974174  8.54618410
#
# Relevant R4DS chapter: https://r4ds.had.co.nz/tidy-data.html

#===============================================================================

library(tidyverse)

sp_input <- tribble(
  ~place,          ~coordinate,
  "IFI",           "47.4142883,8.5474019",
  "Main building", "47.37432210,8.5487925",
  "Irchel",        "47.3974174,8.54618410")


# Answer:
the_answer <- 
  sp_input %>%
  separate(coordinate, c("latitude", "longitude"), sep=",")# TODO: replace NULL with your answer


