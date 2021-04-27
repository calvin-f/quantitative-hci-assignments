# Replacing a pattern
# ===
# Goal: Format the user IDs into, for example, "P1". Save the answer in the `pid` column.
#       You must use *two* regular expressions for this exercise. 
#       These regular expressions must be generalizable to other input with the same pattern.
#       Do not manually change each row in the data.
#       
# Functions: str_replace()
# Hints: 
#   * backreferences: https://r4ds.had.co.nz/strings.html#grouping-and-backreferences
#   * non-capturing parentheses `(?:...)`  groups the included pattern, but does not provide capturing of matching text.
#   
# Example output: 
#
#      # A tibble: 3 x 2
#        user_id_mixed pid  
#        <chr>         <chr>
#      1 "P000001"     P1   
#      2 "P0\n2"       P2   
#      3 "P3++"        P3  
#
#
# Relevant R4DS chapter: https://r4ds.had.co.nz/strings.html


#===============================================================================

library(tidyverse)

rp_input <- tribble(
  ~user_id_mixed,
  "P000001",
  "P0\n2",
  "P3++")


# Answer:

# TODO: modify the following two regular expressions to match group and replace with reference to the group
regex_find <- "[\\s\\S]*(P)[\\s\\S]*([1-9]+)[\\s\\S]*"
regex_replace <- "\\1\\2"

the_answer <- 
  rp_input %>%
  mutate(pid = str_replace(user_id_mixed, regex_find, regex_replace)) # TODO: replace NULL with an appropriate function call that uses `regex_find` and `regex_replace` above


