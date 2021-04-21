# One plot, multiple datasets
# ===
# Goal: Use the `md_input` plot that shows the beeswarm of data from `data_knobology_resampled` as a basis.
#       - Add a layer of points and error bars showing means and confidence intervals calculated 
#         from a different dataset: `data_knobology_within`.
#       - Set the color of the new  layer to blue.
#       - Ensure that the new layer doesn't overlap with the black points and error bars.
#
# Example output: `goals/C2.05 multi_dataset_goal.png`
# 
# Functions: geom_pointrange(data = …, mapping = aes(…), …), position_nudge(x = 0.1)
#
# Relevant resource: 
#  * Using data in ggplot layers https://ggplot2-book.org/layers.html#data

#===============================================================================
library(tidyverse)
source("R/prepare_data.R") 

md_input <- 
  data_knobology_resampled %>%
  ggplot(aes(x = device, y = time)) +
  geom_pointrange(stat = "summary", fun.data = mean_cl_normal) 


# Answer:
md_input + 
  geom_pointrange(data=data_knobology_within, 
                  mapping = aes(x = device, y = time), 
                  stat="summary", 
                  fun.data=mean_cl_normal, 
                  color="blue", 
                  position= position_nudge(x=0.05))      

# TODO: replace NULL with your answer

