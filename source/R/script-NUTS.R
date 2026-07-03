# script to get NUTS-codes per level

library(tidyverse)
library(readxl)

NUTS2021_NUTS2024 <- read_excel("data/NUTS2021-NUTS2024.xlsx")


NUTS1 <- NUTS2021_NUTS2024 %>%
  filter(
    `NUTS level` == 1,
    `NUTS label` != "Extra-Regio NUTS 1"
  ) %>%
  select(`NUTS Code`) %>%
  clipr::write_clip()

NUTS2 <- NUTS2021_NUTS2024 %>%
  filter(
    `NUTS level` == 2,
    `NUTS label` != "Extra-Regio NUTS 2"
  ) %>%
  select(`NUTS Code`) %>%
  clipr::write_clip()

NUTS3 <- NUTS2021_NUTS2024 %>%
  filter(
    `NUTS level` == 3,
    `NUTS label` != "Extra-Regio NUTS 3"
  ) %>%
  select(`NUTS Code`) %>%
  clipr::write_clip()


