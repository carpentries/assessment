Programmatic Assessment
=======================

### Workshops folder

This folder contains raw data and Jupyter notebooks used in Carpentries programmatic assessment.

#### To help us explore and analyze this data:

Clone this repo locally and install necessary modules from [../requirements.txt](https://github.com/carpentries/assessment/blob/master/requirements.txt) 

OR 

Visit this [Binder page]( http://mybinder.org/v2/gh/carpentries/assessment/master) for an online hosted environment.  Warning: Binder hosted projects are often slow to load. You may need to try a few times.

#### What results are we looking to show?

Check out [this list](report_ideas.md) for some suggestions -- or add your own ideas to inspire others.


#### Workshops folder contents

##### Data files
* [attendance.csv](./workshops/data_files/attendance.csv): When available, attrition rates for workshops from number registered to number attended each day. This represents a small subset of total workshops.
* [badges\_by\_country\_by\_year.csv](./workshops/data_files/badges_by_country_by_year.csv):  Count of all badges awarded each year by country
* [badges\_by\_training\_event.csv](./workshops/data_files/badges_by_training_event.csv): List of all training events with number of participants and number getting badged
* [badges\_by\_year\_agg.csv](./workshops/data_files/badges_by_year_agg.csv): Count of all Trainer, Software Carpentry Instructor, Data Carpentry Instructor, and Maintainer badges awarded by year.  An individual can have multiple badges.
* [days\_badge\_to\_teach.csv](./workshops/data_files/days_badge_to_teach.csv): Anonymized ist of days between badging and teaching for all instructors
* [num\_wkshps\_taught.csv](./workshops/data_files/num_wkshps_taught.csv): Anonymized list of all instructors and number of workshops taught
* [trainers.csv](./workshops/data_files/trainers.csv): List of all Trainers with badge date and country.
* [workshops.csv](./workshops/data_files/workshops.csv):  List of all lifetime Carpentries workshops.


##### Jupyter Notebook files 
* [final\_notebook\_report.ipynb](./workshops/final_notebook_report.ipynb): Static graphs and charts of workshop data. Final report in progress; noting gaps and areas to fill in.


##### Convert to pdf or html
Convert to pdf, hiding all code cells using this shell command:

```jupyter nbconvert --to pdf final_report_draft.ipynb --TemplateExporter.exclude_input=True --TemplateExporter.exclude_input_prompt=True --TemplateExporter.exclude_output_prompt=True --output outputs/sample_report```

Replace `final_report_draft.ipynb` with other file names as appropriate.
Replace `--to pdf` with `to --html` to convert to html instead of pdf.
A file extension is not required for the output file name; nbconvert will add the .pdf or .html extension as appropriate.
See [nbconvert documentation](http://nbconvert.readthedocs.io/en/latest/config_options.html) for more options.

Rendered html pages can be viewed following the path within the github repo under the `carpentries.github.io` domain.  For example: https://carpentries.github.io/assessment/programmatic-assessment/workshops/outputs/final_report.html.

### Instructor Training folder

This folder contains historic data from The Carpentries Instructor Training program. It is not currently being maintained or updated. Contact team@carpentries.org or leave an issue in this repo with questions.