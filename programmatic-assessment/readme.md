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
* [attendance.csv](./workshops/attendance.csv): When available, attrition rates for workshops from number registered to number attended each day
* [badges\_by\_country\_by\_year.csv](./workshops/badges_by_country_by_year.csv):  Count of all badges awarded each year by country
* [badges\_by\_training\_event.csv](./workshops/badges_by_training_event.csv): List of all training events with number of participants and number getting badged
* [badges\_by\_year\_agg.csv](./workshops/badges_by_year_agg.csv): Count of all Trainer, Software Carpentry Instructor, Data Carpentry Instructor, and Maintainer badges awarded by year.  An individual can have multiple badges.
* [workshops.csv](./workshops/workshops.csv):  List of all lifetime Carpentries workshops. (Note `administrator_id` column does not have valid data.)


##### Jupyter Notebook files 
* [clean\_data\_analysis.ipynb](./workshops/clean_data_analysis.ipynb): Static graphs and charts of workshop data.
* [workshops\_interactive.ipynb](./workshops/workshops_interactive.ipynb): Interactive charts and graphs, allowing user to select chart views by year, Carpentry, etc.
