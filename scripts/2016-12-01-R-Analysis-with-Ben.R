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
