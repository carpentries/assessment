# Load dplyr
library(dplyr)

# Load member organization dataset
slug <- read.csv("https://raw.githubusercontent.com/carpentries/assessment/master/learner-assessment/data/workshops_current_members.csv", stringsAsFactors = FALSE)

# Load SWC and DC pre and post workshop data sets (RAW)
swcpredata <- read.csv("https://raw.githubusercontent.com/carpentries/private-data/master/learner-assessment/swcpre_20180803.csv?token=AUDcF3t70p7F0lgBWKC0-54zfDqHVKAVks5bfarPwA%3D%3D", stringsAsFactors = FALSE)
swcpostdata <- read.csv("https://raw.githubusercontent.com/carpentries/private-data/master/learner-assessment/swcpost_20180803.csv?token=AUDcF-B8sUeev9uSSqQ-2PkRj_98GlIDks5bfaq4wA%3D%3D", stringsAsFactors = FALSE)
dcpredata <- read.csv("https://raw.githubusercontent.com/carpentries/private-data/master/learner-assessment/dcpre_20180803.csv?token=AUDcF32moSh6wBuOijwvlA7XyQNWbhZFks5bfaqjwA%3D%3D", stringsAsFactors = FALSE)
dcpostdata <- read.csv("https://raw.githubusercontent.com/carpentries/private-data/master/learner-assessment/dcpost_20180803.csv?token=AUDcF0m6ja7TKq6l9GTKdGSAookBTiTGks5bfaqBwA%3D%3D", stringsAsFactors = FALSE)


# SWC Pre Data
# Rename Workshop ID column to 'slug'
swcpredata$slug <- swcpredata$Workshop.ID
# This step created a dataframe that includes slug and fullname 
slug <- select(slug, "slug", "fullname")
# This step merged the slug dataframe into swcpreadata (adding a column to swcpredata called fullname)
swcpredata <- merge(swcpredata, slug, by = "slug")
# We want to now subset the data by institution name (lists)
swcpredata_members <- split(swcpredata, swcpredata$fullname)

# SWC Post Data
# Rename Workshop ID column to 'slug'
swcpostdata$slug <- swcpostdata$Workshop.ID
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
write.csv(dcpostdata, "data/20180803_dcpostdata_memberorgs_raw.csv")
write.csv(dcpredata, "data/20180803_dcpredata_memberorgs_raw.csv")
write.csv(swcpostdata, "data/20180803_swcpostdata_memberorgs_raw.csv")
write.csv(swcpredata, "data/20180803_swcpredata_memberorgs_raw.csv")

# write_split_data(data_in = swcpredata_members, file_extension = "_swcpredata.csv")
# write_split_data(data_in = swcpostdata_members, file_extension = "_swcpostdata.csv")
# write_split_data(data_in = dcpredata_members, file_extension = "_dcpredata.csv")
# write_split_data(data_in = dcpostdata_members, file_extension = "_dcpostdata.csv")
