# Filtering and ordering
# ===
# Goal: Filter the tibble for "dog" owners. 
#       Then, order the result from Z to A according to the name of the `owner`. 
# Functions: filter(), str_detect(), arrange(), desc()
# Example output: 
# 
#      # A tibble: 2 x 2
#        owner  pet                 
#        <chr>  <chr>               
#      1 Sanjiv white dog           
#      2 Gunnar dog with an attitude
#
# Relevant R4DS chapter: https://r4ds.had.co.nz/transform.html?q=filter#filter-rows-with-filter

#===============================================================================

library(tidyverse)

fo_input <- tribble(
  ~owner,    ~pet,
  "Thana",   "cute cat",
  "Max",     "quiet parrot",
  "Gunnar",  "dog with an attitude",
  "Ben",     "chaming chimps",
  "Sara",    "bumble bees",
  "Thorsten", "colorful chameleon",
  "Sanjiv",  "white dog")

out_1 <- filter(fo_input, str_detect(pet, "dog"))
out_2 <- arrange(out_1, desc(owner))


# Answer:
the_answer <- 
  out_2                # TODO: replace NULL with your answer

