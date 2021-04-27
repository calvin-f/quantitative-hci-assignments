# Finding a string pattern
# ===
# Goal: Extract the user ID (e.g., "P000001") from the text into a column `user_id`. 
#       You must use *one* regular expression for this exercise. 
#       These regular expressions must be generalizable to other input with the same pattern.
#       Do not manually change each row in the data.
#       
# Functions: mutate() and either str_match(), str_match_all(), str_extract(), or str_extract_all()
#
# Note:
# * R will interpret backslash ("\") as an escape character. For example `\n` will be 
#   interpreted as a newline character. In regular expression specification, 
#   you may need the backslash to be interpreted as it is. 
#   You can escape it by using "\\". For example, to match any whitespace character, use `\\s`.
# * [RegExr](https://regexr.com) lets you design regular expression interactively.
# 
# Example output: 
#
#      # A tibble: 3 x 2
#        user_text     user_id
#        <chr>         <chr>  
#      1 ID is P000001 P000001
#      2 P02 is the ID P02    
#      3 P3, not P04   P3  
#
#
# Relevant R4DS chapter: https://r4ds.had.co.nz/strings.html

#===============================================================================

library(tidyverse)

mt_input <- tribble(
  ~user_text,
  "ID is P000001",
  "P02 is the ID",
  "P3, not P04")


# Answer:

mt_regex <- "P\\d+"  # TODO: write your regex in the `mt_regex` variable

# use the test functions below to observe different behaviors of the functions. Check help of these functions for details
user_text <- mt_input$user_text[3]
str_match(user_text, mt_regex)
str_match_all(user_text, mt_regex)
str_extract(user_text, mt_regex)
str_extract_all(user_text, mt_regex)

# use one of the functions above in combination with `mt_regex` to extract the ID
the_answer <- 
  mt_input %>%
  mutate(user_id = str_match(user_text, mt_regex)) # TODO: replace NULL with an appropriate function call


