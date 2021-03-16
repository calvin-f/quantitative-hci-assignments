# Group and summarize
# ===
# Goal: Calculate the `session_time_m` per participant by summing `task_time_m`.
# Functions: group_by(), summarize(), sum()
# Example output: 
#
#      # A tibble: 3 x 2
#        participant_id session_time_m
#      * <chr>                   <dbl>
#      1 P01                        21
#      2 P02                        27
#      3 P03                        18
#
# Relevant R4DS chapter: https://r4ds.had.co.nz/transform.html?q=summarize(#grouped-summaries-with-summarise

#===============================================================================

library(tidyverse)

gs_input <- tribble(
  ~participant_id, ~task, ~task_time_m,
  "P01",           "x",   5,
  "P01",           "y",   10,
  "P01",           "z",   6,
  "P02",           "x",   8,
  "P02",           "y",   15,
  "P02",           "z",   4,
  "P03",           "x",   4,
  "P03",           "y",   9,
  "P03",           "z",   5)


# Answer:
the_answer <- 
  gs_input %>%
  group_by(participant_id) %>%
  summarise(session_time_m = sum(task_time_m))

