#### Preamble ####
# Purpose: Cleans the raw data and save into analysis data
# Author: Bell He
# Date: 19 September 2024
# Contact: xiaoguang.he@mail.utoronto.ca
# License: None
# Pre-requisites: None
# Any other information needed? None
#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/data/plane_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
         )

#### Save data ####
write_csv(cleaned_data, "outputs/data/analysis_data.csv")

