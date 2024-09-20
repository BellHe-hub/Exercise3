#### Preamble ####
# Purpose: Simulates Marriage Data
# Author: Bell He
# Date: 19 September 2024
# Contact: hxg021225@gmail.com
# License: None
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
install.packages('tidyverse')
install.packages('readr')
library(tidyverse)
library(readr)
# [...UPDATE THIS...]

#### Simulate data ####
set.seed(777)

start_date <- as.Date("2017-01-01")
end_date <- as.Date("2022-12-31")

number_of_dates <- 150

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 17)
  )


write_csv(data, file = "data/raw_data/simulated.csv")



