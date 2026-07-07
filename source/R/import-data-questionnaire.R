#' import_data_questionaire
#' 
#' @param gsheet URL to the google sheet of the questionaire
#' 
import_data_questionaire <- function(gsheet) {
  #browser()
  # sheet with general information (step 1)
  data_general <- read_sheet(
    gsheet, sheet = "generalQ",
    # import without header, assign later
    col_names = F,   
    # safest to import all cols as character, pre-process later to other type
    col_types = "c"  
  )
  
  # specific rows in the spreadsheet
  col_names     <- as.character(data_general[1, ])
  col_class     <- as.character(data_general[2, ])
  col_labels    <- as.character(data_general[3, ])
  col_info      <- as.character(data_general[4, ])
  col_mandatory <- as.character(data_general[5, ])
  
  data_general <- data_general[-(1:5), ]
  names(data_general) <- col_names
  for (i in seq_along(data_general)) {
    attr(data_general[[i]], "label")     <- col_labels[i]
    attr(data_general[[i]], "mandatory") <- col_mandatory[i]
    attr(data_general[[i]], "qclass")    <- col_class[i]
  }
  
  return(data_general)
}
