Analysis of the Carpentries' Long-Term Feedback Survey
================
September 2017

Introduction
============

Software Carpentry is a worldwide volunteer organization whose mission is to make scientists more productive, and their findings more reliable, by teaching them foundational computing skills. Established in 1998, it runs short, intensive workshops that cover task automation using the Unix shell, structured programming in Python and R, and version control using tools such as Git. Its sibling organization, Data Carpentry, teaches foundational data science skills. To date, the majority of Software and Data Carpentry workshops have been run in the United States, Canada and the UK. However, there is growing interest elsewhere, and there are active ‘Carpentries’ communities in Australia, New Zealand, South Africa, the Netherlands, Norway and in other countries in Africa and in Central and South America.

While most workshops are favorably assessed by learners at the time of delivery, no systematic, long-term follow-up study has previously been done on the efficacy of the training delivered, nor of the short or longer term impact that such training might have had on learners’ work practices, further skills acquisition, or subsequent career paths. There has also been no useful demographic profiling of learners.

Why should that matter?

We are outcome-driven organizations interested in continually improving the workshop experience for both our learners and our instructors. Additionally, we are largely volunteers. In order to continue our valuable work of teaching skills to researchers, we need supportive funding either from grant-making bodies or from member institutions, or - ideally - from both. Our case for funding is strengthened if we can provide impartial evidence that proves our workshops have the outcomes we claim. While it is wonderful to have amassed what must now amount to container-sized loads of positive 'sticky note' workshop feedback over the years, funders generally require more solid evidence of achievement before they are willing to cut a check. Establishing value is not just important for funding though: it is important for our growing community of trainers, instructors, lesson maintainers and helpers, all of whom volunteer their time because they believe in the importance of what we do. We owe it to them to show that their time is not wasted - that we are genuinely furthering the cause of efficiently organised, reproducible science. And, lastly, we need to demonstrate to our learners that precious time carved out to master computational and data science skills will pay off many times over in time saved further down the track.

Our post-workshop survey [results](https://carpentries.github.io/assessment-projects/data-carpentry-projects/postworkshop_analysis.html) tell us that 85% of our respondents are either enthusiastically or very involved in our workshops. Nearly 60% learn a great deal of practical knowledge, and 68% agree that they can immediately apply what they learned at the workshop. Our interest is in establishing, long-term, what impact workshops are having on learners’ confidence in the skills they were taught.

Therefore, through the generosity of the Moore Data Driven Discovery Initiative, assessment work has been undertaken across both Carpentries to help build an evidence base to complement the large body of existing anecdotal evidence that Carpentry-style training is both useful and effective in improving researchers’ work practices.

To gather the required evidence, Data and Software Carpentry launched a [long-term assessment survey](https://github.com/carpentries/assessment-projects/blob/master/joint-carpentry-projects/long-term-survey/long_term_survey.pdf) in March 2017. We first engaged in a community consultation to determine how best to design and word this survey. The responses from that consultation then guided the development of our long-term assessment strategy. You can read more about the consultation process in this [blog post](http://www.datacarpentry.org/blog/long-term-assessment-strategy/). The main goal of the resulting survey was to ask our learners to describe concrete changes they had implemented to their research practices as a result of completing a Carpentries workshop. We also asked whether they now had greater confidence in the tools they had been taught, and whether they had progressed in their careers as a result. The inclusion of multiple choice questions around programming in R or Python helped make the evidence of training efficacy more concrete, comparable and measurable, taking it out of the realm of ‘opinion’ or ‘feeling’, which, while interesting, is not as robust or reliable a marker of success as demonstrable evidence. For instance, ‘I can write a FOR loop to rename and move a batch of files’ is a much more reliable metric of achievement than ‘I use the shell’.

All of the data collected in this survey was self-reported. It should be noted that there are disadvantages to self-reported surveys. For one, respondents may exaggerate their achievements. Additionally, a respondent’s state of mind while taking the survey may affect her/his answers. Survey results can potentially be biased because those feeling most positive are also those more likely to respond, while learners whose experience was less positive – or even negative - may not bother to answer. To account for this, we compared the results of the long-term survey with that of Data Carpentry’s [post-workshop survey results](https://carpentries.github.io/assessment-projects/data-carpentry-projects/postworkshop_analysis.html) and Software Carpentry's [post-workshop survey results](https://carpentries.github.io/assessment-projects/software-carpentry-projects/analysis-postworkshop.html). We found consistent patterns of increased confidence and self-efficacy in our learners.

A [PDF](https://github.com/carpentries/assessment-projects/blob/master/joint-carpentry-projects/long-term-survey/long_term_survey.pdf) of the survey questions and the data used in this analysis are located in the [join-carpentry-projects](https://github.com/carpentries/assessment-projects) folder on GitHub. We have already received several pull requests from community members interested in this data. Feel free to use the data and [tell us](mailto:%20kariljordan@carpentries.org) about your findings.

This analysis includes 476 observations. Not all respondents answered every one of the 26 questions.

Highlights
==========

The long-term survey assessed confidence, motivation, and other outcomes **more than six months** after respondents attended a Carpentry workshop. Provided below are a few highlights from the data.

-   77% of our respondents reported being more confident in the tools that were covered during their Carpentry workshop compared to before the workshop.
-   86% of our respondents were motivated to seek more knowledge about the tools they learned in their Carpentry workshop.
-   54% of our respondents have made their analyses more reproducible as a result of completing a Carpentry workshop.
-   70% of our respondents have improved their coding practices as a result of participating in a Carpentry workshop.
-   65% of our respondents have gained confidence in working with data as a result of completing the workshop.
-   74% of our respondents have recommended our workshops to a friend or colleague.

Respondent Demographics
=======================

Carpentry learners represent a wide range of disciplines ranging from the sciences to engineering. Respondents were asked to indicate their field of research, work, or study by checking all that apply from a list of various disciplines. A breakdown of their responses is provided in the table below. Many of the respondents work in Life Sciences.

| Field                                  |    n|     %|
|:---------------------------------------|----:|-----:|
| Life Sciences                          |  166|  26.7|
| Biomedical/Health Sciences             |   95|  15.3|
| Agricultural or Environmental Sciences |   74|  11.9|
| Physical Sciences                      |   57|   9.2|
| Earth Sciences                         |   48|   7.7|
| Engineering                            |   41|   6.6|
| Mathematics or Statistics              |   41|   6.6|
| Computer Science                       |   38|   6.1|
| Social Sciences                        |   24|   3.9|
| Library Sciences                       |   20|   3.2|
| Humanities                             |   12|   1.9|
| Business                               |    6|   1.0|

![](report_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-5-1.png)

Carpentries workshops are open to individuals from all backgrounds and fields. Attendees vary from students (undergraduate and graduate) and faculty to staff and persons working in industry. 35% of our respondents were graduate students.

Provided is a breakdown of our respondents by the country in which they attended a Carpentries workshop.

![](report_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-7-1.png)

A large portion of Carpentry learners responding to the survey attended a workshop in the United States (48.5%), followed by Canada (12.2%) the UK (7.8%), and Australia (4.8%).

The Carpentries constantly strive to improve our workshop content and operations, which means a workshop run today might be different in some ways from a workshop run six months ago or run last year. If we know how many workshops respondents attended, and how long it has been since they completed that workshop or workshops, we can take those changes into account when we assess learner responses. Locating workshops temporally allows us to account for spikes in data trends that may be a result of changes in our workshop operations.

74% of respondents participated in a Carpentry workshop more than one year ago, and 84% of respondents have attended only one Carpentry workshop.

The response rate from learners who attended a workshop more than a year ago speaks to their level of involvement with the Carpentries. 120 of the survey respondents are subscribed to the Carpentries newsletter, indicating their ongoing interest in our work. In survey research, it can be difficult to collect responses from participants a whole year after their involvement in an event. It is great to see that learners feel positively enough about their experience to, firstly, be receptive to our email communication and, secondly, to have taken the time to complete the survey in full. As mentioned in the introduction, this could be a potential disadvantage to self-reported data, as those who may have negative experiences may not have completed the survey.

![](report_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-12-1.png) ![](report_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-13-1.png)

### Workshop Content

Data Carpentry's [lessons](http://www.datacarpentry.org/lessons/) include data organization in spreadsheets, data cleaning with OpenRefine, data management with SQL, and data analysis and visualization in R and Python.

Software Carpentry's [lessons](https://software-carpentry.org) include the Unix Shell, version control with Git and Mercurial, programming with Python, R, and MATLAB, databases with SQL, and Automation and Make. Provided below is a breakdown of the tools respondents identified as being taught in the workshop they attended.

A large majority of respondents learned Git (n = 362), Python (n = 289), and the Unix Shell (n = 274). On the low end were spreadsheets (n = 20), cloud computing (n = 11), MATLAB (n = 5), and Mercurial (n = 3). The fact that OpenRefine, spreadsheets, and cloud computing were on the low end is an indicator that the majority of our respondents attended a Software Carpentry workshop. This is most likely because Data Carpentry is a newer organization, starting in 2014, so there have been fewer workshops held.

| Frequency of Tools Covered |    n|     %|
|:---------------------------|----:|-----:|
| Git Python Unix Shell      |   92|  19.3|
| Git Python                 |   41|   8.6|
| Git Python SQL Unix Shell  |   39|   8.2|
| Git R Unix Shell           |   32|   6.7|
| Git R                      |   25|   5.3|
| Git Unix Shell             |   20|   4.2|
| Git Python R Unix Shell    |   18|   3.8|
| Git Python SQL             |   16|   3.4|
| R                          |   15|   3.2|
| Python                     |   12|   2.5|

In examining which combinations of tools stood out in the data, we can see from the matrix below that Git was frequently taught alongside Python, R, and/or the Unix Shell. Additionally, SQL was often taught with Git and/or the Unix Shell. OpenRefine, Spreadsheets, and Cloud Computing were on the low end, a clear indicator that the majority of survey respondents attended a Software Carpentry workshop, rather than a Data Carpentry workshop.

<table>
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="4%" />
<col width="7%" />
<col width="9%" />
<col width="10%" />
<col width="7%" />
<col width="4%" />
<col width="12%" />
<col width="4%" />
<col width="10%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"></th>
<th align="right">Cloud Computing</th>
<th align="right">Git</th>
<th align="right">MATLAB</th>
<th align="right">Mercurial</th>
<th align="right">OpenRefine</th>
<th align="right">Python</th>
<th align="right">R</th>
<th align="right">Spreadsheets</th>
<th align="right">SQL</th>
<th align="right">Unix Shell</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Cloud Computing</td>
<td align="right">11</td>
<td align="right">9</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">2</td>
<td align="right">6</td>
<td align="right">6</td>
<td align="right">2</td>
<td align="right">2</td>
<td align="right">7</td>
</tr>
<tr class="even">
<td align="left">Git</td>
<td align="right">9</td>
<td align="right">362</td>
<td align="right">4</td>
<td align="right">2</td>
<td align="right">13</td>
<td align="right">247</td>
<td align="right">132</td>
<td align="right">8</td>
<td align="right">110</td>
<td align="right">244</td>
</tr>
<tr class="odd">
<td align="left">MATLAB</td>
<td align="right">0</td>
<td align="right">4</td>
<td align="right">5</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">4</td>
<td align="right">2</td>
<td align="right">0</td>
<td align="right">3</td>
<td align="right">3</td>
</tr>
<tr class="even">
<td align="left">Mercurial</td>
<td align="right">0</td>
<td align="right">2</td>
<td align="right">0</td>
<td align="right">3</td>
<td align="right">0</td>
<td align="right">3</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">1</td>
<td align="right">3</td>
</tr>
<tr class="odd">
<td align="left">OpenRefine</td>
<td align="right">2</td>
<td align="right">13</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">28</td>
<td align="right">12</td>
<td align="right">23</td>
<td align="right">13</td>
<td align="right">19</td>
<td align="right">9</td>
</tr>
<tr class="even">
<td align="left">Python</td>
<td align="right">6</td>
<td align="right">247</td>
<td align="right">4</td>
<td align="right">3</td>
<td align="right">12</td>
<td align="right">289</td>
<td align="right">63</td>
<td align="right">5</td>
<td align="right">89</td>
<td align="right">193</td>
</tr>
<tr class="odd">
<td align="left">R</td>
<td align="right">6</td>
<td align="right">132</td>
<td align="right">2</td>
<td align="right">0</td>
<td align="right">23</td>
<td align="right">63</td>
<td align="right">186</td>
<td align="right">19</td>
<td align="right">64</td>
<td align="right">96</td>
</tr>
<tr class="even">
<td align="left">Spreadsheets</td>
<td align="right">2</td>
<td align="right">8</td>
<td align="right">0</td>
<td align="right">0</td>
<td align="right">13</td>
<td align="right">5</td>
<td align="right">19</td>
<td align="right">20</td>
<td align="right">16</td>
<td align="right">10</td>
</tr>
<tr class="odd">
<td align="left">SQL</td>
<td align="right">2</td>
<td align="right">110</td>
<td align="right">3</td>
<td align="right">1</td>
<td align="right">19</td>
<td align="right">89</td>
<td align="right">64</td>
<td align="right">16</td>
<td align="right">134</td>
<td align="right">81</td>
</tr>
<tr class="even">
<td align="left">Unix Shell</td>
<td align="right">7</td>
<td align="right">244</td>
<td align="right">3</td>
<td align="right">3</td>
<td align="right">9</td>
<td align="right">193</td>
<td align="right">96</td>
<td align="right">10</td>
<td align="right">81</td>
<td align="right">274</td>
</tr>
</tbody>
</table>

### Programming Usage Pre- and Post Workshop

Understanding respondents’ programming usage both before and after attending a Carpentries workshop was one goal of this assessment study. Our hope is that the workshop learners attended favorably influenced their use of the programming tools they learned.

17% of the learners who responded to our survey had not been using the tools covered in their Carpentries workshop before they attended the workshop. This decreased to 5% post-workshop.

The plot below is a comparison of respondents' usage of the tools covered in their workshop both pre- and post-workshop.

![](report_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-22-1.png)

The most compelling (and pleasing) change in responses was a decline in the percentage of respondents who 'have not been using these tools' (-11.1%), and an increase in the percentage of those who now use the tools on a daily basis (14.5%) at least six months after they attended a Carpentry workshop.

![](report_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-23-1.png)

A chi-square test indicates that the use of programming significantly increases post-workshop. The chi-squared standardized residuals for the post-workshop values show that significantly more respondents program daily six months (or more) after the workshop than would have been expected had the workshop had no effect on their practice. Similarly, significantly fewer respondents program less than once per year six months (or more) after the workshop.

Workshop Impact
===============

To help us measure the impact that completing a Carpentries’ workshop may have had for learners, survey respondents were asked to rate their level of agreement (1-Strongly disagree to 5-Strongly agree) with the following statements:

-   I have used skills I learned at the workshop to advance my career.
-   I have been motivated to seek more knowledge about the tools I learned at the workshop.
-   I have made my analyses more reproducible as a result of completing the workshop.
-   I have received professional recognition for my work as a result of using the tools I learned at the workshop.
-   I have improved my coding practices as a result of completing the workshop.
-   My research productivity has improved as a result of completing the workshop.
-   I have gained confidence in working with data as a result of completing the workshop.

Strategies to make analyses more reproducible and improving coding practices include, but are not limited to, keeping raw data raw, sharing source code openly, and using scripts.

The following plot is an analysis of learner responses to the statements above. We see an overwhelmingly positive indication that, after taking the workshop, respondents feel motivated to seek more knowledge and have gained confidence in working with data. As this survey was administered to learners who had taken a workshop at least six months ago, this feeling of confidence has obviously persisted. This is quite impactful, as both the [Data Carpentry](https://carpentries.github.io/assessment-projects//data-carpentry-projects/postworkshop_analysis.html) and [Software Carpentry](https://carpentries.github.io/assessment-projects/software-carpentry-projects/analysis-postworkshop.html) post workshop survey results show learners having self-reported improved understanding of how to import and work with data.

Additionally, more than 80% of respondents agree or strongly agree that they have improved their coding practices, made their analyses reproducible, improved their research productivity. They also believe the skills they learned helped them advance their career. Forty percent of our respondents have received professional recognition as a result of using the tools they learned in a Carpentries workshop.

![](report_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-24-1.png)

### Behaviors Respondents Adopted

We asked respondents to identify the behaviors they adopted as a result of completing a Carpentries workshop. We are happy to report that more than half the respondents who answered this question (n= 361) have improved their data management and project organization practices, have used programming languages for automation, and have used version control to manage code. Additionally, respondents are **more confident** now in using the tools than before they completed the Carpentries workshop.

<table>
<colgroup>
<col width="89%" />
<col width="4%" />
<col width="5%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Behaviors</th>
<th align="right">n</th>
<th align="right">%</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Using programming languages like R or Python, or the command line to automate repetitive tasks.</td>
<td align="right">260</td>
<td align="right">19.2</td>
</tr>
<tr class="even">
<td align="left">Improving data management and project organization.</td>
<td align="right">198</td>
<td align="right">14.6</td>
</tr>
<tr class="odd">
<td align="left">Using version control to manage code.</td>
<td align="right">185</td>
<td align="right">13.6</td>
</tr>
<tr class="even">
<td align="left">Reusing code.</td>
<td align="right">169</td>
<td align="right">12.5</td>
</tr>
<tr class="odd">
<td align="left">Sharing code or data publicly on places like GitHub or FigShare.</td>
<td align="right">122</td>
<td align="right">9.0</td>
</tr>
<tr class="even">
<td align="left">Using databases, scripts and queries to manage large data sets.</td>
<td align="right">119</td>
<td align="right">8.8</td>
</tr>
<tr class="odd">
<td align="left">Using version control to collaborate online (in public or private repositories).</td>
<td align="right">119</td>
<td align="right">8.8</td>
</tr>
<tr class="even">
<td align="left">Transforming step-by-step workflows into scripts or functions.</td>
<td align="right">111</td>
<td align="right">8.2</td>
</tr>
<tr class="odd">
<td align="left">Developing a data management and analysis plan.</td>
<td align="right">74</td>
<td align="right">5.5</td>
</tr>
</tbody>
</table>

The matrix below shows a count of the highest combinations of behaviors adopted. Note that the 102 respondents who reported improving their data management and project organization also now use version control to manage code.

|                                                                                                 |  Developing a data management and analysis plan.|  Improving data management and project organization.|  Reusing code.|  Sharing code or data publicly on places like GitHub or FigShare.|  Transforming step-by-step workflows into scripts or functions.|  Using databases, scripts and queries to manage large data sets.|  Using programming languages like R or Python, or the command line to automate repetitive tasks.|  Using version control to collaborate online (in public or private repositories).|  Using version control to manage code.|
|-------------------------------------------------------------------------------------------------|------------------------------------------------:|----------------------------------------------------:|--------------:|-----------------------------------------------------------------:|---------------------------------------------------------------:|----------------------------------------------------------------:|------------------------------------------------------------------------------------------------:|---------------------------------------------------------------------------------:|--------------------------------------:|
| Developing a data management and analysis plan.                                                 |                                               74|                                                   63|             48|                                                                32|                                                              33|                                                               38|                                                                                               47|                                                                                28|                                     41|
| Improving data management and project organization.                                             |                                               63|                                                  198|             98|                                                                70|                                                              70|                                                               71|                                                                                              122|                                                                                71|                                    102|
| Reusing code.                                                                                   |                                               48|                                                   98|            169|                                                                55|                                                              76|                                                               69|                                                                                              134|                                                                                57|                                     88|
| Sharing code or data publicly on places like GitHub or FigShare.                                |                                               32|                                                   70|             55|                                                               122|                                                              45|                                                               36|                                                                                               86|                                                                                75|                                     92|
| Transforming step-by-step workflows into scripts or functions.                                  |                                               33|                                                   70|             76|                                                                45|                                                             111|                                                               59|                                                                                               89|                                                                                51|                                     62|
| Using databases, scripts and queries to manage large data sets.                                 |                                               38|                                                   71|             69|                                                                36|                                                              59|                                                              119|                                                                                               87|                                                                                35|                                     53|
| Using programming languages like R or Python, or the command line to automate repetitive tasks. |                                               47|                                                  122|            134|                                                                86|                                                              89|                                                               87|                                                                                              260|                                                                                89|                                    129|
| Using version control to collaborate online (in public or private repositories).                |                                               28|                                                   71|             57|                                                                75|                                                              51|                                                               35|                                                                                               89|                                                                               119|                                     99|
| Using version control to manage code.                                                           |                                               41|                                                  102|             88|                                                                92|                                                              62|                                                               53|                                                                                              129|                                                                                99|                                    185|

![](report_files/figure-markdown_github-ascii_identifiers/heatmap-1.png)

### Change in Confidence

Our goal is for learners to leave a workshop with increased confidence about using the tools they were taught. More than 75% of the respondents are now more confident in using the tools they learned than before attending the workshop. ![](report_files/figure-markdown_github-ascii_identifiers/unnamed-chunk-28-1.png)

### Usage of Tools for Research and/or Work

We identified specific outcomes directly related to research and/or work, and asked learners if they had achieved these outcomes post-workshop. Respondents reported that the tools they learned improved their overall efficiency, as well as their ability to manage and analyze data.

| How Tools Covered Have Helped                        |    n|     %|
|:-----------------------------------------------------|----:|-----:|
| They are improving my overall efficiency.            |  245|  32.5|
| They are improving my ability to analyze data.       |  217|  28.8|
| They are improving my ability to manage data.        |  203|  26.9|
| I am not using the tools I learned.                  |   61|   8.1|
| The tools I learned have not helped me with my work. |   28|   3.7|

Only 28 respondents said the tools they learned have not helped them, and 61 respondents have not been using the tools that were covered in their workshop.

### Contributions to Academic Writing

Another possible outcome of attending a Carpentries workshop is in the use of tools learned to contribute to academic writing (i.e. a grant proposal, journal article).

| Contributed-To-Writing |    n|     %|
|:-----------------------|----:|-----:|
| No.                    |  193|  44.5|
| Not sure.              |  123|  28.3|
| Yes.                   |  118|  27.2|

Only 27% of our respondents said that the tools they learned contributed to their academic writing. This is an opportunity for us to explore resources we can offer the community to help use the tools for academic writing purposes.

### Continuous Learning

A key finding is that learners continue their learning after completing a workshop. This can take many forms, including participating in short courses (in-person and online) and using self-guided material. We asked respondents to tell us which learning activities (for data management and analysis) they have participated in since completing a Carpentries workshop. The majority of respondents have used non-Carpentries, self-guided material, though 68 responded having used Carpentries' self-guided material. Additionally, greater participation in meetups and in-person short courses has been reported by respondents.

| Continuous Learning                         |    n|
|:--------------------------------------------|----:|
| Used non-Carpentry self-guided material.    |  127|
| Used self-guided Carpentry lesson material. |   68|
| Participated in an in-person short course.  |   59|
| Participated in an online short course.     |   45|
| Participated in a Meetup.                   |   35|
| Participated in a semester long course.     |   24|

The matrix below provides a breakdown of the combination of continuous learning activities respondents participated in. For example, 35 respondents have used both Carpentry and non-Carpentry self-guided material since attending a workshop.

|                                             |  Participated in a Meetup.|  Participated in a semester long course.|  Participated in an in-person short course.|  Participated in an online short course.|  Used non-Carpentry self-guided material.|  Used self-guided Carpentry lesson material.|
|---------------------------------------------|--------------------------:|----------------------------------------:|-------------------------------------------:|----------------------------------------:|-----------------------------------------:|--------------------------------------------:|
| Participated in a Meetup.                   |                         35|                                        8|                                          12|                                       16|                                        17|                                            9|
| Participated in a semester long course.     |                          8|                                       24|                                           8|                                        8|                                        12|                                            3|
| Participated in an in-person short course.  |                         12|                                        8|                                          59|                                       15|                                        17|                                           12|
| Participated in an online short course.     |                         16|                                        8|                                          15|                                       45|                                        25|                                            9|
| Used non-Carpentry self-guided material.    |                         17|                                       12|                                          17|                                       25|                                       127|                                           35|
| Used self-guided Carpentry lesson material. |                          9|                                        3|                                          12|                                        9|                                        35|                                           68|

Involvement in the Carpentries
------------------------------

Learners often become actively involved with Software and/or Data Carpentry after completing a workshop. This involvement can take many forms - joining a mentoring group, becoming a workshop helper, or even becoming an instructor. The table provided below shows how respondents have involved themselves with the Carpentries since completing a workshop. Respondents were asked to check all that apply.

| Involvement Post-Workshop             |    n|
|:--------------------------------------|----:|
| Subscribed to the newsletter.         |  120|
| Became a workshop helper.             |   31|
| Became a Carpentry instructor.        |   26|
| Attended at least one community call. |   18|
| Contributed to a Carpentry lesson.    |   18|
| Joined a mentoring group.             |   12|
| Participated in a Twitter chat.       |   11|
| Joined a committee.                   |    6|

The matrix below displays frequent combinations of post-workshop involvement. For example, 16 of the respondents who became Carpentry instructors have attended at least one community call.

|                                       |  Attended at least one community call.|  Became a Carpentry instructor.|  Became a workshop helper.|  Contributed to a Carpentry lesson.|  Joined a committee.|  Joined a mentoring group.|  Participated in a Twitter chat.|  Subscribed to the newsletter.|
|---------------------------------------|--------------------------------------:|-------------------------------:|--------------------------:|-----------------------------------:|--------------------:|--------------------------:|--------------------------------:|------------------------------:|
| Attended at least one community call. |                                     18|                              16|                          9|                                  12|                    2|                          6|                                4|                             14|
| Became a Carpentry instructor.        |                                     16|                              26|                         15|                                  17|                    3|                          9|                                4|                             17|
| Became a workshop helper.             |                                      9|                              15|                         31|                                  10|                    1|                          5|                                2|                             17|
| Contributed to a Carpentry lesson.    |                                     12|                              17|                         10|                                  18|                    2|                          7|                                4|                             12|
| Joined a committee.                   |                                      2|                               3|                          1|                                   2|                    6|                          3|                                1|                              2|
| Joined a mentoring group.             |                                      6|                               9|                          5|                                   7|                    3|                         12|                                2|                              8|
| Participated in a Twitter chat.       |                                      4|                               4|                          2|                                   4|                    1|                          2|                               11|                              4|
| Subscribed to the newsletter.         |                                     14|                              17|                         17|                                  12|                    2|                          8|                                4|                            120|

Growth Opportunities
====================

We are very excited to know that our workshops are having an impact on learners six months to a year after their attendance. Though the results of this survey are compelling, we do recognise issues for improvement. For example, 48.5% of respondents completed a workshop in the United States. We are continually discussing ways to broaden participation of our workshops in communities outside of the U.S.

We also realize there are some lessons that are not being taught as frequently as others, namely, the [Shell lesson](http://swcarpentry.github.io/shell-novice/) and the [SQL lesson](http://www.datacarpentry.org/sql-ecology-lesson/). We would like to understand why, and what we can do as a community to see an increase in this lesson being taught.

Lastly, 39% of the respondents indicated feeling **neutral** about receiving professional recognition as a result of participating in a Carpentries workshop, and 36% either disagreed or strongly disagreed that they had received any professional recognition. We would like to explore community development opportunities that will benefit learners’ personal as well as professional endeavours, so that time spent acquiring important skills for research is adequately recognised and possibly even rewarded.

Summary
=======

When our learners have successful experiences in our workshops, they are quick to share this positive experience with others. We asked respondents if they had already recommended our workshop, and 74% said yes!

This initial analysis of how Carpentries workshops have impacted learners long-term has been extremely insightful. In general, our workshops are helping learners improve their efficiency with managing and analyzing data. Learners are taking advantage of online resources to improve their skills, and many see value in becoming involved longer term with our community.

We will revisit this data when we compare the responses of learners who took a workshop more than a year ago with those who have taken a workshop less than six months ago and from six months to one year ago. Additionally, we will continue to use this survey every six months to collect data from new learners so we can monitor their progress, and add to our growing evidence base on assessment.
