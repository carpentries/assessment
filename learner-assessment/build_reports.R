library(rmarkdown)


build_2020_longterm_report <- function() {
  rmarkdown::render("reports-src/2020-01-long-term-survey.Rmd",
    output_format = "html_document",
    output_file = "../reports/2020-01-long-term-report.html")

}

## Commands to build the PDF and HTML files for the 2018-07 short-term survey
build_2018_07_learner_report <- function() {
  rmarkdown::render("reports-src/2018-07-learners-pre-post-surveys.Rmd",
    output_format = "html_document",
    output_file="../reports/2018-07-learners-pre-post-surveys.html")

  rmarkdown::render("reports-src/2018-07-learners-pre-post-surveys.Rmd",
    output_format = "pdf_document",
    output_file = "../reports/2018-07-learners-pre-post-surveys.pdf")
}

## 2018-09 -- member reports
build_2018_09_member_reports <- function(outdir = "reports-members/2018-09/",
                                         member_data = "data/2018-08-member_organizations.csv",
                                           outfile_root = "2018-09-workshop-survey-members-") {

    ## create the directory for
    if (!dir.exists(outdir))
      dir.create(outdir, recursive = TRUE)

    ## Get the list of member organizations
    member_orgs <- readr::read_csv(member_data) %>%
      dplyr::distinct(fullname) %>%
      dplyr::pull(fullname)


    purrr::walk(member_orgs, function(memborg) {

      memborg_short <- abbreviate(memborg)
      outfile <- file.path("..", outdir, paste0(outfile_root, memborg_short))
      outfile_html <- paste0(outfile, ".html")
      outfile_pdf <- paste0(outfile, ".pdf")

      rmarkdown::render("reports-src/2018-09-workhop-survey-members.Rmd",
        output_format = "html_document",
                        output_file = outfile_html,
                        params = list(org = memborg))

      rmarkdown::render("reports-src/2018-09-workhop-survey-members.Rmd",
        output_format = "pdf_document",
                        output_file = outfile_pdf,
                        params = list(org = memborg))
    })

  }
