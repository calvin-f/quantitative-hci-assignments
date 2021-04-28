# Generating text based on a template
# ===
# Goal: Prepare an email text from the data table. Store the email text in `email` column. 
#       Write the email text according to the example in `goals/glue_email_example.txt`.
#
# Functions: str_glue()
#
# Note: There are several alternative solutions, e.g., `sprintf()` and `str_interp()`. 
#       We recommend using `str_glue()` because it can define self-contained templates 
#       that are readable independently from the function call part.
#       
# Example output: 
#
#      # A tibble: 4 x 3
#        user_id  compensation_chf email                                                       
#        <chr>               <dbl> <glue>                                                      
#      1 Thana                  20 "Dear Thana,\n\nFor the participation in the study, you wil…
#      2 Sara                   25 "Dear Sara,\n\nFor the participation in the study, you will…
#      3 Thorsten               30 "Dear Thorsten,\n\nFor the participation in the study, you …
#      4 Sanjiv                 40 "Dear Sanjiv,\n\nFor the participation in the study, you wi…
#
# Related resource: str_glue() examples https://stringr.tidyverse.org/reference/str_glue.html#examples

#===============================================================================

library(tidyverse)

gl_input <- tribble(
  ~user_id,    ~compensation_chf,
  "Thana",    20,
  "Sara",     25,
  "Thorsten", 30,
  "Sanjiv",   40)


# Answer:

gl_template <- "Dear {user_id},\n\nFor the participation in the study, you will receive the compensation of\n\n\t\t\t\t{compensation_chf} CHF.\n\nThank you!"

# TODO: Paste the content from the file `goals/glue_email_example.txt`, and modify it to use the column names of the input.

the_answer <- 
  gl_input %>% 
  mutate(email = str_glue(gl_template))

# TODO: replace NULL with an appropriate function call that uses `gl_template`


