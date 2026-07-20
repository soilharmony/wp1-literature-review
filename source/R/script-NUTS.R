# script to get NUTS-codes per level

library(tidyverse)
library(readxl)


# file from Ronald Kolcsar (EU + other countries of interest)
NUTSplus <- read_excel("data/NUTSplus_helpersheet-options.xlsx")

NUTS0 <- NUTSplus %>%
  filter(!is.na(NUTS0)) %>%
  mutate(
    # multiple selections separated by comma in spreadsheet
    # => no comma's in text allowed
    NUTS0_code = gsub(", ", " ", NUTS0)
  ) %>%
  select(NUTS0_code) %>%
  clipr::write_clip()

NUTS1 <- NUTSplus %>%
  filter(!is.na(NUTS1)) %>%
  mutate(
    # multiple selections separated by comma in spreadsheet
    # => no comma's in text allowed
    NUTS1_code = gsub(", ", " ", NUTS1)
  ) %>%
  select(NUTS1_code) %>%
  clipr::write_clip()

NUTS2 <- NUTSplus %>%
  filter(!is.na(NUTS2)) %>%
  mutate(
    # multiple selections separated by comma in spreadsheet
    # => no comma's in text allowed
    NUTS2_code = gsub(", ", " ", NUTS2)
  ) %>%
  select(NUTS2_code) %>%
  clipr::write_clip()

NUTS3 <- NUTSplus %>%
  filter(!is.na(NUTS3)) %>%
  mutate(
    # multiple selections separated by comma in spreadsheet
    # => no comma's in text allowed
    NUTS3_code = gsub(", ", " ", NUTS3)
  ) %>%
  select(NUTS3_code) %>%
  clipr::write_clip()


# commented out: based on EU-countries only
# NUTS2021_NUTS2024 <- read_excel("data/NUTS2021-NUTS2024.xlsx")
#
# NUTS1 <- NUTS2021_NUTS2024 %>%
#   filter(
#     `NUTS level` == 1,
#     `NUTS label` != "Extra-Regio NUTS 1"
#   ) %>%
#   mutate(
#     NUTS1_code = paste0(`NUTS Code`," (",`NUTS label`,')'),
#     # multiple selections separated by comma in spreadsheet
#     # => no comma's in text allowed
#     NUTS1_code = gsub(", ", " ", NUTS1_code)
#   ) %>%
#   select(NUTS1_code) %>%
#   clipr::write_clip()
# 
# NUTS2 <- NUTS2021_NUTS2024 %>%
#   filter(
#     `NUTS level` == 2,
#     `NUTS label` != "Extra-Regio NUTS 2"
#   ) %>%
#   mutate(
#     NUTS2_code = paste0(`NUTS Code`," (",`NUTS label`,')'),
#     # multiple selections separated by comma in spreadsheet
#     # => no comma's in text allowed
#     NUTS2_code = gsub(", ", " ", NUTS2_code)
#   ) %>%
#   select(NUTS2_code) %>%
#   clipr::write_clip()
# 
# NUTS3 <- NUTS2021_NUTS2024 %>%
#   filter(
#     `NUTS level` == 3,
#     `NUTS label` != "Extra-Regio NUTS 3"
#   ) %>%
#   mutate(
#     NUTS3_code = paste0(`NUTS Code`," (",`NUTS label`,')'),
#     # multiple selections separated by comma in spreadsheet
#     # => no comma's in text allowed
#     NUTS3_code = gsub(", ", " ", NUTS3_code)
#   ) %>%
#   select(NUTS3_code) %>%
#   clipr::write_clip()
