slug <- read.csv("Data_Carpentry/my-forked-repos/assessment-fork/learner-assessment/data/workshops_current_members.csv", stringsAsFactors = FALSE)
swcpredata <- read.csv("Data_Carpentry/my-forked-repos/private-data/learner-assessment/swcpre_180521.csv")
# swcpostdata <- readr::read_csv("data/180521_swcpost.csv")
# dcpredata <- readr::read_csv("data/180511_dcpre.csv")
# dcpostdata <- readr::read_csv("data/180511_dcpost.csv")

# Rename Workshop ID column to 'slug'
swcpredata$slug <- swcpredata$Workshop.ID

library(dplyr)
# This step created a dataframe that includes slug and fullname
slug <- select(slug, "slug", "fullname")

# This step merged the slug dataframe into swcpreadata (adding a column to swcpredata called fullname)
swcpredata <- merge(swcpredata, slug, by = "slug")

# We want to now subset the data by institution name (lists)
swcpredata_members <- split(swcpredata, swcpredata$fullname)
