# Cutting text to pieces and putting them together
# ===
# Goal: Combine the `user_id` and the `team_id` to the format like this example: `T01P01`. Store the results in the `combined_id` column.
# Functions: mutate(), str_sub(), str_c()
# Example output: 
#
#      # A tibble: 3 x 3
#        user_id team_id combined_id
#        <chr>   <chr>   <chr>      
#      1 P0001   01      T01P01     
#      2 P0002   02      T02P02     
#      3 P0003   03      T03P03  

#
# Relevant R4DS chapter: https://r4ds.had.co.nz/strings.html

#===============================================================================

library(tidyverse)

su_input <- tribble(
  ~user_id, ~team_id,
  "P0001",  "01",
  "P0002",  "02",
  "P0003",  "03")

# Answer:
the_answer <-
  su_input %>%
  mutate(combined_id=str_c('T', team_id, 'P', str_sub(user_id, 4)))    

# TODO: replace NULL with your answer


