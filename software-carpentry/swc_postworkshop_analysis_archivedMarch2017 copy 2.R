#' ---
#' title: "Analysis of Software Carpentry's Post-Workshop Surveys"
#' author: "Kari L. Jordan, PhD"
#' date: "March 7, 2017"
#' ---

# The following is an analysis of the post-workshop survey data collected for Software 
# Carpentry workshops from March 2015 through March 2017

# Confirm working directory
getwd()

# Load CSV and assign to dataframe.
data <- read.csv("public_data/swc_postworkshop_data_archived_scrubbedMarch2017.csv", 
                 header = TRUE)

# Update packages
update.packages()

# When are participants taking the survey?
table(data$When.Taking.Survey)

data_when_taking_survey_tally <- 
  data %>%
  group_by(When.Taking.Survey) %>% 
  tally() %>% 
  filter(!is.na(When.Taking.Survey)) %>% 
  arrange(desc(n))

ggplot(data_when_taking_survey_tally, 
       aes(reorder(When.Taking.Survey, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("When are you taking the post-workshop survey?") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

# An alternate way to plot when learners are taking the survey.
plot(data$When.Taking.Survey)
# I like the second plot better. I need to add labels and a title.

# Feedback about the workshop overall.
# The amount of information covered at the workshop was reasonable for allotted time.
data_information_tally <- 
  data %>%
  group_by(Information) %>% 
  tally() %>% 
  filter(!is.na(Information)) %>% 
  arrange(desc(n))

ggplot(data_information_tally, 
       aes(reorder(Information, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Information Covered-Reasonable for Time Alloted") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)

# The overall atmosphere of the workshop was welcoming.
data_atmosphere_tally <- 
  data %>%
  group_by(Atmosphere) %>% 
  tally() %>% 
  filter(!is.na(Atmosphere)) %>% 
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
  arrange(desc(n))

ggplot(data_balance_tally, 
       aes(reorder(Balance, n),
           n)) +
  geom_bar(stat = 'identity') +
  xlab("Balance of Lecture to Hands-On") +
  ylab("n") +
  coord_flip() +
  theme_bw(base_size = 14)