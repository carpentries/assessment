#' ---
#' title: "Analysis of Software Carpentry's Post-Workshop Surveys"
#' author: "Kari L. Jordan"
#' contributor: Ben Marwick
#' date: "April 2017"
#' ---

# The following is an analysis of the post-workshop survey data collected for Software 
# Carpentry workshops from March 2015 through March 2017

# Confirm working directory
getwd()

# Set working directory
setwd ("/Users/kariljordan/Data_Carpentry/fork/public-survey-info/data/public_data/")

# Load CSV and assign to dataframe.
data <- read.csv("swc_postworkshop_data_archived_scrubbedMarch2017.csv", na.strings = "")

# Load the libraries.
library(dplyr)
library(ggplot2)
library(knitr)

# When are participants taking the survey?
table(data$When.Taking.Survey)

data_when_taking_survey_tally <- 
  data %>%
  group_by(When.Taking.Survey) %>% 
  tally() %>% 
  filter(!is.na(When.Taking.Survey)) %>% 
  arrange(desc(n))

#BM# we can tidy the text so it plots more prettily
x <- as.character(data_when_taking_survey_tally$When.Taking.Survey)
#BM# put sentence every 4 spaces and insert line break
x1 <- strsplit(x, "^[^ ]*(?: [^ ]*){4}\\K ", perl=TRUE)
#BM# update data frame with new column of tidy text
data_when_taking_survey_tally$When.Taking.Survey.tidy <- 
sapply(x1, function(i) paste(i, collapse = "\n"))
         
ggplot(data_when_taking_survey_tally, 
       aes(reorder(When.Taking.Survey.tidy, n),
           n)) +
  geom_bar(stat = 'identity') +
  #BM# added line break in axis title: \n
  ggtitle("When are you taking\nthe post-workshop survey?") +
  xlab("") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14) 

# Feedback about the workshop overall.
# The amount of information covered at the workshop was reasonable for allotted time.
data_information_tally <- 
  data %>%
  group_by(Information) %>% 
  tally() %>% 
  filter(!is.na(Information)) %>% 
  #BM# remove column with no name on the plot
  filter(Information != "") %>% 
  arrange(desc(n))

ggplot(data_information_tally, 
       aes(reorder(Information, n),
           n)) +
  geom_bar(stat = 'identity') +
  #BM# added line break in axis title: \n
  xlab("Information Covered") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

# The overall atmosphere of the workshop was welcoming.
data_atmosphere_tally <- 
  data %>%
  group_by(Atmosphere) %>% 
  tally() %>% 
  filter(!is.na(Atmosphere)) %>% 
  #BM# remove column with no name on the plot
  filter(Atmosphere != "") %>% 
  arrange(desc(n))

ggplot(data_atmosphere_tally, 
       aes(reorder(Atmosphere, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Welcoming Atmosphere") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

# I learned skills that I will be able to use in my research/work.
data_skills_tally <- 
  data %>%
  group_by(Skills) %>% 
  tally() %>% 
  filter(!is.na(Skills)) %>% 
  #BM# remove column with no name on the plot
  filter(Skills != "") %>% 
  arrange(desc(n))

ggplot(data_skills_tally, 
       aes(reorder(Skills, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Learned Skills for My Work") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

# The material presented matched the workshop description.
data_material_tally <- 
  data %>%
  group_by(Material) %>% 
  tally() %>% 
  filter(!is.na(Material)) %>% 
  #BM# remove column with no name on the plot
  filter(Material != "") %>% 
  arrange(desc(n))

ggplot(data_material_tally, 
       aes(reorder(Material, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Material Matched Description") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

# I would recommend this workshop to a friend/colleague.
data_recommend_tally <- 
  data %>%
  group_by(Recommend) %>% 
  tally() %>% 
  filter(!is.na(Recommend)) %>% 
  #BM# remove column with no name on the plot
  filter(Recommend != "") %>% 
  arrange(desc(n))

ggplot(data_recommend_tally, 
       aes(reorder(Recommend, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Would Recommend") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

# The workshop was worth my time.
data_worth_tally <- 
  data %>%
  group_by(Worth) %>% 
  tally() %>% 
  filter(!is.na(Worth)) %>% 
  #BM# remove column with no name on the plot
  filter(Worth != "") %>% 
  arrange(desc(n))

ggplot(data_worth_tally, 
       aes(reorder(Worth, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Workshop Worth My Time") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

# How did you perceive the pace of the workshop?
table(data$Pace)

data_pace_tally <- 
  data %>%
  group_by(Pace) %>% 
  tally() %>% 
  filter(!is.na(Pace)) %>% 
  #BM# remove column with no name on the plot
  filter(Pace != "") %>% 
  arrange(desc(n))

ggplot(data_pace_tally, 
       aes(reorder(Pace, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Workshop Pace") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

# How was the balance of lecture to hands-on work?
table(data$Balance)

data_balance_tally <- 
  data %>%
  group_by(Balance) %>% 
  tally() %>% 
  filter(!is.na(Balance)) %>% 
  #BM# remove column with no name on the plot
  filter(Balance != "") %>% 
  arrange(desc(n))

ggplot(data_balance_tally, 
       aes(reorder(Balance, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Balance of Lecture to Hands-On") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

# Were there enough helpers at the workshop?
table(data$Enough.Helpers)
#--------------------------------------------------------
# BM # New approach! Let's try the Likert package!
library(likert)
library(purrr)

#-----------------------------------------
# BM # find the cols with 'agree' etc
cols_with_Agree <- map_lgl(data, ~`%in%`("Agree", .x))
data_agree <-  data[ , cols_with_Agree]
# BM # convert to factor
data_agree <- map_if(data_agree, 
                     is.character, 
                     as.factor)

# BM # plot
data_agree_likert <-  likert(as.data.frame(data_agree))
plot(data_agree_likert)

#-----------------------------------------
# BM # find the cols with 'often' etc
cols_with_Often <- map_lgl(data, ~`%in%`("Often", .x))
data_often <-  data[ , cols_with_Often]
# BM # convert to factor
data_often <- map_if(data_often, 
                     is.character, 
                     as.factor)

# BM # plot
data_often_likert <-  likert(as.data.frame(data_often))
plot(data_often_likert)

#-----------------------------------------
# BM # find the cols with 'little' etc
cols_with_Little <- map_lgl(data, ~`%in%`("Little or no knowledge of topic", .x))
data_little <-  data[ , cols_with_Little]
# BM # convert to factor
data_little <- map_if(data_little, 
                      is.character, 
                      as.factor)

# BM # plot
data_little_likert <-  likert(as.data.frame(data_little))
plot(data_little_likert)

#-----------------------------------------
# BM # find the cols with 'knowledge increased' etc
cols_with_knowledge <- map_lgl(data, ~`%in%`("Knowledge increased a great deal", .x))
data_knowledge <-  data[ , cols_with_knowledge]
# BM # convert to factor
data_knowledge <- map_if(data_knowledge, 
                         is.character, 
                         as.factor)
# BM # some cols don't have all the possible responses, so 
# BM # we need to apply all the factor levels to all the cols. What is the max number of levels?
map_int(data_knowledge, ~length(levels(.x)))
# BM # ten, so we use a random col with 11 levels and 
# BM # apply this to all:

data_knowledge <- 
  lapply(data_knowledge, 
         factor, 
         levels = levels(data_knowledge$Unix.Shell.Intimidating), 
         labels = levels(data_knowledge$Unix.Shell.Intimidating))

# BM # plot
data_knowledge_likert <-  likert(as.data.frame(data_knowledge))
plot(data_knowledge_likert)

# BM # ... you get the idea... you can copy-paste these code blocks for the other cols with different answer formats

# How much of the information presented at this workshop was new to you?
table(data$New.Information)

data_new_information_tally <- 
  data %>%
  group_by(New.Information) %>% 
  tally() %>% 
  filter(!is.na(New.Information)) %>% 
  #BM# remove column with no name on the plot
  filter(New.Information != "") %>% 
  arrange(desc(n))

ggplot(data_new_information_tally, 
       aes(reorder(New.Information, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("How much of the info was new?") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

# After the workshop, how did your motivation to learn more 
# about these topics change?



# How would you describe your ability to do the following tasks?

# Demographics (Status, Research Domain, Gender)
table(data$Status)
table(data$Research.Domain)
table(data$Gender)

# Plot of gender
plot(data$Gender)
plot(data$Status)
