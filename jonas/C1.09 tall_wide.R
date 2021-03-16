# Tall to wide
# ===
# Goal: Sum up the number of glances at a mobile phone during weekdays and weekends
# Functions: pivot_wider(), mutate(), select()
# Example output: 
#
#      # A tibble: 2 x 3
#        participant_id weekdays_count weekends_count
#        <chr>                   <dbl>          <dbl>
#      1 P01                        89             36
#      2 P02                       135             47
#      
# Relevant R4DS chapter: https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html#tidy-data


#===============================================================================

library(tidyverse)

tw_input <- tribble(
  ~participant_id, ~day_of_week, ~glance_count,
  "P01",           "Mo",         22,
  "P01",           "Tu",         17,
  "P01",           "We",         10,
  "P01",           "Th",         27,
  "P01",           "Fr",         13,
  "P01",           "Sa",         26,
  "P01",           "So",         10,
  "P02",           "Mo",         28,
  "P02",           "Tu",         26,
  "P02",           "We",         27,
  "P02",           "Th",         30,
  "P02",           "Fr",         24,
  "P02",           "Sa",         29,
  "P02",           "So",         18)


# Answer:
the_answer <- 
  tw_input %>% 
  pivot_wider(names_from = day_of_week, values_from = glance_count) %>% 
  mutate(weekdays_count = Mo + Tu + We + Th + Fr, weekends_count = Sa + So) %>% 
  select(participant_id, weekdays_count, weekends_count)
  
