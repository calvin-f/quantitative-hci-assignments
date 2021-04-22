# Theme
# ===
# Goals: 
#   * Move the color legend to the bottom
#   * Make the font size bigger (base size 14 pt)
#   * In the panel, remove all grid lines that are parallel to the veritcal axis.
#   * Change the the minor grid lines that are parallel to the horizontal axis to be in dark gray dashed lines.
#   * Make the axis labels black
#
# Example output: `goals/C2.10 theme_goal.png`
#
# Functions: theme_grey(), theme(), element_blank(), element_line(), element_text()
#
# Relevant resources: 
# * R4DS: https://r4ds.had.co.nz/graphics-for-communication.html?q=theme#themes
# * element_…(): https://ggplot2-book.org/polishing.html#modifying-theme-components

#===============================================================================

library(tidyverse)
source("R/prepare_data.R") 

tm_input <- 
  data_knobology_within %>% 
  ggplot(aes(x = device, y = time, color = vision)) +
  geom_pointrange(stat = "summary", fun.data = mean_cl_normal) 


# Answer:
tm_answer <- 
  theme_grey() +
  theme(legend.position = "bottom") +
  theme(text = element_text(size=14)) +
  theme(panel.grid.major.x = element_blank()) +
  theme(panel.grid.minor.y = element_line(linetype = "dashed",colour = "darkgray")) # TODO: Replace `NULL` with your answer

tm_input + tm_answer


