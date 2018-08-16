# Load dplyr
library(dplyr)

# Load member organization dataset
slug <- read.csv("https://raw.githubusercontent.com/carpentries/assessment/master/learner-assessment/data/workshops_current_members.csv", stringsAsFactors = FALSE)

# Load SWC and DC pre and post workshop data sets (RAW)
swcpredata <- read.csv("https://raw.githubusercontent.com/carpentries/assessment/2018-07-08-learners-pre-post-surveys.Rmd/learner-assessment/data/20180521_swcpre.csv", stringsAsFactors = FALSE)
swcpostdata <- read.csv("https://raw.githubusercontent.com/carpentries/assessment/2018-07-08-learners-pre-post-surveys.Rmd/learner-assessment/data/20180521_swcpost.csv", stringsAsFactors = FALSE)
dcpredata <- read.csv("https://raw.githubusercontent.com/carpentries/assessment/2018-07-08-learners-pre-post-surveys.Rmd/learner-assessment/data/20180511_dcpre.csv", stringsAsFactors = FALSE)
dcpostdata <- read.csv("https://raw.githubusercontent.com/carpentries/assessment/2018-07-08-learners-pre-post-surveys.Rmd/learner-assessment/data/20180511_dcpost.csv", stringsAsFactors = FALSE)


# SWC Pre Data
# Rename Workshop ID column to 'slug'
swcpredata$slug <- swcpredata$WorkshopID
# This step created a dataframe that includes slug and fullname 
slug <- select(slug, "slug", "fullname")
# This step merged the slug dataframe into swcpreadata (adding a column to swcpredata called fullname)
swcpredata <- merge(swcpredata, slug, by = "slug")
# We want to now subset the data by institution name (lists)
swcpredata_members <- split(swcpredata, swcpredata$fullname)

# SWC Post Data
# Rename Workshop ID column to 'slug'
swcpostdata$slug <- swcpostdata$WorkshopID
# This step merged the slug dataframe into swcpreadata (adding a column to swcpredata called fullname)
swcpostdata <- merge(swcpostdata, slug, by = "slug")
# We want to now subset the data by institution name (lists)
swcpostdata_members <- split(swcpostdata, swcpostdata$fullname)

# DC Pre Data
# Rename Workshop ID column to 'slug'
dcpredata$slug <- dcpredata$The.unique.identifier.of.the.workshop
# This step created a dataframe that includes slug and fullname 
slug <- select(slug, "slug", "fullname")
# This step merged the slug dataframe into swcpreadata (adding a column to swcpredata called fullname)
dcpredata <- merge(dcpredata, slug, by = "slug")
# We want to now subset the data by institution name (lists)
dcpredata_members <- split(dcpredata, dcpredata$fullname)

# DC Post Data
# Rename Workshop ID column to 'slug'
dcpostdata$slug <- dcpostdata$Unique.identifier.of.workshop
# This step merged the slug dataframe into swcpreadata (adding a column to swcpredata called fullname)
dcpostdata <- merge(dcpostdata, slug, by = "slug")
# We want to now subset the data by institution name (lists)
dcpostdata_members <- split(dcpostdata, dcpostdata$fullname)

write_split_data = function(data_in, file_extension) {
  for(member in 1:length(data_in)) {
    filename = names(data_in[member])
    filename = gsub(" ", "_", filename)
    filename = paste0(filename, file_extension)
    print(filename)
    write.csv(data_in[member], file = filename)
  }
}

# Write out each of the datasets back into the private-data repo
write.csv(dcpostdata, "data/20180816_dcpostdata_memberorgs.csv")
write.csv(dcpredata, "data/20180816_dcpredata_memberorgs.csv")
write.csv(swcpostdata, "data/20180816_swcpostdata_memberorgs.csv")
write.csv(swcpredata, "data/20180816_swcpredata_memberorgs.csv")

# write_split_data(data_in = swcpredata_members, file_extension = "_swcpredata.csv")
# write_split_data(data_in = swcpostdata_members, file_extension = "_swcpostdata.csv")
# write_split_data(data_in = dcpredata_members, file_extension = "_dcpredata.csv")
# write_split_data(data_in = dcpostdata_members, file_extension = "_dcpostdata.csv")
