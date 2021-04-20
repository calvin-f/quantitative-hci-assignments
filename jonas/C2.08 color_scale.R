# Manual color scale and combining plots
# ===
# Goals: 
#   Represent the vision conditions with color: 
#     * EyesFree: "red"
#     * Peripheral: "navyblue" (see: [ggplot color names](http://sape.inf.usi.ch/quick-reference/ggplot2/colour))
#     * EyesOn: `#DE6464`
#   The output will be two plots with the `vision` condition ordered differently.
#   Ensure that your solution is robust regardless of the ordering.
#
# Example output: `goals/C2.08 color_scale_goal.png`
#
# Functions: scale_color_manual(values = ...), plot_grid()
#
# Relevant R4DS chapter: https://r4ds.had.co.nz/graphics-for-communication.html?q=scale_color#scales

#===============================================================================

library(tidyverse)
import::from(cowplot, plot_grid)
source("R/prepare_data.R") 

co_input_1 <- 
  data_knobology_within %>% 
  ggplot(aes(x = device, y = time, color = vision)) +
  geom_pointrange(stat = "summary", fun.data = mean_cl_normal) 


co_input_2 <- 
  data_knobology_within %>% 
  mutate(vision = factor(vision, levels = c("EyesOn", "Peripheral", "EyesFree"))) %>%  # NOTE: different ordering
  ggplot(aes(x = device, y = time, color = vision)) +
  geom_pointrange(stat = "summary", fun.data = mean_cl_normal) 


# Answer:
co_answer_scale <- scale_color_manual(values = c(EyesFree="red", Peripheral="navyblue", EyesOn="#DE6464"))

co_answer_1 <- co_input_1 + co_answer_scale
co_answer_2 <- co_input_2 + co_answer_scale

plot_grid(co_answer_1, co_answer_2, nrow = 2)


