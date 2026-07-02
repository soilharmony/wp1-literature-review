#' import_data_questionaire
#' 
#' @param gsheet URL to the google sheet of the questionaire
#' 
import_data_questionaire <- function(gsheet) {
  # sheet with general information
  data_general <- read_sheet(
    gsheet, sheet = "general",
    range = "A2:C16", col_names = F
  )
  # transpose to tidy format
  q_labels  <- data_general[, 1]
  q_names   <- data_general[, 2] %>% pull()
  q_answers <- data_general[, 3:ncol(data_general)]
  q_answers <- as.data.frame(unname(t(q_answers)))
  colnames(q_answers) <- q_names
  return(q_answers)
}
