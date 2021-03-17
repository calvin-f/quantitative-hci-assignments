# Recoding with reuse
# ===
# Goal: Use `answer_levels` variable to translate the `answer` column
# Functions: mutate(), fct_recode(), !!!
# Note: 
#  - Use the command `?fct_recode` to show help of this function and check out the example for the use of the `!!!` operator.
# Example output: 
#
#      # A tibble: 3 x 2
#        question                                    answer        
#        <chr>                                       <fct>         
#      1 I can easily find functions.                Agree         
#      2 I enjoy using the system.                   Strongly agree
#      3 The visual design is aesthetically pleasing Disagree   
#
# Relevant R4DS chapter: 
#   * https://r4ds.had.co.nz/factors.html
#   * Optional advanced reading: `!!!` is a [quasiquotation operator](https://adv-r.hadley.nz/quasiquotation.html).
#===============================================================================

library(tidyverse)

rr_input <- tribble(
  ~question,                                     ~answer,
  "I can easily find functions.",                "4",
  "I enjoy using the system.",                   "5",
  "The visual design is aesthetically pleasing", "2") %>% 
  mutate(answer = as_factor(answer))

answer_levels <- c(
  `Strongly disagree` = "1",
  `Disagree` = "2",
  `Neutral` = "3",
  `Agree` = "4",
  `Strongly agree` = "5")


# Answer:
the_answer <- 
  rr_input %>%
  mutate(answer = fct_recode(answer, !!!answer_levels))

# TODO: replace NULL with your answer


#-------------------------------------------------------------------------------
# Reflect: In which situation will this method be better than copy-and-pasting the second argument for `fct_recode`?
#          Write down your reflection as a comment below.
#
# Your reflection:
#
# Provides better readability of the code in case of very long arguments + no redundancy in the script.
#------------------------------------------------------------------------------- 


