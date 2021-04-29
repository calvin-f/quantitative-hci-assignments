# Apply function to each of the nested objects and unnest the output
# ===
# Goal: Apply the function `combine_coordinate()` to each row of the column `coordinate`. Then unnest the results into a flat table.
# Functions: mutate(), map(), unnest(), select()
# Example output: 
#
#      # A tibble: 3 x 4
#        place         latitude    longitude  combined             
#        <chr>         <chr>       <chr>      <chr>                
#      1 IFI           47.4142883  8.5474019  47.4142883,8.5474019 
#      2 Main building 47.37432210 8.5487925  47.37432210,8.5487925
#      3 Irchel        47.3974174  8.54618410 47.3974174,8.54618410
#
# Relevant R4DS chapter: https://r4ds.had.co.nz/iteration.html?q=map#mapping-over-multiple-arguments

#===============================================================================

library(tidyverse)

mp_input <- tribble(
  ~place,          ~coordinate,
  "IFI",           tibble(latitude = "47.4142883",  longitude = "8.5474019"),
  "Main building", tibble(latitude = "47.37432210", longitude = "8.5487925"),
  "Irchel",        tibble(latitude = "47.3974174",  longitude = "8.54618410"))

combine_coordinate <- function(df) {
  df %>% 
    mutate(combined = str_c(latitude, ",", longitude))
}

# Answer:
the_answer <- 
  mp_input %>%
  mutate(combined = map(coordinate, combine_coordinate)) %>%
  select(c(place, combined))%>%
  unnest(combined)
# TODO: replace NULL with your answer

#-------------------------------------------------------------------------------
# Try: In RStudio, in the `Environment panel`, on the `mp_input` row, 
#      click on the small table icon on the right to inspect the values as a table.
#      In column `coordinate`, there are also small table icon, 
#      clicking on it will allow you to inspect each of the nested value.
#
#-------------------------------------------------------------------------------
# Observe: Sometimes, you may need to access individual element in the nested tibble.
#          Try out the following two commands.
#                mp_input$coordinate[[1]]
#                mp_input$coordinate[1]
#                mp_input$coordinate[[1:2]]
#                mp_input$coordinate[1:2]
#          How do their output differ? 
#          If it is unclear, try using `str()` or `dput()` function to inspect their data structure.
#                str(mp_input$coordinate[[1]])
#                str(mp_input$coordinate[1])
# The observation is not graded.
#
# Your observation:
#
#
#-------------------------------------------------------------------------------

