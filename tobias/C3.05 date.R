# Parsing dates
# ===
# Goal: Calculate the total number of COVID-19 cases in each month
# Functions: dmy(), month(), you may use other functions from the `lubridate` package
# Example output: 
#
#      # A tibble: 2 x 2
#        month covid19_case_count
#        <dbl>              <dbl>
#      1     2                 18
#      2     3                460

#
# Relevant R4DS chapter: https://r4ds.had.co.nz/dates-and-times.html

#===============================================================================

library(tidyverse)

dt_input <- tribble(
  ~date_text, ~covid19_case_count, 
  "26.02.20", "1",
  "27.02.20", "1",
  "28.02.20", "6",
  "29.02.20", "10",
  "01.03.20", "18",
  "02.03.20", "24",
  "03.03.20",	"30",
  "04.03.20",	"37",
  "05.03.20",	"56",
  "06.03.20",	"86",
  "07.03.20",	"209")


# Answer:

# TODO: load the lubridate package

library(lubridate)

the_answer <- 
  dt_input %>%
  mutate(
    covid19_case_count = as.numeric(covid19_case_count),
    date = dmy(date_text),          # TODO: replace NULL with an appropriate function call
    month = month(date)) %>%     # TODO: replace NULL with an appropriate function call
  group_by(month) %>%
  summarize(covid19_case_count = sum(covid19_case_count))

