library(tidyverse)
library(googlesheets4)


url_sheet <- paste0("https://docs.google.com/spreadsheets/d/",
                    "13Qcj2Eg_oI9aUy7vL_34XdF-oucMppBdhk2w70AQMHk/",
                    "edit?usp=sharing")


data_wp1q <- read_sheet(
  url_sheet, sheet = "general",
  range = "A2:C16", col_names = F
) 

q_labels  <- data_wp1q[, 1]
q_names   <- data_wp1q[, 2] %>% pull()
q_answers <- data_wp1q[, 3:ncol(data_wp1q)]

q_answers <- as.data.frame(unname(t(q_answers)))
colnames(q_answers) <- q_names

