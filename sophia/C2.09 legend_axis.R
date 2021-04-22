# Legend and axes
# ===
# Goals: 
#   * Capitalize the axis and legend titles (e.g., "time" -> "Time", "vision" -> "Vision")
#   * Position the legend at the bottom of the chart
#   
# The solution does not need to be generalizable. You may hard-code the replacement values.
#
# Example output: `goals/C2.09 legend_axis_goal.png`
#
# Functions: labs(), theme(), guides(), guide_legend()
#
# Relevant resources:
# * R4DS chapter: https://r4ds.had.co.nz/graphics-for-communication.html?q=legend#legend-layout
# * guides: https://ggplot2-book.org/scale-colour.html?q=legend#guide_legend

#===============================================================================

library(tidyverse)
source("R/prepare_data.R") 

lg_input <- 
  data_knobology_within %>% 
  ggplot(aes(x = device, y = time, color = vision)) +
  geom_pointrange(stat = "summary", fun.data = mean_cl_normal) 


# Answer:
lg_input  + 
  labs(x = "Device", y = "Time", color = "Vision") +
  theme(legend.position = "bottom") +
  guides(colour = guide_legend(nrow = 1))   # TODO: replace NULL with your answer

