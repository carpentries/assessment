library(rmarkdown)


## Commands to build the PDF and HTML files for the 2018-07 short-term survey

rmarkdown::render("reports-src/workshop_survey_report_2018-09-members.Rmd",
                  output_format = "html_document",
                  output_file="../reports/workshop_survey_report_2018-09-members.html")

rmarkdown::render("reports-src/workshop_survey_report_2018-09-members.Rmd",
                  output_format = "pdf_document",
                  output_file = "../reports/workshop_survey_report_2018-09-members.pdf")