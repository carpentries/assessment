library(rmarkdown)


## Commands to build the PDF and HTML files for the 2018-07 short-term survey

rmarkdown::render("reports-src/2018-07-learners-pre-post-surveys.Rmd",
                  output_format = "html_document",
                  output_file="../reports/2018-07-learners-pre-post-surveys.html")

rmarkdown::render("reports-src/2018-07-learners-pre-post-surveys.Rmd",
                  output_format = "pdf_document",
                  output_file = "../reports/2018-07-learners-pre-post-surveys.pdf")
