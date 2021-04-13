# Beeswarm plot
# ===
# Goal: Make a beeswarm plot from the given data. 
#       Make the dots in the beeswarm appear with 20% transparency (`alpha`).
# 
# Example output: `goals/C2.01 beeswarm_goal.png`
# 
# Function: geom_beeswarm()
#
# Relevant R4DS chapter: https://r4ds.had.co.nz/data-visualisation.html

#===============================================================================

library(tidyverse)
source("R/prepare_data.R")  
# To view the data use view() 
# or click on the dataframe in the Environment tab

# Answer:
import::from(ggbeeswarm, geom_beeswarm)          # TODO: import geom_beeswarm function (you must use import::from())

data_knobology_resampled %>% 
  ggplot(aes(device, time))  +
  geom_beeswarm(alpha=0.2) 
# TODO: make a beeswarm plot

