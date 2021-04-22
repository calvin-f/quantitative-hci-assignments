# Facet grid
# ===
# Goal: Split the plots into the `device` (horizontally) and `vision` (vertically)
# 
# Example output: `goals/C2.04 facet_grid_goal.png`
# 
# Functions: facet_grid()

#
# Relevant R4DS chapter: https://r4ds.had.co.nz/data-visualisation.html?q=facet#data-visualisation

#===============================================================================

library(tidyverse)
source("R/prepare_data.R") 

fg_input <- 
  data_knobology_within %>% 
  ggplot(aes(x = device, y = time)) +
  geom_pointrange(stat = "summary", fun.data = mean_cl_normal) 

# Answer:
fg_input + 
  facet_grid(vars(vision), vars(device))      # TODO: replace NULL with your answer

