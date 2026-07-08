# SoilHarmony: literature review TF & PTF :book:

As part of the [Soilharmony project](https://doi.org/10.3030/101296615), this repository maintains the prelimiaary results of a literature study on availability
of research about (pedo) transfer functions. The study focusses on availability of data, behind any published articles and how this data is organised.

## Workflow

- Literature search is done via ... ???? (optionally also via R scripts, see suggestion by Hans).
- PDF's of relevant literature can be saved on the [SoilHarmony sharepoint](https://erdyn.sharepoint.com/sites/GAPSOILHARMONY/?CID=98a23ad8-47a8-40d0-b418-0324230c8c4b) in the folder of WP1. Please use the following rule when naming the PDF: author_year eg.: `Taubner_2009.pdf`, `Szabo_2024.pdf`.
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

- The questionnaire is a simple googlesheet hosted in the Google Drive of EVINBO (partner in the SoilHarmony consortium). You can access it [via this link](https://docs.google.com/spreadsheets/d/13Qcj2Eg_oI9aUy7vL_34XdF-oucMppBdhk2w70AQMHk/edit?usp=sharing). **Currently all people with the link have read and write access, so please don't share the link outside the SoilHarmony consortium!** Once we have an agreed-upon version of the questionnaire, we will remove the mock trials and ask the ICT service of EVINBO to give access to a selected list of people within the SoilHarmony consortium who will be involved in the review.
- Only EVINBO people have edit rights on the questions and answer options. All other users have edit rights to add new entries in the questionnaire. For suggestions, bugs, and other comments on the questionnaire: please file an issue in this github repo [here](https://github.com/soilharmony/wp1-literature-review/issues).
- The googlesheet has data validation rules per question type to constrain answer possibilities.
- All data providers need to work together in this googlesheet. Only continue working in the rows that you started, please don't alter other people's work.
- You can always continue at a later time, your answers will be saved.
- Every row (entry) in the questionnaire is meant to represent a single TF or PTF. One publication may contain several TF or PTF, for example:
  - several TFs or PTFs for different soil descriptors
  - several TFs that map different non-reference methods to the same reference method
  - several TFs for the same soil descriptor in different domains of applicability (eg. stratified TFs by land-use, soil-depth, WRB class, ...)
  - several PTFs using different input variables
  - several candidate TFs or PTFs for the same data (eg. linear regression & machine-learning models)
  - ... combinations of the above
  - The format of the questionnaire allows only to report on 1 TF or PTF at a time. It may therefore be necessary to repeat the questionnaire multiple times for the same publication. Do not include review papers in this questionnaire; use review papers only to find original publications that your literature search missed.
- When you want to add a new entry (new publication or a new TF or PTF from a publication you did before), go to the bottom and say "insert 1 row to the bottom" (like the image below). This will automatically copy the data validation rules to the new row. First, give your new entry a unique identifier. Please use the following format: the name of the corresponding uploaded PDF followed by a sequential entry number, i.e. author_year_entry_number, e.g.: `Taubner_2009_001`, `Szabo_2024_001`. This ensures that other people can identify which entry is yours. 
<img width="992" height="469" alt="image" src="https://github.com/user-attachments/assets/40f115eb-5be2-4eee-b984-fb02b141ebd9" />

- There are several spreadsheets in the googlesheet:
  - **Step 1**: sheetname = `generalQ`. List of general questions about literature, data provider and soil samples used.
  - **Step 2**: .... to do (1 sheet per soildescriptor?) => the 1st question on each soildescriptor-specific sheet must be a question to select the unique identifier defined in `generalQ` => to prevent we ask again the same questions as in the general sheet
    - TF_pH: first attempt to a template for step 2: pH-specific questions + generic modeling questions

## Analysis of the data collected during literature review

The R & Quarto scripts in this repo can collect the information from the googlesheet and analyse them. Currently the `source` folder contains only a simple R function to import the spreadsheet information and a quarto script to demonstrate its use. We can continue from here onwards.

---

The project [Towards a harmonised pan-European monitoring of soil health descriptors](https://doi.org/10.3030/101296615), also known as `SOILHARMONY`, receives funding from the European Union’s HORIZON Innovation Actions 2022 under grant agreement No. 101296615.
