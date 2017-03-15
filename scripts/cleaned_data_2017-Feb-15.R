#Load the pre workshop survey data CSV into RStudio and assign it to a dataframe
data <- read.csv("private_data/dc_preworkshop_surveydata_2016March_2017Feb.csv")

#These lines of code assign friendly column names to the imported data.

new_column_names <- c(
  "Respondent_ID",
  "firsttime1",
  "2",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10",
  "11",
  "12",
  "13",
  "first_time"
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
  select(first_time)

write.csv(public_data, "public_data/dc_preworkshop_surveydata_2016March_2017Feb_public.csv")
