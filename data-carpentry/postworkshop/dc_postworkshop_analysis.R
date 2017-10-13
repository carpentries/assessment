library(readr)
data <-read.csv("https://github.com/datacarpentry/workshop-survey-data/blob/master/Data-Carpentry-Post-Workshop-Survey-Data_Cleaned_Archived-2016-10-27.csv")
head(data)

library(tidyverse)
# This command loads the tidyverse library. 
# The tidyverse library is a collection of R packages used for data analysis.
# Tidyverse includes ggplot2, dplyr, tidyr, readr, purrr, and tibble

pre_archived <- read_csv("https://raw.githubusercontent.com/datacarpentry/workshop-survey-data/master/2016-11-04-DC-pre-workshop-survey-data-archived.csv")
# This line of code loads the dataset of pre-workshop surveys archived as of 2016-11-04.

glimpse(pre_archived)
View(pre_archived)
# Glimpse tells us how many variables and observations there are in this dataset.
# View opens a new tab showing all of the data in the dataset.

head(pre_archived)
# The head command shows the first 6 lines of the dataframe.

str(pre_archived)
# The str command presents the structure of the dataframe.

# Now we will select a simple variable, OS (i.e. which operating system
# is the learner using during the workshop?). We want to group by type of OS
# and show the number of learners per group (i.e. tally)
pre_archived %>% 
  select(OS) %>% 
  group_by(OS) %>% 
  tally() %>% 
  ggplot(aes(OS, n)) + 
  geom_bar(stat='identity')
# For the commands above, pipes (%>%) were used to select and filter
# at the same time. We produced a bar chart of the number of learners by type of Operating System.
# 1 - Linux, 2 - Apple, 3 - Windows, 4 - IDK [I need help changing the variable names]

# Now we will create a bar chart showing the number of first-time workshop attendees.
pre_archived %>% 
  select(`First-Time`) %>% 
  group_by(`First-Time`) %>% 
  tally() %>% 
  ggplot(aes(`First-Time`, n)) +
  geom_bar(stat='identity')

# The following bar chart will show the number of first-time attendees
# who are attending with a friend.
pre_archived %>% 
  select(`First-Time`, `With-Friend`) %>% 
  group_by(`First-Time`, `With-Friend`) %>% 
  tally() %>% 
  mutate(propn = n/sum(n) * 100) %>% # add proportions
  ggplot(aes(`First-Time`, propn)) + # plot
  geom_bar(stat = 'identity') +
  facet_wrap(~`With-Friend`)

# We want to know the number of learners by status who have attended our workshops.
# The following command will produce a vector showing what unique values are in the cells.
unique(pre_archived$Status)

# We need to change the numbers in the Status column to variables: Undergraduate, graduate, etc. 
# The commands below accomplish this by recoding them into a new variable: Status_adj
pre_archived$Status_adj <- 
  with(pre_archived, 
       ifelse(Status == "1", "Undergraduate", 
              ifelse(Status == "2", "Graduate", 
                     ifelse(Status == "3", "Postdoc",
                            ifelse(Status == "4", "Faculty",
                                   ifelse(Status == "5", "Industry",
                                          ifelse(Status == "6", "Staff", "other")))))))

# Now we will view the dataframe with the new column (Status_adj) added.
View(pre_archived)

# The following commands will produce a frequency plot of our learners by Status by proportion
# of total learners
status_row <- 
  pre_archived %>% 
  select(Status_adj) %>% 
  filter(Status_adj != "NA") # We do not want to include "NA" values

status_row %>% 
  group_by(Status_adj) %>% 
  tally() %>% 
  arrange(desc(n)) %>% 
  mutate(propn = n/sum(n) * 100) %>% 
  ggplot(aes(reorder(Status_adj, propn), propn)) + 
  geom_bar(stat = 'identity') +
  xlab("Status") +
  ylab("Proportion") +
  theme_bw() +
  ggtitle(paste0("Status of respondants (n = ", nrow(status_row), ")"))

# These commands produce a table in the console that counts the responses for the following
# level of agreement question: Data organization is a fundamental component of effective 
# and reproducible research.Data organisation
pre_archived %>% 
  group_by(`Data-Organization`) %>% 
  tally() %>% 
  arrange(desc(n))

# Level of recommendation by status (are we sure this recoding?)
unique(pre_archived$Recommend)
pre_archived$Recommend_adj <- 
  with(pre_archived, 
       ifelse(Recommend == "5", "Strongly Disagree", 
              ifelse(Recommend == "4", "Disagree", 
                     ifelse(Recommend == "3", "Neutral",
                            ifelse(Recommend == "2", "Agree",
                                   ifelse(Recommend == "1", "Strongly Agree",
                                          "other"))))))

# plot recommendation by status level
pre_archived %>% 
  select(Status_adj, Recommend_adj) %>% 
  group_by(Status_adj, Recommend_adj) %>%  # take care here!
  tally() %>% 
  mutate(propn = n/sum(n)) %>% 
  filter(!is.na(Recommend_adj)) %>% 
  ggplot(aes(Recommend_adj, propn)) +
  geom_col() +
  facet_wrap( ~ Status_adj)



## This comman will load the post-workshop survey data into R.
surveys <- read.csv("2016-11-04-DC-post-workshop-survey-data-archived.csv")
## This command will show the row headers from the CSV.
head (surveys)
## This command will inspect the structure of my dataframe.
str(surveys)
## The command above tells me that there are 545 observations and 29 variables.
## Most of the columns consist of integers. Research and Status are factors.

## This command will set levels for the variable named Status
Status <- factor(c("undergraduate", "graduate", "post-doc", "faculty", "industry", "staff", "other"))
##This command will check the levels
levels(Status)
## These commands will specify the order of the variables
Status <- factor(Status, levels=c("undergraduate", "graduate", "post-doc", "faculty", "industry", "staff", "other"), ordered = TRUE)
levels(Status)
min(Status)

## This command will create a bar plot for Status
plot(Status)

## This command will check the number of levels for Status
nlevels(Status)

## This command will install the package plyr
install.packages('plyr')
## This command will call the library for plyr so that I can use functions 
## like count()
library(plyr)
count(Status)

## This command will convert factors to a character vector
as.character(Status)
## This command will convert factors where the levels appear as numbers.
f <- factor(c(1,2,3,4,5,6,7))
as.numeric(levels(f))[f]

## This command SHOULD plot Status

statusplot <- factor(c("undergraduate", "graduate", "post-doc", "faculty", "industry", "staff", "other"))
plot(statusplot)
library(readr)
data <-read.csv("https://github.com/datacarpentry/workshop-survey-data/blob/master/Data-Carpentry-Post-Workshop-Survey-Data_Cleaned_Archived-2016-10-27.csv")
head(data)

library(tidyverse)
# This command loads the tidyverse library. 
# The tidyverse library is a collection of R packages used for data analysis.
# Tidyverse includes ggplot2, dplyr, tidyr, readr, purrr, and tibble

pre_archived <- read_csv("https://raw.githubusercontent.com/datacarpentry/workshop-survey-data/master/2016-11-04-DC-pre-workshop-survey-data-archived.csv")
# This line of code loads the dataset of pre-workshop surveys archived as of 2016-11-04.

glimpse(pre_archived)
View(pre_archived)
# Glimpse tells us how many variables and observations there are in this dataset.
# View opens a new tab showing all of the data in the dataset.

head(pre_archived)
# The head command shows the first 6 lines of the dataframe.

str(pre_archived)
# The str command presents the structure of the dataframe.

# Now we will select a simple variable, OS (i.e. which operating system
# is the learner using during the workshop?). We want to group by type of OS
# and show the number of learners per group (i.e. tally)
pre_archived %>% 
  select(OS) %>% 
  group_by(OS) %>% 
  tally() %>% 
  ggplot(aes(OS, n)) + 
  geom_bar(stat='identity')
# For the commands above, pipes (%>%) were used to select and filter
# at the same time. We produced a bar chart of the number of learners by type of Operating System.
# 1 - Linux, 2 - Apple, 3 - Windows, 4 - IDK [I need help changing the variable names]

# Now we will create a bar chart showing the number of first-time workshop attendees.
pre_archived %>% 
  select(`First-Time`) %>% 
  group_by(`First-Time`) %>% 
  tally() %>% 
  ggplot(aes(`First-Time`, n)) +
  geom_bar(stat='identity')

# The following bar chart will show the number of first-time attendees
# who are attending with a friend.
pre_archived %>% 
  select(`First-Time`, `With-Friend`) %>% 
  group_by(`First-Time`, `With-Friend`) %>% 
  tally() %>% 
  mutate(propn = n/sum(n) * 100) %>% # add proportions
  ggplot(aes(`First-Time`, propn)) + # plot
  geom_bar(stat = 'identity') +
  facet_wrap(~`With-Friend`)

# We want to know the number of learners by status who have attended our workshops.
# The following command will produce a vector showing what unique values are in the cells.
unique(pre_archived$Status)

# We need to change the numbers in the Status column to variables: Undergraduate, graduate, etc. 
# The commands below accomplish this by recoding them into a new variable: Status_adj
pre_archived$Status_adj <- 
  with(pre_archived, 
       ifelse(Status == "1", "Undergraduate", 
              ifelse(Status == "2", "Graduate", 
                     ifelse(Status == "3", "Postdoc",
                            ifelse(Status == "4", "Faculty",
                                   ifelse(Status == "5", "Industry",
                                          ifelse(Status == "6", "Staff", "other")))))))

# Now we will view the dataframe with the new column (Status_adj) added.
View(pre_archived)

# The following commands will produce a frequency plot of our learners by Status by proportion
# of total learners
status_row <- 
  pre_archived %>% 
  select(Status_adj) %>% 
  filter(Status_adj != "NA") # We do not want to include "NA" values

status_row %>% 
  group_by(Status_adj) %>% 
  tally() %>% 
  arrange(desc(n)) %>% 
  mutate(propn = n/sum(n) * 100) %>% 
  ggplot(aes(reorder(Status_adj, propn), propn)) + 
  geom_bar(stat = 'identity') +
  xlab("Status") +
  ylab("Proportion") +
  theme_bw() +
  ggtitle(paste0("Status of respondants (n = ", nrow(status_row), ")"))

# These commands produce a table in the console that counts the responses for the following
# level of agreement question: Data organization is a fundamental component of effective 
# and reproducible research.Data organisation
pre_archived %>% 
  group_by(`Data-Organization`) %>% 
  tally() %>% 
  arrange(desc(n))

# Level of recommendation by status (are we sure this recoding?)
unique(pre_archived$Recommend)
pre_archived$Recommend_adj <- 
  with(pre_archived, 
       ifelse(Recommend == "5", "Strongly Disagree", 
              ifelse(Recommend == "4", "Disagree", 
                     ifelse(Recommend == "3", "Neutral",
                            ifelse(Recommend == "2", "Agree",
                                   ifelse(Recommend == "1", "Strongly Agree",
                                          "other"))))))

# plot recommendation by status level
pre_archived %>% 
  select(Status_adj, Recommend_adj) %>% 
  group_by(Status_adj, Recommend_adj) %>%  # take care here!
  tally() %>% 
  mutate(propn = n/sum(n)) %>% 
  filter(!is.na(Recommend_adj)) %>% 
  ggplot(aes(Recommend_adj, propn)) +
  geom_col() +
  facet_wrap( ~ Status_adj)



## This comman will load the post-workshop survey data into R.
surveys <- read.csv("2016-11-04-DC-post-workshop-survey-data-archived.csv")
## This command will show the row headers from the CSV.
head (surveys)
## This command will inspect the structure of my dataframe.
str(surveys)
## The command above tells me that there are 545 observations and 29 variables.
## Most of the columns consist of integers. Research and Status are factors.

## This command will set levels for the variable named Status
Status <- factor(c("undergraduate", "graduate", "post-doc", "faculty", "industry", "staff", "other"))
##This command will check the levels
levels(Status)
## These commands will specify the order of the variables
Status <- factor(Status, levels=c("undergraduate", "graduate", "post-doc", "faculty", "industry", "staff", "other"), ordered = TRUE)
levels(Status)
min(Status)

## This command will create a bar plot for Status
plot(Status)

## This command will check the number of levels for Status
nlevels(Status)

## This command will install the package plyr
install.packages('plyr')
## This command will call the library for plyr so that I can use functions 
## like count()
library(plyr)
count(Status)

## This command will convert factors to a character vector
as.character(Status)
## This command will convert factors where the levels appear as numbers.
f <- factor(c(1,2,3,4,5,6,7))
as.numeric(levels(f))[f]

## This command SHOULD plot Status

statusplot <- factor(c("undergraduate", "graduate", "post-doc", "faculty", "industry", "staff", "other"))
plot(statusplot)