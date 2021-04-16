# Facet wrap
# ===
# Goal: Split the plots into facets according to participants.
# 
# Example output: `goals/C2.03 facet_wrap_goal.png`
# 
# Functions: facet_wrap()

#
# Relevant R4DS chapter: https://r4ds.had.co.nz/data-visualisation.html?q=facet#data-visualisation

#===============================================================================

library(tidyverse)
source("R/prepare_data.R")

fw_input <- 
  data_knobology_within %>% 
  ggplot(aes(x = device, y = time)) +
  geom_pointrange(stat = "summary", fun.data = mean_cl_normal) 

# Answer:
fw_input + 
  facet_wrap(~ participant)      # TODO: replace NULL with your answer

