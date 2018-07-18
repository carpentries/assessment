# About

**Assessing Workshop Outcomes for Learners**
 
Assessment plays a key role in ensuring the success, longevity, and evolution of the Carpentries workshops. The primary goal of our assessment efforts is to evaluate the impact we are having teaching data skills throughout our global community. Our assessment efforts are meant to guide the development, implementation, and instruction of our workshops. We are committed to providing directed feedback to our community regarding our assessment targets and using information collected from assessment to improve how we teach data skills and build learning communities.

Our assessment tools will cover content knowledge, self-efficacy, and metacognitive strategies. Additionally, evaluation will occur at the end of each workshop and 6 months after a workshop with data releases published bi-annually, and an annual review of our impact will be published on our [website](http://www.datacarpentry.org/assessment/).

We are committed to supporting our learners, accommodating their differences, and encouraging them to grow individually and become part of our community of practice. We also encourage them to understand, reflect upon, and monitor their own learning.

We assess our learners by measuring changes in their attitudes, motivation, and self-efficacy. Our pre-workshop survey includes questions about learners attitudes about the content covered in their workshop, and their objectives (i.e. what they hope to learn).

We also ask questions to measure learners' mindset (growth vs. fixed). Our objective is to measure their confidence in their ability to learn, not necessarily execute specific tasks.

Additionally, we measure learner’s perception of skill growth and whether or not they plan to recommend our workshops to colleagues.

This repository contains projects lead by Kari L. Jordan, Director of Assessment and Community Equity. The projects in this repo are open for comments/feedback and collaboration.

# Creating a new report

+ Create a new branch from this repository using master as the base:

```shell
git checkout -b 20XX-XX-report master
```

+ Add data files to the `data/` folder. Data files should start with the date
  they were created in the "YYYYMMDD_filename.csv" format.

+ Create new report in `report-src/` folder. Report name should start with year
  and month of anticipated publication (i.e., "YYYY-MM-name-of-report.Rmd").

+ To build the report, you will need to run the following command while your
  working directory is set to this folder (`assessment/learner-assessment`).
  Alternatively, you can edit the commands in `build_reports.R`.

```r
library(rmarkdown)
render("reports-src/YYYY-MM-name-of-report.Rmd",
       output_format = "html_document",
       output_file = "../reports/YYYY-MM-name-of-report.html")
```

+ Once the report is ready for publication:
  * edit `index.html` to add the report to the list of published reports
  * add the report to `README.md`
  * create a pull request to be merged into `master`, and make it available at
    <https://carpentries.github.io/assessment/reports/YYYY-MM-name-of-report.html>.

  

# Content

  + [archives]()
  + [code]()
  + [data]()
  + [documents]()
  + [figures]()


# Reports

  + __Short-Term Reports__
 + [2018-July](https://carpentries.github.io/assessment/learner-assessment/template_report_draft.html)
+ __Software Carpentry__ 
  + [2017-July](https://carpentries.github.io/assessment/learner-assessment/archives/2017/code/2017-July-post.html) Post-Workshop Survey Report  
+ __Data Carpentry__
  + [2018-January](https://carpentries.github.io/assessment/learner-assessment/archives/2018/code/2018-January-post.html) Post-Workshop Survey Report  
  + [2017-December](https://carpentries.github.io/assessment/learner-assessment/archives/2017/code/2017-December-post.html) Post-Workshop Survey Report  
  + [2017-September](https://carpentries.github.io/assessment/learner-assessment/archives/2017/code/2017-September-archived-analysis.html) Archived Pre and Post-Workshop Summary Plots.
  
+ __Carpentries Long-Term Survey__
  + [2018-July](https://carpentries.github.io/assessment/learner-assessment/code/2018_July_longterm_impact.html) Report
  + [2018-January](https://carpentries.github.io/assessment/learner-assessment/archives/2018/code/2018_January_long_term_report.html) Report
  + [2017-October](https://carpentries.github.io/assessment/learner-assessment/archives/2017/code/longtermreport_October2017.html) Report
  
  
