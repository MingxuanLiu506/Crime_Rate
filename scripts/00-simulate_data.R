#### Preamble ####
# Purpose: Simulate data sets about crime rates in various regions and
# test these data to be true and valid
# Author: Mingxuan Liu
# Date: 09-21-2024
# Contact: mingxuan.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Install tidyverse packages
# other information: all code is appropriately styled using styler and lintr.

#### Workspace setup ####

#this code base on the sample of ChatGPT

library(tidyverse)

create_github_token()

#### Simulate data ####
# Load necessary library
library(tidyverse)

# Set the seed for reproducibility
set.seed(123)

# Number of areas to simulate
n_areas <- 50

# Generate random area names
area_names <- paste("Area", 1:n_areas)

# Create a tibble to simulate theft rates over the years
simulated_data <- tibble(
  AREA_NAME = area_names,
  THEFTOVER_RATE_2014 = rnorm(n_areas, mean = 50, sd = 20),
  THEFTOVER_RATE_2015 = rnorm(n_areas, mean = 52, sd = 22),
  THEFTOVER_RATE_2016 = rnorm(n_areas, mean = 48, sd = 19),
  THEFTOVER_RATE_2017 = rnorm(n_areas, mean = 49, sd = 18),
  THEFTOVER_RATE_2018 = rnorm(n_areas, mean = 45, sd = 17),
  THEFTOVER_RATE_2019 = rnorm(n_areas, mean = 50, sd = 20),
  THEFTOVER_RATE_2020 = rnorm(n_areas, mean = 47, sd = 21),
  THEFTOVER_RATE_2021 = rnorm(n_areas, mean = 55, sd = 22),
  THEFTOVER_RATE_2022 = rnorm(n_areas, mean = 53, sd = 23),
  THEFTOVER_RATE_2023 = rnorm(n_areas, mean = 51, sd = 20),
  POPULATION_2023 = round(runif(n_areas, min = 10000, max = 50000)),
  ASSAULT_RATE_2023 = rnorm(n_areas, mean = 80, sd = 30)
)

# View the first few rows of the simulated data
simulated_data %>% glimpse()