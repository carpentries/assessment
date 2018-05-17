Programmatic Assessment
=======================

This folder contains raw data and Jupyter notebooks used in Carpentries programmatic assessment.

#### To help us explore and analyze this data:

Clone this repo locally and install necessary modules from [../requirements.txt](https://github.com/carpentries/assessment/blob/master/requirements.txt) 

OR 

Visit this [Binder page]( http://mybinder.org/v2/gh/carpentries/assessment/master) for an online hosted environment.

#### What results are we looking to show?

Check out [this list](report_ideas.md) for some suggestions -- or add your own ideas to inspire others.


#### Workshops folder contents

##### Data files
* [attendance.csv](./workshops/data_files/attendance.csv): When available, attrition rates for workshops from number registered to number attended each day. This represents a small subset of total workshops.
* [badges\_by\_country\_by\_year.csv](./workshops/data_files/badges_by_country_by_year.csv):  Count of all badges awarded each year by country
* [badges\_by\_training\_event.csv](./workshops/data_files/badges_by_training_event.csv): List of all training events with number of participants and number getting badged
* [badges\_by\_year\_agg.csv](./workshops/data_files/badges_by_year_agg.csv): Count of all Trainer, Software Carpentry Instructor, Data Carpentry Instructor, and Maintainer badges awarded by year.  An individual can have multiple badges.
* [workshops.csv](./workshops/data_files/workshops.csv):  List of all lifetime Carpentries workshops.


##### Jupyter Notebook files 
* [final\_report\_draft.ipynb](./workshops/final_report_draft.ipynb): Static graphs and charts of workshop data. Draft content to be used in final report.


##### Convert to pdf or html
Convert to pdf, hiding all code cells using this shell command:

```jupyter nbconvert --to pdf test.ipynb --TemplateExporter.exclude_input=True --TemplateExporter.exclude_input_prompt=True --TemplateExporter.exclude_output_prompt=True```

Convert to html, hiding all code cells using this shell command:

```jupyter nbconvert --to html test.ipynb --TemplateExporter.exclude_input=True --TemplateExporter.exclude_input_prompt=True --TemplateExporter.exclude_output_prompt=True```
