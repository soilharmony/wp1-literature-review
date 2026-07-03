#' import_data_questionaire
#' 
#' @param gsheet URL to the google sheet of the questionaire
#' 
import_data_questionaire <- function(gsheet) {
  #browser()
  # sheet with general information (step 1)
  data_general <- read_sheet(
    gsheet, sheet = "generalQ",
    col_names = F
  )
  
  # row 2 in the spreadsheet = row 1 in data.frame = question labels
  col_names  <- as.character(data_general[1, ])
  col_labels <- as.character(data_general[2, ])
  
  data_general <- data_general[-(1:2), ]
  names(data_general) <- col_names
  for (i in seq_along(data_general)) {
    attr(data_general[[i]], "label") <- col_labels[i]
  }
  
  return(data_general)
}
