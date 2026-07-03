# SoilHarmony: literature review TF & PTF :book:

This github repo organizes the data collection for the literature review and subsequent data analysis. 


## Workflow

- Literature search is done via ... ???? (optionally also via R scripts, see suggestion by Hans).
- PDF's of relevant literature can be saved on the [SoilHarmony sharepoint](https://erdyn.sharepoint.com/sites/GAPSOILHARMONY/?CID=98a23ad8-47a8-40d0-b418-0324230c8c4b) in the folder of WP1. Please use the following rule when naming the PDF: UniquePDFid_author_year eg.: `HUROKO001_Szabo_2024.pdf`.
- The review of literature is designed as a two-step process:
  - **Step 1**: gathering general information from a paper or report on TF/PTF. The goal is to deliver the following:
    - Results for WP1:
        - *inventory of existing TF and PTF documented as MS7 at M9. The Milestone serves as a preliminary stocktaking (i.e. structured compilation of available data) without interpretation*
        - *D1.2 at M18 will provide a comprehensive analysis of the collected material. Beyond synthesis, this deliverable will focus on gaps identification and critical assessment*
    - Input needs of WP6:
        - *soil TF and PTF database with all project (collected and collated) data deposited in a persistent online repository (D6.1 at M54) and available to the Soil Health Portal*
  - **Step 2**: gathering detailed information for the preselection of TF/PTF. The goal is to deliver the following:
    - Results for WP5:
      - *report containing the list of preselected existing equivalent methods and TF/PTF, with recommendations on the domain of applicability and potential adjustments of TF/PTF (D5.2 at M24)* These selected TFs and PTFs + the new ones derived by WP2 will be validated from statistical point of view on WP4 samples.
- A questionnaire is designed to gather the relevant information from the literature. 

## Using the questionnaire

- The questionnaire is a simple googlesheet hosted in the Google Drive of EVINBO (partner in the SoilHarmony consortium). You can access it [via this link](https://docs.google.com/spreadsheets/d/13Qcj2Eg_oI9aUy7vL_34XdF-oucMppBdhk2w70AQMHk/edit?usp=sharing). **All people with the link have read and write access, so please don't share the link outside the SoilHarmony consortium!** Therefore this github repository is private and only accessible for members of the soilharmony github organization. 
- The googlesheet has data validation rules per question type to constrain answer possibilities.
- All reviewers need to work together in this googlesheet. Only continue working in the rows that you started, please don't alter other people's work.
- You can always continue at a later time, your answers will be saved.
- Every row (entry) in the questionnaire is meant to represent a single TF or PTF. One publication may contain several TF, for example:
  - several TFs for different soil descriptors
  - several TFs that map different non-reference methods to the same reference method
  - several TFs for the same soil descriptor in different domains of applicability (eg. stratified TFs by land-use, soil-depth, WRB class, ...)
  - several candidate TFs for the same data (eg. linear regression & machine-learning models)
  - ... combinations of the above
  - The format of the questionnaire allows only to report on 1 TF at a time. It may therefore be necessary to repeat the questionnaire multiple times for the same publication. Do not include review papers in this questionnaire; use review papers only to find original publications that your literature search missed.
- When you want to add a new entry (new publication or a new TF from a publication you did before), go to the bottom and say "insert 1 row to the bottom" (like the image below). This will automatically copy the data validation rules to the new row. First give your new entry a unique identifier so that other people know it is your entry. 
<img width="992" height="469" alt="image" src="https://github.com/user-attachments/assets/40f115eb-5be2-4eee-b984-fb02b141ebd9" />

- Spreadsheets in the googlesheet:
  - **Step 1**: sheetname = `generalQ`. List of questions about literature, data provider and soil samples used.
  - **Step 2**: .... to do (1 sheet per soildescriptor?) => the 1st question on each soildescriptor-specific sheet must be a question to select the unique identifier defined in `generalQ` => to prevent we ask again the same questions as in the general sheet

## Analysis of the data collected during literature review

The R & Quarto scripts in this repo can collect the information from the googlesheet and analyse them.
