#' ---
#' title: "Analysis of Data Carpentry Pre-Workshop Survey Data"
#' author: "Kari L. Jordan, PhD"
#' contributor(s): Ben Marwick
#' date: "March 1, 2017"
#' ---

#K# The following is an analysis of the pre-workshop survey data collected for Data Carpentry 
#K# workshops from March 2016 through February 2017

#K# Confirm working directory
getwd()

#K# Load CSV and assign to dataframe.
#K# data <- read.csv("public_data/dc_preworkshop_surveydata_2016March_2017Feb.csv", header = TRUE)


#B# change path because I put the data in the same folder as the script file, and I use RStudio -> Session -> 
#B# Set Working Directory -> To Source File Location, this is better for reproducibility.
#B# I pressed return after the ,  to make the line a bit shorter, and the indenting makes it easier to read
data <- read.csv("public_data/dc_preworkshop_surveydata_2016March_2017Feb.csv", 
                 header = TRUE)

#K# Install dplyr package
#B# only need to do this once on your computer, not every time you use dplyr
#B# install.packages('dplyr')

#K# Inspect the structure of dataframe and column headers. 
str(data)
head(data)

#K# This command will set levels for the variable 'Status' and specify the order of the variables
#B# The main problem here is that we don't have any object called "Status" for 
#B# the function factor() to operate on. We do have a dataframe called 'data',
#B# and that has a column called 'Status', so we should use that. We can 
#B# access that column with data$Status, and we can update that column by
#B# putting data$Status on the left hand side of the assignment operator (<-)
#B# I pressed return after each , to make the line a bit shorter, 
#B# and the indenting makes it easier to read.
#B# I put space around the = to make it more readable. 
data$Status <- factor(data$Status, 
                 levels=c("Undergraduate student", 
                                  "Graduate Student", 
                                  "Post-doc", 
                                  "Faculty", 
                                  "Industry",
                                  "Staff", 
                                  "Other (please specify)", 
                                  "NA"), 
                                  ordered = TRUE)

#K# This command will check the levels of the variable 'Status'
#B# again, we have no object 'Status' but we do have a column 'Status'
#B# in the data frame 'data', which we can access with data$Status
levels(data$Status)

#This command will create a bar chart for the variable 'Status'
#B# same problem as above...
plot(data$Status)

#K# Need to add title and labels.

#K# The bar plot is incorrect. Let's try to make a table.
#B# same problem as above...
#B# looks right to me!
table(data$Status)

#K# It's showing that there are 0 observations for each factor level. 
#K# I need to figure out what I'm doing wrong.

#K# This command will check the number of levels for the variable 'Status'
#B# same problem as above...
nlevels(data$Status)

#K# This command will install the package plyr
#B# install.packages('plyr')
#B# only need install.packages() once per computer
#K# This command will call the library for plyr so that I can use functions like count()
library(plyr)


#K# The frequency count only shows NA with 8 observations. I don't know why this is happening.
#B# it's better now :) I'm stopping here, because it looks like the lines below 
#B# were an attempt to get this plot that we saw above. 
# ------------------------------------------------------------------------

#This command will convert factors to a character vector
#B# as above...
#as.character(data$Status)
#This command will convert factors where the levels appear as numbers.
#Status <- factor(c(1,2,3,4,5,6,7,8))
#as.numeric(levels(data$Status))[data$Status]

#This command SHOULD plot the variable 'Status'
#statusplot <- factor(c("Undergraduate student", "Graduate Student", "Post-doc", 
#                       "Faculty", "Industry", "Staff", "Other (please specify)", "NA"))
#plot(statusplot)
#It still doesn't work!


#K# This is an attempt to create a plot of 'Status' without the NAs and with axis labels.
#K# These commands access the dataframe 'data', filter out the NAs and arrange them
#K# in descending order
library(ggplot2)
data_status_tally <- 
  data %>%
  group_by(Status) %>% 
  tally() %>% 
  filter(!is.na(Status)) %>% 
  arrange(desc(n))

#K# These commands create a plot of respondents' Status
ggplot(data_status_tally, 
       aes(reorder(Status, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Status") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

install.packages('likert')

#K# These commands create a plot of respondents' programming usage
data_programming_usage_tally <- 
  data %>%
  group_by(Programming.Usage) %>% 
  tally() %>% 
  filter(!is.na(Programming.Usage)) %>% 
  arrange(desc(n))

ggplot(data_programming_usage_tally, 
       aes(reorder(Programming.Usage, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Programming Usage") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Table of programming usage 
table(data$Programming.Usage)

#K# It looks like there are some NAs. Need to figure out how to filter them out.

#K# Plot of Data Management Strategy
data_data_management_strategy_tally <- 
  data %>%
  group_by(Data.Management.Strategy) %>% 
  tally() %>% 
  filter(!is.na(Data.Management.Strategy)) %>% 
  arrange(desc(n))

ggplot(data_data_management_strategy_tally, 
       aes(reorder(Data.Management.Strategy, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Data Management Strategy") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Plot of Data Analyiss Workflow
data_data_analysis_workflow_tally <- 
  data %>%
  group_by(Data.Analysis.Workflow) %>% 
  tally() %>% 
  filter(!is.na(Data.Analysis.Workflow)) %>% 
  arrange(desc(n))

ggplot(data_data_analysis_workflow_tally, 
       aes(reorder(Data.Analysis.Workflow, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Data Analysis Workflow") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Plot of Level of agreement question: Data organization is a fundamental 
#K  component of effective and reproducible research.
data_data_organization_tally <- 
  data %>%
  group_by(Data.Organization) %>% 
  tally() %>% 
  filter(!is.na(Data.Organization)) %>% 
  arrange(desc(n))

ggplot(data_data_organization_tally, 
       aes(reorder(Data.Organization, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Data Organization") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Plot of Level of Agreement: Using a scripting language like R or Python can 
#K# ultimately improve my analysis efficiency.
data_using_scripting_language_tally <- 
  data %>%
  group_by(Using.Scripting.Language) %>% 
  tally() %>% 
  filter(!is.na(Using.Scripting.Language)) %>% 
  arrange(desc(n))

ggplot(data_using_scripting_language_tally, 
       aes(reorder(Using.Scripting.Language, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Using Scripting Language") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Plot of Level of Agreement: Using R or Python makes 
#K# analyses easier to reproduce.
data_using_R_or_Python_tally <- 
  data %>%
  group_by(Using.R.or.Python) %>% 
  tally() %>% 
  filter(!is.na(Using.R.or.Python)) %>% 
  arrange(desc(n))

ggplot(data_using_R_or_Python_tally, 
       aes(reorder(Using.R.or.Python, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Using R or Python: Reproducibility") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Plot of Level of Agreement: A value of using SQL, R or Python 
#K# is that the underlying data cannot accidentally be changed.
data_value_of_SQL_or_Python_tally <- 
  data %>%
  group_by(Value.of.SQL.or.Python) %>% 
  tally() %>% 
  filter(!is.na(Value.of.SQL.or.Python)) %>% 
  arrange(desc(n))

ggplot(data_value_of_SQL_or_Python_tally, 
       aes(reorder(Value.of.SQL.or.Python, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("SQL or Python: Value/Data Can't Be Changed") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)
#K# I need a better title for the chart above.

#K# For the above plots I want them to show in the order of the Likert scale
#K# not by the tally count. How do I accomplish this?

#K# How many of our learners are first-timers?
table(data$First.Time)
#K# What is the breakdown of our learners by discipline?
table(data$Discipline)
#K# How many learners came to the workshop having a dataset already?
table(data$Have.Dataset)
#K# What operating system are our learners using?
table(data$OS)
#K# Are our learners attending the workshop with a friend or colleague?
table(data$With.Friend)

#---------------------------------------------------------------------#
#K# How can we make multiple plots on one screen?
#K# I'd like to put the agreement questions on one plot.
par(mfrow=c(1, 2))
ggplot(data_programming_usage_tally, 
       aes(reorder(Programming.Usage, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Programming Usage") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

ggplot(data_data_management_strategy_tally, 
       aes(reorder(Data.Management.Strategy, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Data Management Strategy") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)
#K# The code block above didn't work to get 'Programming Usage' and 
#K# 'Data Management Strategy' on one plot.
#---------------------------------------------------------------------#
#K# Other questions I want answered with this data, but need help figuring out
#K# how to do it in R:
#K# 1) How does the data management strategy and data analysis workflow
#K#    for those who have a dataset compare to those who do not?
#K# 2) Are there differences in the 5 level of agreement questions by status and/or
#K#    discipline.
---
  title: "Analysis of Data Carpentry Pre-Workshop Survey Data"
author: "Kari L. Jordan, PhD"
date: "March 1, 2017"
---
  
  ```{r echo = FALSE}
# this is a setup that controls what all the other chunks do
library(knitr)
opts_chunk$set(message = FALSE,
               warning = FALSE)
```


#Read in the data, I'm using `readr::read_csv` beause I find this has better default settings than `read.csv`. For example, it does not convert character columns to factors.

```{r}
# Load CSV and assign to dataframe.
library(readr)
my_data <- read_csv("public_data/dc_preworkshop_surveydata_2016March_2017Feb.csv")
```

#Inspect the data, I'm using `dplyr::glimpse` because it gives a nice, easy to read layout.

```{r}
#Inspect the structure of dataframe and column headers. 
library(dplyr)
glimpse(my_data)
```

Using dplyr to make a tally table, similar to how you used `plyr::count`, and `knitr::kable` to print a nice table

```{r}
my_data_status_tally <- 
  my_data %>% 
  group_by(Status) %>% 
  tally() %>% 
  filter(!is.na(Status)) %>% 
  arrange(desc(n))

# take a look 
library(knitr)
kable(my_data_status_tally)
```

Using ggplot2 to make a plot of the counts, using the above table. I use `reorder` to make the bars in order from big to small, I use `coord_flip` to turn the plot on its side so we can easily read the x-axis tick labels, and `base_size` to make the font size a little larger. 

```{r}
library(ggplot2)
ggplot(my_data_status_tally, 
       aes(reorder(Status, n),
           n)) +
  geom_col() +
  xlab("Status") +
  ylab("Count of people") +
  coord_flip() +
  theme_bw(base_size = 14)
```
#' ---
#' title: "Analysis of Data Carpentry Pre-Workshop Survey Data"
#' author: "Kari L. Jordan, PhD"
#' contributor(s): Ben Marwick
#' published: "March 14, 2017"
#' ---
install.packages("knitr")
install.packages("ggplot2")

```{r echo=FALSE, comment="", echo=FALSE}
head(df)
```

# The following is an analysis of the pre-workshop survey data collected for Data Carpentry 
# workshops from March 2016 through February 2017



# Confirm working directory
getwd()

```{r}
# I used the drop-down Session -> Set Working Directory -> To Source File Location
data <- read.csv("~/Desktop/workshop-survey-data/public_data/dc_preworkshop_surveydata_2016March_2017Feb.csv", 
                 header = TRUE, na.strings = "")
```

#K# Install dplyr package
#B# only need to do this once on your computer, not every time you use dplyr
#B# install.packages('dplyr')

#K# Inspect the structure of dataframe and column headers. 
str(data)
head(data)

#K# This command will set levels for the variable 'Status' and specify the order of the variables
#B# The main problem here is that we don't have any object called "Status" for 
#B# the function factor() to operate on. We do have a dataframe called 'data',
#B# and that has a column called 'Status', so we should use that. We can 
#B# access that column with data$Status, and we can update that column by
#B# putting data$Status on the left hand side of the assignment operator (<-)
#B# I pressed return after each , to make the line a bit shorter, 
#B# and the indenting makes it easier to read.
#B# I put space around the = to make it more readable. 
data$Status <- factor(data$Status, 
                      levels=c("Undergraduate student", 
                               "Graduate Student", 
                               "Post-doc", 
                               "Faculty", 
                               "Industry",
                               "Staff", 
                               "Other (please specify)", 
                               "NA"), 
                      ordered = TRUE)

#K# This command will check the levels of the variable 'Status'
#B# again, we have no object 'Status' but we do have a column 'Status'
#B# in the data frame 'data', which we can access with data$Status
levels(data$Status)

#This command will create a bar chart for the variable 'Status'
#B# same problem as above...
plot(data$Status)

#K# Need to add title and labels.

#K# The bar plot is incorrect. Let's try to make a table.
#B# same problem as above...
#B# looks right to me!
table(data$Status)

#K# It's showing that there are 0 observations for each factor level. 
#K# I need to figure out what I'm doing wrong.

#K# This command will check the number of levels for the variable 'Status'
#B# same problem as above...
nlevels(data$Status)

#K# This command will install the package plyr
#B# install.packages('plyr')
#B# only need install.packages() once per computer
#K# This command will call the library for plyr so that I can use functions like count()
library(plyr)


#K# The frequency count only shows NA with 8 observations. I don't know why this is happening.
#B# it's better now :) I'm stopping here, because it looks like the lines below 
#B# were an attempt to get this plot that we saw above. 
# ------------------------------------------------------------------------

#This command will convert factors to a character vector
#B# as above...
#as.character(data$Status)
#This command will convert factors where the levels appear as numbers.
#Status <- factor(c(1,2,3,4,5,6,7,8))
#as.numeric(levels(data$Status))[data$Status]

#This command SHOULD plot the variable 'Status'
#statusplot <- factor(c("Undergraduate student", "Graduate Student", "Post-doc", 
#                       "Faculty", "Industry", "Staff", "Other (please specify)", "NA"))
#plot(statusplot)
#It still doesn't work!


#K# This is an attempt to create a plot of 'Status' without the NAs and with axis labels.
#K# These commands access the dataframe 'data', filter out the NAs and arrange them
#K# in descending order
library(ggplot2)
```{r}
data_status_tally <- 
  data %>% 
  group_by(Status) %>% 
  tally() %>% 
  filter(!is.na(Status)) %>% 
  arrange(desc(n))

# take a look 
library(knitr)
kable(data_status_tally)
```
#K# These commands create a plot of respondents' Status
ggplot(data_status_tally, 
       aes(reorder(Status, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Status") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

install.packages('likert')

#K# These commands create a plot of respondents' programming usage
data_programming_usage_tally <- 
  data %>%
  group_by(Programming.Usage) %>% 
  tally() %>% 
  filter(!is.na(Programming.Usage)) %>% 
  arrange(desc(n))

ggplot(data_programming_usage_tally, 
       aes(reorder(Programming.Usage, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Programming Usage") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Table of programming usage 
table(data$Programming.Usage)

#K# It looks like there are some NAs. Need to figure out how to filter them out.

#K# Plot of Data Management Strategy
data_data_management_strategy_tally <- 
  data %>%
  group_by(Data.Management.Strategy) %>% 
  tally() %>% 
  filter(!is.na(Data.Management.Strategy)) %>% 
  arrange(desc(n))

ggplot(data_data_management_strategy_tally, 
       aes(reorder(Data.Management.Strategy, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Data Management Strategy") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Plot of Data Analyiss Workflow
data_data_analysis_workflow_tally <- 
  data %>%
  group_by(Data.Analysis.Workflow) %>% 
  tally() %>% 
  filter(!is.na(Data.Analysis.Workflow)) %>% 
  arrange(desc(n))

ggplot(data_data_analysis_workflow_tally, 
       aes(reorder(Data.Analysis.Workflow, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Data Analysis Workflow") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Plot of Level of agreement question: Data organization is a fundamental 
#K  component of effective and reproducible research.
data_data_organization_tally <- 
  data %>%
  group_by(Data.Organization) %>% 
  tally() %>% 
  filter(!is.na(Data.Organization)) %>% 
  arrange(desc(n))

ggplot(data_data_organization_tally, 
       aes(reorder(Data.Organization, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Data Organization") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Plot of Level of Agreement: Using a scripting language like R or Python can 
#K# ultimately improve my analysis efficiency.
data_using_scripting_language_tally <- 
  data %>%
  group_by(Using.Scripting.Language) %>% 
  tally() %>% 
  filter(!is.na(Using.Scripting.Language)) %>% 
  arrange(desc(n))

ggplot(data_using_scripting_language_tally, 
       aes(reorder(Using.Scripting.Language, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Using Scripting Language") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Plot of Level of Agreement: Using R or Python makes 
#K# analyses easier to reproduce.
data_using_R_or_Python_tally <- 
  data %>%
  group_by(Using.R.or.Python) %>% 
  tally() %>% 
  filter(!is.na(Using.R.or.Python)) %>% 
  arrange(desc(n))

ggplot(data_using_R_or_Python_tally, 
       aes(reorder(Using.R.or.Python, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Using R or Python: Reproducibility") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

#K# Plot of Level of Agreement: A value of using SQL, R or Python 
#K# is that the underlying data cannot accidentally be changed.
data_value_of_SQL_or_Python_tally <- 
  data %>%
  group_by(Value.of.SQL.or.Python) %>% 
  tally() %>% 
  filter(!is.na(Value.of.SQL.or.Python)) %>% 
  arrange(desc(n))

ggplot(data_value_of_SQL_or_Python_tally, 
       aes(reorder(Value.of.SQL.or.Python, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("SQL or Python: Value/Data Can't Be Changed") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)
#K# I need a better title for the chart above.

#K# For the above plots I want them to show in the order of the Likert scale
#K# not by the tally count. How do I accomplish this?

#K# How many of our learners are first-timers?
table(data$First.Time)
#K# What is the breakdown of our learners by discipline?
table(data$Discipline)
#K# How many learners came to the workshop having a dataset already?
table(data$Have.Dataset)
#K# What operating system are our learners using?
table(data$OS)
#K# Are our learners attending the workshop with a friend or colleague?
table(data$With.Friend)

#---------------------------------------------------------------------#
#K# How can we make multiple plots on one screen?
#K# I'd like to put the agreement questions on one plot.
par(mfrow=c(1, 2))
ggplot(data_programming_usage_tally, 
       aes(reorder(Programming.Usage, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Programming Usage") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

ggplot(data_data_management_strategy_tally, 
       aes(reorder(Data.Management.Strategy, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Data Management Strategy") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)
#K# The code block above didn't work to get 'Programming Usage' and 
#K# 'Data Management Strategy' on one plot.
#---------------------------------------------------------------------#
#K# Other questions I want answered with this data, but need help figuring out
#K# how to do it in R:
#K# 1) How does the data management strategy and data analysis workflow
#K#    for those who have a dataset compare to those who do not?
#K# 2) Are there differences in the 5 level of agreement questions by status and/or
#K#    discipline.
