# Load Pre-Workshop Data
predata <- read_csv("https://raw.githubusercontent.com/carpentries/assessment/master/learner-assessment/data-carpentry/postworkshop/2018-March/180118_dcpre.csv")

# Load Post-Workshop Data
postdata <- read_csv("https://raw.githubusercontent.com/carpentries/assessment/master/learner-assessment/data-carpentry/postworkshop/2018-March/180108_dcpost.csv")

predata$uniqueID = predata[["UniqueID"]]
predata[["UniqueID"]] = NULL

# Which in the table of unique IDs appeared only once?
# Which gave us the position of the vector. We needed to pull out the names, not positions
# Which of the unique IDs are in this list. Only give us the rows in predata which match this condition
# and give us all the columns. We assigned it to a new data frame.
list_unique_ids_pre = names(which(table(predata$uniqueID) == 1))
predata_unique = predata[which(predata$uniqueID %in% list_unique_ids_pre),]

# Do the same for the post data
postdata$uniqueID = postdata[["UniqueID"]]
postdata[["UniqueID"]] = NULL

list_unique_ids_post = names(which(table(postdata$uniqueID) == 1))
postdata_unique = postdata[which(postdata$uniqueID %in% list_unique_ids_post),]

# Now we are ready to combine. Pre responses are labeled with an 'x' and post with a 'y'.
# This is Erin's technique
# combined_data <- merge(predata_unique, postdata_unique, by = c("uniqueID"))

# This is from DataCamp
# Join both data frames
data_merged <- predata_unique %>%
  inner_join(postdata_unique, by = c("uniqueID"))

# Count the resulting rows
# data_merged %>%
#  count()

# Examine combined_data
# data_merged

# Turn country into a factor
data_merged <- data_merged %>%
  mutate(Country.x = as.factor(Country.x))