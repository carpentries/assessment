## CarpentryCon 2022 Attendance Analysis 
## written by: Erin Becker
## started: 4 August, 2022

library(tidyverse)
library(lubridate)
library(rworldmap)
library(fs)
source("theme_carpentries.R")

# #### Process raw Zoom data into single data file ####
# 
# # There are several csv files, each includes a header (3 lines)
# # with sesson metadata. We want to extract the Zoom room
# # from each csv header, and add it as a new variable in the
# # dataframe, then concatenate all of the csv files together to
# # make a single dataframe.
# 
# # NOTE: BE SURE TO CONFIRM ALL SESSION DATA IS INCLUDED
# 
# # get list of data files
# fileList <- list.files("raw-data")
# 
# for(f in fileList) {
#   # set input file
#   infile <- paste0("raw-data/", f)
#   # extract zoom room
#   room <- read_csv(infile, n_max = 1) %>%
#     pull(Host)
#   # extract date
#   sessionDate <- read_csv(infile, n_max = 1) %>%
#     pull("Start Time")
#   # read in attendance data, add zoom room and session date as variables
#   data <- read_csv(infile, skip = 3) %>%
#     select("Participant", "IP Address", "Location", "Join Time", "Leave Time") %>%
#     mutate(Room = room) %>%
#     mutate(Date = sessionDate)
#   # write to output file
#   # column names are not included in append mode
#   write_csv(data, "clean-data/all-sessions.csv", append = TRUE)
# }
# 
# #### end ####
# 
# #### Read and clean concatenated data ####
# 
# # read in concatenated data and add column names
# catData <- read_csv("clean-data/all-sessions.csv", col_names = FALSE)
# colnames(catData) <- c("Participant", "IP Address", "Location", "Join Time", "Leave Time", "Room", "Date")
# 
# # clean up names
# cleanNames <-  str_remove(catData$Participant, " \\(.*") %>%
#   str_remove(" - Zoom Helper") %>%
#   str_remove(" - Facilitator") %>%
#   str_remove(" - Presenter") %>%
#   str_remove(" - Zoom helper") %>%
#   str_remove(" she/her")
# catData$Participant <- cleanNames
# 
# # remove notes about people leaving room
# cleanLeaveTime <- str_remove(catData$"Leave Time", "\\(.*")
# catData$"Leave Time" <- cleanLeaveTime
# 
# # clean up locations - split city and country
# location <- str_replace(catData$Location, "\\(", " \\(")
# location <- str_split_fixed(catData$Location, "\\(", 2)
# catData$City <- location[,1]
# catData$Country <- location[,2]
# cleanCountry <- str_remove(catData$Country, " \\)")
# catData$Country <- cleanCountry
# catData$Location <- NULL
# 
# # clean up IP address
# cleanIP <- str_remove(catData$"IP Address", " Local IP.*") %>%
#   str_remove("Public IP: ")
# catData$IP <- cleanIP
# catData$"IP Address" <- NULL
# 
# # remove captioners and interpreters
# supportStaff <- str_detect(catData$Participant, "Captioner|Interpreter|captioner|ASL")
# catData <- catData[!supportStaff,]
# 
# # write out cleaned data
# write_csv(catData, "clean-data/catData.csv")
# 
# #### end ####
# 
# # Export to OpenRefine and do text faceting to clean up 
# # participant names. 
# 

#### Read in cleaned data files ####

# read in cleaned data from OpenRefine
catData_OR <- read_csv("clean-data/catData-OpenRefine.csv")
# read in session metadata
sessions <- read_csv("Session-metadata.csv")
#### end ####

#### Analyse number participants ####
uniqueParticipants <- catData_OR %>% 
  select(Participant) %>%
  unique()

uniqueParticipantsbyCountry <- catData_OR %>% 
  select(Participant, Country) %>%
  unique() %>% 
  count(Country)
#### end ####

#### Play with mapping ####

# connections per country
attendees <- catData_OR %>% 
  count(Country)

attendee.map <- joinCountryData2Map(attendees, 
                                    joinCode = "ISO2", 
                                    nameJoinColumn = "Country")

mapCountryData(attendee.map, nameColumnToPlot="n")

# unique participants per country
attendee.map <- joinCountryData2Map(uniqueParticipantsbyCountry, 
                                    joinCode = "ISO2", 
                                    nameJoinColumn = "Country")

mapCountryData(attendee.map, nameColumnToPlot="n", 
               catMethod = "categorical")
#### end ####


# # adding filenames ---------------------------------------------------------
# 
# # getting filenames to associate with start times
# ft <- dir_ls("raw-data/") %>% 
#   map(~read_csv(.x, n_max = 1) %>% 
#         select(`Start Time`)) %>% 
#   bind_rows(.id = "file") %>% 
#   mutate(file = path_file(file))
# 
# # adding filenames to catData
# catData_OR <- catData_OR %>% 
#   left_join(ft, by = c("Date" = "Start Time"))
# 
# 
# # some sessions had multiple files separated by "and"
# sessions <- sessions %>% 
#   separate(Filename, into = c("file", "file2"), sep = " and ") %>% 
#   pivot_longer(cols = c(file, file2), names_to = "src", values_to = "file") %>% 
#   filter(!is.na(file) | (is.na(file) & src == "file")) %>% 
#   mutate(file = str_replace(file, ":", "_")) %>% 
#   select(-src)
# 
# 
# 
# # handling recordings w/ multiple sessions --------------------------------
# 
# 
# # figuring out session end times and nesting by file, because some files have multiple sessiosn
# d <- sessions %>% 
#   janitor::clean_names() %>% 
#   select(-c(room, retrieved, confirmed)) %>% 
#   group_by(file) %>% 
#   mutate(n_sessions = n()) %>%
#   arrange(start_time_pacific) %>% 
#   mutate(end_time_pacific = lead(start_time_pacific),
#          end_time_pacific = ifelse(is.na(end_time_pacific), 
#                                    start_time_pacific + 60*minutes,
#                                    end_time_pacific) %>% 
#            hms:::new_hms()) %>% 
#   group_by(file, n_sessions) %>%
#   nest() %>% 
#   left_join(catData_OR, ., by = "file") %>% 
#   janitor::clean_names() %>% 
#   select(-room) %>% 
#   mutate(mins_stayed = time_length(leave_time - join_time) %>% 
#            ifelse(. < 0, . + 24*60*60, .)/60) 
# 
# 
# # now we have to handle the Zoom recordings that contain multiple sessions
# # we have to look at someone's join and leave time to figure out which
# # of the multiple sessions they attended
# 
# # here's the logic:
# # to be "attending" a session, there are two rules:
# # 1) you need to have joined at least 10 minutes before the session ended
# # 2) you need to have left at least 10 minutes after it started
# # also have to do a little logic with joining before midnight and leaving after
# dmult <- d %>% 
#   filter(mins_stayed >= 5) %>% 
#   filter(n_sessions > 1) %>% 
#   unnest(data) %>% 
#   mutate(leave_start = seconds_to_period(leave_time - start_time_pacific),
#          join_end = end_time_pacific - join_time,
#          join_end = ifelse(join_end < -16*60*60, join_end + 24*60*60, join_end) %>% 
#            seconds_to_period(),
#          joined = join_end > 10,
#          stayed = leave_start > 10) %>% 
#   filter(joined & stayed) %>% 
#   select(-c(leave_start, join_end, joined, stayed))
# 
# # now we join it to the regular old single-session recordings
# # we use 5 minutes as a cutoff for attending a session
# dc <- d %>% 
#   filter(mins_stayed >= 5) %>% 
#   filter(n_sessions == 1) %>% 
#   unnest(data) %>% 
#   bind_rows(dmult)
# 
# 
# dc %>% 
#   write_csv("clean-data/session_participants_cleaned.csv")




# methods description -----------------------------------------------------

# We used Zoom session data to determine the number of unique attendees at each session and their geographic locations. With this information, we generated maps of attendee locations and plots displaying attendees by country, session type, and session name.
