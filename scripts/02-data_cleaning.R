#### Preamble ####
# Purpose: Select specific columns from the dataset, which is needed in this 
# case are related to theft rates
# Author:  Mingxuan Liu
# Date: 09-21-2024
# Contact: mingxuan.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run the file "01-download_data.R".
# other information: all code is appropriately styled using styler and lintr.

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
# Read the original CSV file
crime_rates_statistics <- read_csv("data/raw_data/raw_data.csv")

# Select the relevant columns using dplyr's select function from tidyverse
selected_columns <- crime_rates_statistics %>%
  select(
    AREA_NAME,
    THEFTOVER_RATE_2014,
    THEFTOVER_RATE_2015,
    THEFTOVER_RATE_2016,
    THEFTOVER_RATE_2017,
    THEFTOVER_RATE_2018,
    THEFTOVER_RATE_2019,
    THEFTOVER_RATE_2020,
    THEFTOVER_RATE_2021,
    THEFTOVER_RATE_2022,
    THEFTOVER_RATE_2023,
    POPULATION_2023,
    ASSAULT_RATE_2023,
    ASSAULT_2023
  )

#### Save data ####
write_csv(selected_columns, "data/clean_data/clean_data.csv")
