# Slope graph
# ===
# Goal: 
#       Slope graphs are useful to show the trend of the differences between conditions within each participant.
#       Add a text to the slopegraph to indicate which participant it is from for each point.
# 
# Example output: `goals/C2.02 slope_graph_goal.png`
# 
# Functions:
#  * mutate()
#  * if_else()
#  * aes(group = interaction(…)), 
#  * geom_text(aes(label = ...), nudge_x = ...)
#  * geom_point()
#  * geom_line()

#
# Relevant R4DS chapter: https://r4ds.had.co.nz/graphics-for-communication.html?q=geom_text#annotations

#===============================================================================

library(tidyverse)
source("R/prepare_data.R")

# Answer:
data_knobology_within %>% 
  mutate(label=if_else(device=='Touch', "", participant)) %>%               # TODO: add a step to replace the label on the `Touch` side with "" to hide them
  ggplot(aes(x = device, y = time, group=interaction(vision,participant)))+  # TODO: add the `group` parameter
	  geom_point() +
	  geom_line() +
    geom_text(aes(label=label), nudge_x=-0.05)                       # TODO: replace NULL with a geom_text() call


