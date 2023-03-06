#### Preamble ####
# Purpose: Simulate dataset of Covid19 clinics across Toronto
# Author: Christina Wei
# Data: 6 March 2023
# Contact: christina.wei@mail.utoronto.ca
# License: MIT

#### Data Expectations ####
# Symbols have to be 3 alphanumeric
# Date is a valid date type
# Return is a double showing daily returns

#### Workspace setup ####
library(tidyverse)

#### Start simulation ####

num_observations = 365

stock_data =
  tibble(
    date = seq(as.Date('2022/01/01'), as.Date('2022/12/31'), by="day"),
    symbol = "SPX",
    return = rnorm(
      n = num_observations,
      mean = 0,
      sd = 0.01)
  )

#Cindy messing with it
num_observations = 365

stock_data =
  tibble(
    date = seq(as.Date('2022/01/01'), as.Date('2022/12/31'), by="day"),
    symbol = NA,
    return = rnorm(
      n = num_observations,
      mean = -10,
      sd = 0.01)
  )
