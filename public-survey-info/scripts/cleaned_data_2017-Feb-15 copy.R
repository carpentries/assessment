# The first two lines of code checks the current directory I'm in and specifies the directory I want to move to.
getwd()
setwd("/Users/kariljordan/Data_Carpentry/workshop-survey-data/private_data")

# The next line of code loads the pre-workshop survey data CSV into RStudio and assigns it to a dataframe.
data <- read.csv("dc_preworkshop_surveydata_2016March_2017Feb.csv", skipNul = TRUE)

# I received an error message: line 2 appears to contain embedded nulls.
# This is because my CSV has empty column names.

#These lines of code assign friendly column names to the imported data.

new_column_names <- c(
  "Respondent_ID",
  "Collector_ID",
  "StartDate",
  "EndDate",
  "IP_Address",
  "Email",
  "First_Name",
  "Last_Name",
  "Custom_Data",
  "Consent",
  "When_Taking_Survey",
  "Workshop_Attending",
  "Workshop_Attending_Other",
  "First_Time"
  )
#These lines were used to check the new column names list as it was being built.
#The columns name need to be a complete list in the correct order.
original_column_names <- colnames(data)
all_column_names <- c(new_column_names, 
                      original_column_names[
                        (length(new_column_names)+1):(length(original_column_names))
                        ]
                      )
colnames(data) <- all_column_names
library(dplyr)
public_data <- data %>%
  select(First_Time)

write.csv(public_data, "Data_Carpentry/workshop-survey-data/public_data/dc_preworkshop_surveydata_2016March_2017Feb_public.csv")
