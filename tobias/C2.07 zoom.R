# Zoom
# ===
# Goal: Zoom the range of the vertical-axis to be between 2 and 4. 
#       Ensure that the mean and error bars do not change.
#
# Example output: `goals/C2.07 zoom_goal.png`
#
# Function: coord_cartesian()
# 
# Relevant resources: 
#   * R4DS zooming: https://r4ds.had.co.nz/graphics-for-communication.html?q=limit#zooming
#   * scales: https://ggplot2-book.org/mastery.html#mastering-scales
#   * coordinates: https://ggplot2-book.org/mastery.html#coordinate-systems

#===============================================================================

library(tidyverse)
import::from(ggbeeswarm, geom_beeswarm)
source("R/prepare_data.R") 

zm_input <- 
  data_knobology_resampled %>% 
  ggplot(aes(x = device, y = time)) +
  geom_beeswarm(alpha = 0.2) +
  geom_pointrange(stat = "summary", fun.data = mean_cl_normal) 


# Answer:
zm_input +
  coord_cartesian(ylim = c(2,4))

# TODO: replace NULL with your answer
  
#-------------------------------------------------------------------------------
# Try and observe: The function `scale_y_continuous()` could also be used to zoom in as well.
#                  However, you will receive some warnings. Why do these warnings appear?
# The observation is not graded.
# 
# Your observation:
# 
# 
#-------------------------------------------------------------------------------
  
