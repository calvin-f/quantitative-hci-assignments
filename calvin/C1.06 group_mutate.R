# Group and mutate
# ===
# Goal: 
#    In an experiment, each participant (P01, P02, P03) worked on three task (A, B, C).
#    Their task completion time in minutes are recorded in the `task_time_m` column.
#    
#    1. Calculate the `session_time` by summing the time of the three tasks for *each participant*.
#    2. Calculate the `time_proportion` for *each participant and each task*. 
#    3. Then, average the proportion to `mean_time_proportion` *by task*.
#    
# Functions: group_by(), mutate(), ungroup(), summarize(), sum(), mean()
# 
# Example intermediate output from step 1:
#
#      # A tibble: 9 x 4
#      # Groups:   participant_id [3]
#        participant_id task  task_time_m session_time_m
#        <chr>          <chr>       <dbl>          <dbl>
#      1 P01            A               5             21
#      2 P01            B              10             21
#      3 P01            C               6             21
#      4 P02            A               8             27
#      5 P02            B              15             27
#      6 P02            C               4             27
#      7 P03            A               4             18
#      8 P03            B               9             18
#      9 P03            C               5             18
#
# Example intermediate output from step 2:
#
#      # A tibble: 9 x 5
#        participant_id task  task_time_m session_time_m time_proportion
#        <chr>          <chr>       <dbl>          <dbl>           <dbl>
#      1 P01            A               5             21           0.238
#      2 P01            B              10             21           0.476
#      3 P01            C               6             21           0.286
#      4 P02            A               8             27           0.296
#      5 P02            B              15             27           0.556
#      6 P02            C               4             27           0.148
#      7 P03            A               4             18           0.222
#      8 P03            B               9             18           0.5  
#      9 P03            C               5             18           0.278
# 
# Example final output: 
#
#      # A tibble: 3 x 2
#        task  mean_time_proportion
#        <chr>                <dbl>
#      1 A                    0.252
#      2 B                    0.511
#      3 C                    0.237

#
# Relevant R4DS chapter: https://r4ds.had.co.nz/transform.html?q=summarize(#grouped-mutates-and-filters

#===============================================================================

library(tidyverse)

gm_input <- tribble(
  ~participant_id, ~task, ~task_time_m,
  "P01",           "A",   5,
  "P01",           "B",   10,
  "P01",           "C",   6,
  "P02",           "A",   8,
  "P02",           "B",   15,
  "P02",           "C",   4,
  "P03",           "A",   4,
  "P03",           "B",   9,
  "P03",           "C",   5)

# Answer:
the_answer <- 
  gm_input %>% 
  group_by(participant_id) %>%
  mutate(session_time_m = sum(task_time_m)) %>% 
  mutate(time_proportion = task_time_m / session_time_m) %>%
  ungroup() %>%
  group_by(task) %>%
  summarise(mean_time_proportion = mean(time_proportion))
  
  # TODO: replace NULL with your answer

