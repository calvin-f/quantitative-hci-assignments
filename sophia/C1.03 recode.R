# Recoding 
# ===
# Goal: Change the `answer` column in from 1 - 5 to strongly disagree to strongly agree. 
# 
#   Strongly disagree          Disagree           Neutral             Agree    Strongly agree 
#          "1"                    "2"               "3"                "4"         "5" 
# Functions: mutate(), fct_recode(), as_factor()
# 
# Example output: 
#
#      # A tibble: 3 x 2
#        question                                    answer        
#        <chr>                                       <fct>         
#      1 I can easily find functions.                Agree         
#      2 I enjoy using the system.                   Strongly agree
#      3 The visual design is aesthetically pleasing Disagree  

#
# Relevant R4DS chapter: https://r4ds.had.co.nz/factors.html

#===============================================================================

library(tidyverse)

rc_input <- tribble(
  ~question,                                    ~answer,
  "I can easily find functions.",                4,
  "I enjoy using the system.",                   5,
  "The visual design is aesthetically pleasing", 2)


# Answer:
the_answer <- 
  rc_input %>%
  mutate(answer = as_factor(answer)) %>%
  mutate(answer = fct_recode(answer,
                             "Strongly agree" = "5",
                             "Agree" = "4",
                             "Neutral" = "3",
                             "Disagree" = "2",
                             "Strongly disagree" = "1",
  ))

# TODO: replace NULL with your answer


#-------------------------------------------------------------------------------
# Reflect: You may receive a warning message ``Unknown levels in `f`: 1, 3``. 
#           - What does it  means?
#           - In which scenario will it be harmful?
#          Write down your reflection as a comment below. The reflection part is not graded.
#
# Your reflection:
# 
# 
#-------------------------------------------------------------------------------


