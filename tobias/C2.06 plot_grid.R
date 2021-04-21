# Combine multiple types of plot in one file.
# ===
# Goal: Combine the given two plots side-by-side on one view. 
#       Set the width of the two plots to be in 2:3 ratio with rel_widths()
# 
# Example output: `goals/C2.06 plot_grid_goal.png`
# 
# Functions: plot_grid() from the package `cowplot`
#
# Relevant resource: Introduction to plot_grid(): https://wilkelab.org/cowplot/articles/plot_grid.html

#===============================================================================
library(tidyverse)
import::from(cowplot, plot_grid)
source("R/prepare_data.R")

mp_input_1 <- 
  data_knobology_within %>% 
  ggplot(aes(x = device, y = time)) +
  geom_pointrange(stat = "summary", fun.data = mean_cl_normal) 

mp_input_2 <- 
  data_knobology_within %>% 
  ggplot(aes(x = vision, y = time)) +
  geom_pointrange(stat = "summary", fun.data = mean_cl_normal) 


# Answer:
plot_grid(mp_input_1, mp_input_2, rel_widths = c(2,3))


#-------------------------------------------------------------------------------
# Reflect: What is the difference between the capability  of the `plot_grid()` and the `facet_…()` functions? 
# The reflection is not graded.
#
# Your reflection:
# 
# 
#-------------------------------------------------------------------------------

