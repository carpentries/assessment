#! /usr/bin/env Rscript

#
#   Description: report plotting calls
#   Analyzing pre and post survey results from Data Carpentry 
#   Repo: https://github.com/carpentries/assessment/tree/master/learner-assessment/data-carpentry/archived-analysis
#   Date: 2017, August 27
#   Copyright (C) 2017 Paula Andrea Martinez
#   ORCID iD 0000-0002-8990-1985

source(file = "scripts/exploringData.R")

# ###########################################################################
# Calls 
# Run line by line
# ###########################################################################
## ---- exploring-presurvey-data ----
Epreworkshop <- Exploring("data/preworkshop_public_archived.csv")
Epreworkshop <- cleanPreworkshopdata(Epreworkshop)
## ---- plotting-presurvey-data ----
plotByStatusGeneric(Epreworkshop, "Pre-survey", "year.survey" , "year of survey response")
plotByStatusGeneric(Epreworkshop, "Pre-survey", "First.Time" , "first time taking a DC as learner", c(2,1))
# Simple barplot for discipline, Biology has the majority of answers
plotBarplot(Epreworkshop, "Pre-survey", "Discipline", "discipline")
plotByStatusGeneric(Epreworkshop, "Pre-survey", "OS" , "operative system", c(1,2,4,3))
# table(Epreworkshop$With.Friend)
plotByStatusGeneric(Epreworkshop, "Pre-survey", "With.Friend" , "attended with a friend", c(3,1,2))
# table(Epreworkshop$Programming.Usage)
plotByStatusGeneric(Epreworkshop, "Pre-survey", "Programming.Usage" , "programming usage", c(2, 3, 6, 4, 7, 1, 5))
# Skipping current tools "Current.Tools.1" to "Current.Tools.7"
# table(Epreworkshop$Have.Dataset)
plotByStatusGeneric(Epreworkshop, "Pre-survey", "Have.Dataset" , "having a dataset", c(2,1,4,3))
# "Data.Management.Strategy" "Data.Analysis.Workflow" are better plotted with a Likert plot
# table(Epreworkshop$Data.Management.Strategy)
# table(Epreworkshop$Data.Analysis.Workflow)
plotByStatusGeneric(Epreworkshop, "Pre-survey", "Data.Organization" , "importance of data organization", c(4,1,3,2,5))
# table(Epreworkshop$Using.Scripting.Language)
plotByStatusGeneric(Epreworkshop, "Pre-survey", "Using.Scripting.Language" , "importance of using a scripting language",  c(4,1,3,2,5))
# ### Skipped because question is not clear
# table(Epreworkshop$Using.R.or.Python)
# table(Epreworkshop$Value.of.SQL.or.Python)
# Taken in the US
# table(Epreworkshop$Workshop.in.US)
# 31% No 69% Yes
#(590 * 100) / 1890
# ### [1] 31.21693
#(1307 * 100) / 1890
# ###[1] 69.15344
plotByStatusGeneric(Epreworkshop, "Pre-survey", "Workshop.in.US" , "workshop taken in the US")
# make workshop in the US per year
plotGeneric(Epreworkshop, "Pre-survey", "Workshop.in.US" , "workshop taken in the US per year", c(2,1), "year.survey" )
# this is very interesting, shows that for 2017 only 10% of respondents have taken the survey outside of the US
plotByStatusGeneric(Epreworkshop, "Pre-survey", "Age" , "age")
plotGeneric(Epreworkshop, "Pre-survey", "Age" , "age per year",NULL, "year.survey")
# doesn't really mean that more people in the US came with a friend, it just looks like that because more people
# have taken the survey in the US
plotGeneric(Epreworkshop, "Pre-survey","With.Friend" , "came with friend vs taken in the US", c(3,1,2),
            "Workshop.in.US" , c(2,1))
plotGeneric(Epreworkshop, "Pre-survey", "OS", "OS vs taken in the US", c(1,2,4,3), "Workshop.in.US" , c(2,1))
plotGeneric(Epreworkshop, "Pre-survey", "OS", "OS vs year of the survey", c(1,2,4,3), "year.survey" )
## ---- plotting-presurvey-dataUS ----
# Filter all of those who did not take the survey in the US
EpreworkshopUS <- subset(Epreworkshop, Workshop.in.US == "Yes")
dim(EpreworkshopUS)
plotByStatusGeneric(EpreworkshopUS, "Pre-surveyUS", "Age" , "age")
# Gender... this is not a reality, it only means that more women responded in the survey
# not that there were more women have taken the workshop
plotByStatusGeneric(EpreworkshopUS, "Pre-surveyUS", "Gender" , "gender")
# Combined plot
plotGeneric(EpreworkshopUS, "Pre-surveyUS","With.Friend" , "came with friend vs gender", c(3,1,2),
            "Gender" )
# Names are too long to be shown in categories
plotByStatusGeneric(EpreworkshopUS, "Pre-surveyUS", "Race" , "race")

# ' ## WordCloud

# wordclouds
myWordCloud(Epreworkshop$Department, "Pre-survey_Department")
myWordCloud(Epreworkshop$Hope.to.Learn, "Pre-survey_HopeToLearn")
############################################################################
## ---- exploring-postsurvey-data ----
Sys.sleep(3)
Epostworkshop <- Exploring("data/postworkshop_public_archived.csv")
Epostworkshop <- cleanPostworkshopdata(Epostworkshop)
# Postworkshop has about half the entries in comparison with the preworkshop
## ---- plotting-postsurvey-data ----
# 2017 has of course less entries because it contains only answers of half a year
plotByStatusGeneric(Epostworkshop, "Post-survey", "year.survey" , "year of survey response")
# there is not much to do with columns that are repeated with the pre-survey
# #  "When.Taking.Survey"        "First.Time"
# # "Research" is a text field wich is difficult to categorize
# table(Epostworkshop$Involvement)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Involvement" , "level of involvement", c(3,1,2))
# table(Epostworkshop$Practical.Knowledge)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Practical.Knowledge" , "practical knowledge gained", c(1, 3, 2))
plotGeneric(Epostworkshop, "Post-survey", "Practical.Knowledge" ,
            "practical knowledge gained vs level of involvement", c(1, 3, 2),"Involvement", c(3,1,2))
# #####The folowwing will be better with a Likert plot
# # "Organize.Data"             "Use.OpenRefine"            "Import.Python"
# # [13] "Import.R"                  "Visualizations.in.Python"  "Visualizations.in.R"       "Construct.SQL"
# # [17] "Use.command.line"
# # For information of each question
# table(Epostworkshop$Organize.Data)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Organize.Data" , "better understanding on how to organize data in spreadsheets", c(5,1,4,2,6,3))
# table(Epostworkshop$Use.OpenRefine)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Use.OpenRefine" , "better understanding on how to use OpenRefine for data cleaning", c(5,1,4,2,6,3))
# table(Epostworkshop$Import.Python)
# it seems like half of the workshops did not cover python
plotByStatusGeneric(Epostworkshop, "Post-survey", "Import.Python" , "better understanding on how to import a file in Python and work with the data",  c(5,1,4,2,6,3))
# table(Epostworkshop$Visualizations.in.Python)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Visualizations.in.Python" , "better understanding on how to do visualizations in Python",  c(5,1,4,2,6,3))
# table(Epostworkshop$Import.R)
# It seems like almost half (40%) of the workshops covered R
plotByStatusGeneric(Epostworkshop, "Post-survey", "Import.R" , "better understanding on how to import a file in R and work with the data",  c(5,1,4,2,6,3))
# table(Epostworkshop$Visualizations.in.R)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Visualizations.in.R" , "better understanding on how to do visualizations in R",  c(5,1,4,2,6,3))
# table(Epostworkshop$Construct.SQL)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Construct.SQL" , "better understanding on how to construct SQL queries",  c(5,1,4,2,6,3))
# table(Epostworkshop$Use.command.line)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Use.command.line" , "better understanding on how to use command line",  c(5,1,4,2,6,3))
# table(Epostworkshop$Skill.Level.Prior)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Skill.Level.Prior" , "data management and analysis skills prior the workshop", c(4,1,3,2,5))
# Combined plot
plotGeneric(Epostworkshop, "Post-survey", "Skill.Level.Prior" ,
            "skills prior the workshop vs level of involvement", c(4,1,3,2,5),"Involvement", c(3,1,2))
# table(Epostworkshop$Skill.Level.Following)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Skill.Level.Following" , "data management and analysis skills following the workshop", c(3,2,4,1))
# Combined plot
plotGeneric(Epostworkshop, "Post-survey", "Skill.Level.Following" ,
            "skills level following the workshop vs level of involvement",  c(3,2,4,1),"Involvement", c(3,1,2))
# table(Epostworkshop$Application)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Application" , "can immediately applied what was learned at the workshop", c(4,1,3,2,5))
# Combined plot
plotGeneric(Epostworkshop, "Post-survey", "Application" ,
            "can immediately applied what was learned vs level of involvement",  c(4,1,3,2,5),"Involvement", c(3,1,2))
# needs to be a big squared plot
plotGeneric(Epostworkshop, "Post-survey", "Application" ,
            "can immediately applied what was learned vs skill level prior the workshop",  c(4,1,3,2,5),"Skill.Level.Prior", c(4,1,3,2,5))

# table(Epostworkshop$Worth.My.Time)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Worth.My.Time" , "the workshop was worth my time", c(4,1,3,2,5))
# Combined plot
plotGeneric(Epostworkshop, "Post-survey", "Worth.My.Time" ,
            "the workshop was worth my time vs level of involvement",  c(4,1,3,2,5),"Involvement", c(3,1,2))
# table(Epostworkshop$Material)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Material" , "the material matched the workshop description", c(4,1,3,2,5))
# table(Epostworkshop$Recommend)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Recommend" , "would recommend the workshop", c(4,1,3,2,5))
# Combined plot # big square plot
# great relationship
plotGeneric(Epostworkshop, "Post-survey", "Worth.My.Time" ,
            "the workshop was worth my time vs I will recommend this workshop",  c(4,1,3,2,5),"Recommend", c(4,1,3,2,5))
# Combined plot
plotGeneric(Epostworkshop, "Post-survey", "Recommend" ,
            "I will recommend this workshop vs level of involvement",  c(4,1,3,2,5),"Involvement", c(3,1,2))
# Combined plot
plotGeneric(Epostworkshop, "Post-survey", "Recommend" ,
            "I will recommend this workshop vs it was worth my time",  c(4,1,3,2,5),"Worth.My.Time", c(4,1,3,2,5))
# table(Epostworkshop$Instructors.Effective)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Instructors.Effective" , "were the instructors effective in teaching the workshop?", c(1,2,5,4,3))
# Combined plot
# great relationship
plotGeneric(Epostworkshop, "Post-survey", "Instructors.Effective" ,
            "were the instructors effective in teaching vs I will recommend this workshop",  c(1,2,5,4,3),"Recommend", c(4,1,3,2,5))
# table(Epostworkshop$Instructors.Enthusiastic)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Instructors.Enthusiastic" , "were the instructors enthusiastic about the workshop?", c(1,2,4,3))
# Combined plot
# great relationship
plotGeneric(Epostworkshop, "Post-survey", "Instructors.Effective" ,
            "instructors were effective in teaching vs instructors were enthusiastic",  c(1,2,5,4,3),"Instructors.Enthusiastic", c(1,2,4,3))
## ---- plotting-postsurvey-dataUS ----
# table(Epostworkshop$Workshop.in.US)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Workshop.in.US" , "the workshop was in the US", c(2,1))
# # age and gender are not shown in the PDF questionnaire
# # not very necesary as given in the presurvey
# table(Epostworkshop$Age)
plotByStatusGeneric(Epostworkshop, "Post-survey", "Age" , "age")
# table(Epostworkshop$Race.White) # given that is the majority
plotByStatusGeneric(Epostworkshop, "Post-survey", "Race.White" , "white")
# Filter all of those who did not take the survey in the US
EpostworkshopUS <- subset(Epostworkshop, Workshop.in.US == "Yes")
EpostworkshopUS <- droplevels(EpostworkshopUS)
# table(EpostworkshopUS$Workshop.in.US)
# table(EpostworkshopUS$Gender)
plotByStatusGeneric(EpostworkshopUS, "Post-survey", "Gender" , "gender")

# wordclouds
myWordCloud(Epostworkshop$Research, "Post-survey_Research")
# ############################################################################
## ---- plotting-pre-postsurvey-dataUS ----
# not very interesting
#multiplot(plotByGender(EpreworkshopUS, "Pre- survey"),
#          plotByGender(EpostworkshopUS, "Post- survey"), cols=2)
# Gender and status only US surveys
plotByGenderStatus(EpreworkshopUS, "Pre-survey")
plotByGenderStatus(EpostworkshopUS, "Post-survey")
# filter not answered
newpreGS <- ExcludeNANotGiven(Epreworkshop)
newpostGS <- ExcludeNANotGiven(Epostworkshop)
plotByGenderStatus(newpreGS, "Pre-survey-filtered")
plotByGenderStatus(newpostGS, "Post-survey-filtered")
# Multiplot
#multiplot(plotByGender(newpreGS, "Pre-survey"),
#          plotByGender(newpostGS, "Post-survey"), cols=2)
