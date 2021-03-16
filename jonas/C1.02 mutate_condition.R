# Mutating and condition
# ===
# Goals: 
# 1. Classify the participants into the following `age_group`s:
# 
#     * Baby: 0 - 2
#     * Young adults: 3 - 39
#     * Middle-aged adults: 40 - 59
#     * Old adults: ≥ 60.
#
# 2. Add a column to indicate `score_level`: low (< 6) or high (≥ 6).
#
# Functions: 
#   * mutate(), between()
#   * Use this function once: if_else()
#   * Use this function once: case_when()
# 
# Example output: 
#
#      # A tibble: 10 x 5
#         participant_id   age score age_group          score_level
#         <chr>          <dbl> <dbl> <chr>              <chr>      
#       1 P01               43     5 Middle-aged adults low        
#       2 P02               40     4 Middle-aged adults low        
#       3 P03               29     7 Young adults       high       
#       4 P04               84     7 Old adults         high       
#       5 P05               89     3 Old adults         low        
#       6 P06                6     7 Young adults       high       
#       7 P07               57     9 Middle-aged adults high       
#       8 P08               71     4 Old adults         low        
#       9 P09               88     7 Old adults         high       
#      10 P10               13     9 Young adults       high     
#
# Relevant R4DS chapter: 
# * https://r4ds.had.co.nz/transform.html
# * Additionally, this "Missing values" section https://r4ds.had.co.nz/exploratory-data-analysis.html#missing-values-2

#===============================================================================

library(tidyverse)

mc_input <- tribble(
  ~participant_id, ~age, ~score,
  "P01",           43,   5,
  "P02",           40,   4,
  "P03",           29,   7,
  "P04",           84,   7,
  "P05",           89,   3,
  "P06",           6,    7,
  "P07",           57,   9,
  "P08",           71,   4,
  "P09",           88,   7,
  "P10",           13,   9)


# Answer:
the_answer <- 
  mc_input %>%
  mutate(age_group = case_when(age <= 2 ~ "Baby",
                               age <= 39 ~ "Young adults",
                               age <= 59 ~ "Middle-aged adults",
                               age >= 60 ~ "Old adults"),
         score_level = if_else(score<6, "low", "high"))

