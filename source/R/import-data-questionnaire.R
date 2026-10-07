#' import_data_questionaire
#' @param gsheet URL to the google sheet of the questionaire
import_data_questionaire <- function(gsheet) {
  
  # sheet with general information (step 1)
  data_general <- read_sheet(
    gsheet, sheet = "generalQ",
    # import without header, assign later
    col_names = FALSE,   
    # safest to import all cols as character, pre-process later to other type
    col_types = "c"  
  )
  
  # specific rows in the spreadsheet
  col_names     <- as.character(data_general[1, ])
  col_group     <- as.character(data_general[2, ])
  col_labels    <- as.character(data_general[3, ])
  col_info      <- as.character(data_general[4, ])
  col_type      <- as.character(data_general[5, ])
  col_mandatory <- as.character(data_general[6, ])
  data_content  <- data_general[-(1:6), ]
  # data attributes
  colnames(data_content) <- col_names
  for (i in seq_along(data_content)) {
    attr(data_content[[i]], "label")          <- col_labels[i]
    attr(data_content[[i]], "mandatory")      <- col_mandatory[i]
    attr(data_content[[i]], "group-question") <- col_group[i]
    attr(data_content[[i]], "type-question")  <- col_type[i]
  }
  # remove empty column
  empty_col <- which(grepl("END of the mandatory questions.", col_names))
  data_content[, empty_col] <- NULL
  
  # spreadsheet with answer options
  helpersheet_options <- read_sheet(
    gsheet, sheet = "helpersheet-options",
    col_names = TRUE,   
    col_types = "c"  
  )
  answer_options <- lapply(
    as.list(helpersheet_options),
    function(x) x[!is.na(x)]
  )
  
  # transform factor & numeric variables
  data_content <- data_content %>%
    mutate(
      institute               = factor(institute, answer_options$institute),
      english                 = factor(english, answer_options$binary_yes_no),
      data_accessible         = factor(data_accessible, answer_options$data_accessible),
      TF_PTF_public           = factor(TF_PTF_public, answer_options$yes_no_unk),
      tf_or_ptf               = factor(tf_or_ptf, answer_options$TF_PTF),
      soildescriptor          = factor(soildescriptor, answer_options$soil_descriptor),
      refmethod_norm          = factor(refmethod_norm, answer_options$soildescriptor_norm),
      nonrefmethod_norm       = factor(nonrefmethod_norm, answer_options$soildescriptor_norm),
      predictions_possible    = factor(predictions_possible, answer_options$yes_no_unk),
      prediction_uncertainty  = factor(prediction_uncertainty, answer_options$yes_no_unk),
      number_samples_training = as.numeric(number_samples_training),
      data_embargo_date       = as.Date(data_embargo_date, "%Y-%m-%d"),
      data_licence            = factor(data_licence, answer_options$licenses),
      year_sampling_begin     = as.numeric(year_sampling_begin),
      year_sampling_end       = as.numeric(year_sampling_end),
      soil_depths_min         = case_when(soil_depths_min == "-999" ~ NA_real_,
                                          TRUE ~ as.numeric(soil_depths_min)),
      soil_depths_max         = case_when(soil_depths_max == "-999" ~ NA_real_,
                                          TRUE ~ as.numeric(soil_depths_max)),
      easy_review             = factor(easy_review, answer_options$easy_to_review)
    )
  # quid formatting of multiple-choice questions?
  # TF_PTF_accessible
  # countries_samples, nuts1_samples, nuts2_samples, nuts3_samples
  # wrb_soiltype, land_cover, climate, elevation, sample_disturbance
  # => let's see when the answers come in
  
  return(data_content)
}
