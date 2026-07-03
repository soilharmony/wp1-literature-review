# SoilHarmony: literature review TF & PTF

This github repo organizes the data collection for the literature review and subsequent data analysis. 


## Workflow

- Literature search is done via ... ???? (optionally also via R scripts, see suggestion by Hans).
- PDF's of relevant literature can be saved on the [SoilHarmony sharepoint](https://erdyn.sharepoint.com/sites/GAPSOILHARMONY/?CID=98a23ad8-47a8-40d0-b418-0324230c8c4b) in the folder of WP1. Please use the following rule when naming the PDF: UniquePDFid_author_year eg.: `HUROKO001_Szabo_2024.pdf`.
- The questionnaire is a simple googlesheet hosted in the Google Drive of EVINBO (partner in the SoilHarmony consortium). You can access it [via this link](https://docs.google.com/spreadsheets/d/13Qcj2Eg_oI9aUy7vL_34XdF-oucMppBdhk2w70AQMHk/edit?usp=sharing). **All people with the link have read and write access, so please don't share the link outside the SoilHarmony consortium!** Therefore this github repository is private and only accessible for members of the soilharmony github organization.
- The review of literature is designed as a two-step process:
  - Step 1: gathering general information from a paper (sheet "generalQ"). The goal is to deliver the following:
    - Results for WP1:
        - *inventory of existing TF and PTF documented as MS7 at M9. The Milestone serves as a preliminary stocktaking (i.e. structured compilation of available data) without interpretation*
        - *D1.2 at M18 will provide a comprehensive analysis of the collected material. Beyond synthesis, this deliverable will focus on gaps identification and critical assessment*
    - Input needs of WP6:
        - *soil TF and PTF database with all project (collected and collated) data deposited in a persistent online repository (D6.1 at M54) and available to the Soil Health Portal*
  - Step 2: gathering detailed information from selected TF/PTF. Separate spreadsheets in the same googlesheet => we need a unique identifier to link with step 1
- The R & Quarto scripts in this repo can collect the information from the googlesheet and analyse them.

## Using the questionnaire

- The googlesheet has data validation rules per question type to constrain answer possibilities.
- All reviewers need to work together in this googlesheet. Only continue working in the rows that you started, please don't alter other people's work.
- You can always continue at a later time, your answers will be saved.
- Every row (entry) in the questionnaire is meant to represent a single TF or PTF
  - x
  - x .......
- When you want to add a new entry (new publication or a new TF from a publication you did before), select a row and right-click, then select "insert 1 row to the bottom" (like the image below). This will automatically copy the data validation rules to the new row. First give your new entry a unique identifier. 
<img width="400" height="200" alt="image" src="https://github.com/user-attachments/assets/a85acc25-489b-428b-8721-824ad76d7434" />
