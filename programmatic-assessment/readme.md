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

* [all_workshops.csv](./workshops/data_files/all_workshops.csv): List of all lifetime Carpentries workshops through October 2018
* [amy_applications.csv](./workshops/data_files/amy_applications.csv): Anonymized data from The Carpentries [instructor training applications](https://amy.software-carpentry.org/forms/request_training/)
* [instructor_training_events.csv](./workshops/data_files/instructor_training_events.csv): List of all Carpentries instructor training events through October 2019
* [cumulative_instructors.csv](./workshops/data_files/cumulative_instructors.csv): Cumulative total of all certified instructors by date.
* [teaching_frequency.csv](./workshops/data_files/teaching_frequency.csv): Anonymized counts of number of workshops each instructor has taught.
* [trainers.csv](./workshops/data_files/trainers.csv): Anonymized list of award date and badge for each Trainer through October 2018.

##### Latest Jupyter Notebook files 
* [programmatic\_report\_20181031.ipynb](./workshops/jupyter_notebooks/programmatic_report_20181031.ipynb): Jupyter notebook of Programmatic Assessment report published December 2018

##### html and pdf output files
* [outputs](./workshops/outputs): html and pdf outputs of Programmatic Assessment reports published June, August, and December 2018. Note the source notebook and data for the August 2018 report contain confidential data and are kept in [this private repo](https://github.com/carpentries/private-data/tree/master/programmatic-assessment). 


##### Convert to pdf or html
Convert to pdf, hiding all code cells using this shell command:

```jupyter nbconvert --to pdf final_report_draft.ipynb --TemplateExporter.exclude_input=True --TemplateExporter.exclude_input_prompt=True --TemplateExporter.exclude_output_prompt=True --output outputs/sample_report```

jupyter nbconvert --to html sample_report.ipynb  --TemplateExporter.exclude_input=True --TemplateExporter.exclude_input_prompt=True --TemplateExporter.exclude_output_prompt=True --output sample_report

Replace `sample_report.ipynb` with other file names as appropriate.
Replace `--to pdf` with `to --html` to convert to html instead of pdf.
A file extension is not required for the output file name; nbconvert will add the .pdf or .html extension as appropriate.
See [nbconvert documentation](http://nbconvert.readthedocs.io/en/latest/config_options.html) for more options.

Rendered html pages can be viewed following the path within the github repo under the `carpentries.github.io` domain.  For example: https://carpentries.github.io/assessment/programmatic-assessment/workshops/outputs/programmatic_report_20181031.html.

### Instructor Training folder

This folder contains historic data from The Carpentries Instructor Training program. It is not currently being maintained or updated. Contact team@carpentries.org or leave an issue in this repo with questions.
