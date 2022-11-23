# CarpentryCon 2022 Evaluation Report Code
# Author: Kelly Barnes (kbarnes@carpentries.org)
# Date: 22 November 2022

#### Load Libraries #####
library(tidyverse)
library(lubridate)
library(ggtext)


#### Define Carpentries Colors ####
# This code creates colors based on The Carpentries brand identity
carp_black <- "#383838"
carp_midnight <- "#001483"
carp_fire <- "#FF4955"
carp_golden <- "#FFC700"
carp_buttercup <- "#FFF7F1"
carp_lake <- "#0044d7"
carp_pond <- "#719eff"
carp_sky <- "#E6F1FF"
carp_dew <- "#F5F8FF"
carp_fog <- "#E6EAF0"
carp_mist <- "#E6EEF8"
carp_sunrise <- "#FC757E"
carp_dawn <- "#FFD6D8"
carp_sunshine <- "#FFE7A8"

two_colors <- c(carp_midnight, carp_fire)
three_colors <- c(carp_golden, carp_midnight, carp_fire)
four_colors <- c(carp_golden, carp_midnight, carp_fire, carp_black)
five_colors <-
  c(carp_black, carp_lake, carp_golden, carp_midnight, carp_fire)
six_colors <-
  c(carp_sunrise,
    carp_lake,
    carp_golden,
    carp_midnight,
    carp_black,
    carp_fire)


#### Carpentries Report Theme #########
# This code creates a custom Carpentries ggplot theme
theme_carp <- function()
{
  theme_bw(base_size = 10) %+replace%
    theme(
      plot.title =
        element_text(
          size = 14,
          face = "bold",
          hjust = 0.5,
          margin = margin(0, 0, 15, 0)
        ),
      axis.text = element_text(size = 9),
      axis.text.x = element_text(angle = 0, vjust = 0.5),
      axis.text.y = element_text(size = 9),
      axis.title = element_text(
        size = 10,
        face = "bold",
        vjust = 0.5
      ),
      strip.text = element_text(face = "bold"),
      strip.background = element_blank(),
      panel.grid = element_blank(),
      legend.position = "top"
      
    )
}

# This code reads in the Typeform survey data
survey <- read_csv("raw_2022.09.06.csv")

#### Data Cleaning #############

# Renaming Variables
survey <- survey %>%
  rename(
    person_id = "#",
    timezone = "From what time zone did you join the conference?",
    country = "From what country did you attend the conference?",
    prev_involved = "Prior to attending the conference, how involved were you in The Carpentries?",
    met_expectations = "The conference met my expectations.",
    worth_time = "Participation in the conference was worth my time.",
    goals_met = "My personal goals for attending the conference were met.",
    contributions_valued = "My contributions to discussions were heard and valued.",
    stay_engaged = "I intend to stay engaged with The Carpentries now that the conference is over.",
    more_prepared = "I feel more prepared to serve in my role(s) in The Carpentries community.",
    welcoming_environment = "The conference provided a welcoming, positive, and supportive environment.",
    enough_sessions_per_timezone = "The conference had enough sessions that were convenient for my time zone.",
    develop_skills = "The conference helped me develop new skills.",
    zoom = "The use of zoom for streaming sessions",
    etherpad = "The use of Etherpad for collaborative note taking",
    youtube = "The use of YouTube for asynchronous viewing of sessions",
    communication = "Communications surrounding the conference",
    community_interaction = "Level of interaction with other community members",
    keynote = "Keynote presentations",
    most_useful = "What do you feel was the most useful part of the conference?",
    future_event = "What would you like to see at a future CarpentryCon event?",
    something_learned = "What is something you learned through your participation in the conference?",
    net_promoter = "How likely are you to recommend CarpentryCon to a friend or colleague?",
    additional_comments = "Please provide any additional comments relevant to your experience as a CarpentryCon participant.",
    request_no_accom = "I did not request accommodations",
    request_ematerials = "Electronic copies of materials in advance",
    request_sign = "Sign language interpreters",
    request_cc = "Closed captions",
    request_translation = "Translation services",
    request_mobile_data = "Funds for mobile data",
    request_care = "Funds for caregiver/childcare services",
    request_other = "Other accommodations",
    use_no_accom = "I did not use any accommodations",
    use_ematerials = "Electronic copies of materials in advance_1",
    use_sign = "Sign language interpreters_1",
    use_cc = "Closed captions_1",
    use_translation = "Translation services_1",
    use_mobile_data = "Funds for mobile data_1",
    use_care = "Funds for caregiver/childcare services_1",
    use_other = "Other accommodations_1",
    satisfied_ematerials = "How satisfied were you with the following accommodation:\n*Electronic copies of materials in advance*",
    satisfied_sign = "How satisfied were you with the following accommodation:\n*Sign language interpreters*",
    satisfied_cc = "How satisfied were you with the following accommodation:\n*Closed captions*",
    satisfied_translation = "How satisfied were you with the following accommodation:\n*Translation services *",
    satisfied_mobile_data = "How satisfied were you with the following accommodation:\n*Funds for mobile data*",
    satisfied_care = "How satisfied were you with the following accommodation:\n*Funds for caregiver/childcare services*",
    satisfied_other = "How satisfied were you with the following accommodation:\n*Other accommodations*",
    text_abt_conference_qs = "Please provide any comments relevant to your above responses.",
    text_abt_tech = "Please provide any comments relevant to your above responses._1",
    text_abt_accom = "Please provide any comments relevant to your experience with accomodations."
  )

#### Report Sections and Respective Figures ####
##### Networking opportunities providing community interactions (Figure 1) ######
# The code in this section creates Figure 1 in the 2022 report

# This file was created by exporting zoom data
num_attendees_by_session <-
  read_csv("num_attendees_by_session (1) - num_attendees_by_session (1).csv")

avg_attendees_by_session <-
  num_attendees_by_session %>% group_by(session_type) %>%
  summarise(Average = round(mean(num_attendees)))

avg_attendees_by_session$session_type <-
  factor(
    avg_attendees_by_session$session_type,
    levels = c(
      "Keynote",
      "Breakout Session",
      "Conference Welcome",
      "Lightning Presentations",
      "Skill Up",
      "Other",
      "Closing Ceremony",
      "Sprint",
      "Informal Meetup"
    )
  )

avg_attendees_by_session_plot <- avg_attendees_by_session %>%
  filter(!is.na(session_type)) %>%
  ggplot(aes(x = session_type, y = Average)) +
  geom_col(fill = carp_midnight) +
  geom_text(
    aes(label = Average),
    color = carp_sky,
    size = 3,
    fontface = "bold",
    hjust = 1.5
  ) +
  labs(x = "Session Type", y = "Average Attendees") +
  coord_flip() +
  theme_carp() +
  theme(
    axis.title.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.x = element_blank()
  )



##### Participants build their personal capacity (Figure 2) ########
# The code in this section creates Figure 2 in the 2022 Report
capacity_questions <-
  survey %>% select(person_id, more_prepared, develop_skills)

capacity_questions <-
  capacity_questions %>% gather(key = "Question", value = "Answer", -person_id)

capacity_questions <- capacity_questions %>%
  filter(!is.na(Answer))

capacity_questions$Answer <-
  factor(
    capacity_questions$Answer,
    levels = 1:5,
    labels = c("1 - Strongly disagree", "2", "3", "4", "5 - Strongly agree")
  )

capacity_question_names <- conference_question1_names <- c(
  "The conference helped me develop new skills (N = 63)",
  "I feel more prepared to serve in my role(s) in The Carpentries community (N = 63)"
)

capacity_questions_summary <- capacity_questions %>%
  group_by(Question, Answer) %>%
  summarize(Number = n()) %>%
  ungroup %>%  group_by(Question) %>%
  mutate(proportion = Number / sum(Number))

capacity_plot <-
  ggplot(capacity_questions_summary,
         aes(
           x = factor(Question),
           y = proportion,
           fill = Answer
         )) +
  geom_bar(stat = "identity", width = 0.5) +
  scale_fill_manual(values = five_colors, drop = FALSE) +
  scale_x_discrete(
    drop = FALSE,
    labels = function(x)
      lapply(
        strwrap(
          capacity_question_names,
          width = 20,
          simplify = FALSE
        ),
        paste,
        collapse = "\n"
      )
  ) +
  geom_text(
    data = capacity_questions_summary,
    aes(
      label = scales::percent(proportion, 1),
      y = proportion,
      group = Answer
    ),
    position = position_stack(vjust = 0.4),
    color = carp_sky,
    size = 3 ,
    check_overlap = TRUE,
    fontface = "bold"
  ) +
  theme_carp() +
  theme(
    legend.position = "right",
    axis.title = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    legend.title = element_blank()
  )

##### An Inclusive Event (Figure 4) ######
# The code in this section creates Figure 4 in the 2022 Report

welcoming_questions <-
  survey %>% select(person_id, contributions_valued, welcoming_environment)

welcoming_questions <-
  welcoming_questions %>% gather(key = "Question", value = "Answer", -person_id)

welcoming_questions <-
  welcoming_questions %>% filter(!is.na(Answer))

welcoming_questions$Answer <-
  factor(
    welcoming_questions$Answer,
    levels = 1:5,
    labels = c("1 - Strongly disagree", "2", "3", "4", "5 - Strongly agree")
  )

welcoming_question_names <-
  c(
    "My contributions to discussions were heard and valued (N = 61)",
    "The conference provided a welcoming, positive, and supportive environment (N = 63)"
  )

welcoming_questions_summary <- welcoming_questions %>%
  group_by(Question, Answer) %>%
  summarize(Number = n()) %>%
  ungroup %>%  group_by(Question) %>%
  mutate(proportion = Number / sum(Number))

welcoming_plot <-
  ggplot(welcoming_questions_summary,
         aes(
           x = factor(Question),
           y = proportion,
           fill = Answer
         )) +
  geom_bar(stat = "identity", width = 0.5) +
  scale_fill_manual(values = five_colors, drop = FALSE) +
  scale_x_discrete(
    drop = FALSE,
    labels = function(x)
      lapply(
        strwrap(
          welcoming_question_names,
          width = 20,
          simplify = FALSE
        ),
        paste,
        collapse = "\n"
      )
  ) +
  geom_text(
    data = welcoming_questions_summary,
    aes(
      label = scales::percent(proportion, 1),
      y = proportion,
      group = Answer
    ),
    position = position_stack(vjust = 0.4),
    color = carp_sky,
    size = 3 ,
    check_overlap = TRUE,
    fontface = "bold"
  ) +
  theme_carp() +
  theme(
    legend.position = "right",
    axis.title = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    legend.title = element_blank()
  )

##### An Accessible Event (Figures 5 - 7) ##############

accom_req_used_table <- survey %>%
  select(
    person_id,
    request_no_accom,
    request_ematerials,
    request_sign,
    request_cc,
    request_translation,
    request_mobile_data,
    request_care,
    request_other,
    use_no_accom,
    use_ematerials,
    use_sign,
    use_cc,
    use_translation,
    use_mobile_data,
    use_care,
    use_other
  )

# This csv file is just where I manually compiled the number requested and used for each type of accommodation because I couldn't figure out how to do it in R quickly, I think
req_used <- read_csv("req_used.csv")

accom_labels <-
  c(
    "None",
    "Ematerials",
    "Closed Captioning",
    "Sign Language Interpretation",
    "Translation",
    "Other",
    "Funds for Mobile Data",
    "Funds for Childcare or Caregiving Services"
  )

req_used$Accommodation <-
  factor(
    req_used$Accommodation,
    levels = c(
      'none',
      'ematerials',
      'cc',
      'sign',
      'translation',
      'other',
      'mobile_data',
      'care'
    ),
    labels = accom_labels
  )

# Creates Figure 5 in the 2022 Report
accom_requested_used_plot <-
  ggplot(req_used, aes(x = Accommodation, y = Number, fill = Requested_Used)) +
  geom_col(position = "dodge") +
  geom_text(
    data = req_used,
    aes(label = Number),
    position = position_dodge(width = 1),
    color = carp_sky,
    size = 3 ,
    check_overlap = TRUE,
    fontface = "bold",
    vjust = 1.25
  ) +
  scale_x_discrete(
    drop = FALSE,
    labels = function(x)
      lapply(
        strwrap(accom_labels, width = 15, simplify = FALSE),
        paste,
        collapse = "\n"
      )
  ) +
  scale_fill_manual(values = two_colors) +
  labs(fill = "Requested/Used") +
  theme_carp() +
  theme(
    axis.title.y = element_blank(),
    axis.ticks.y = element_blank(),
    axis.text.y = element_blank(),
    legend.position = "right"
  )

# Creates Figure 6 in 2022 Report
accom_questions <-
  survey %>% select(
    person_id,
    satisfied_ematerials,
    satisfied_sign,
    satisfied_cc,
    satisfied_translation,
    satisfied_other
  )

accom_questions <-
  accom_questions %>% gather(key = "Question", value = "Answer", -person_id)

accom_questions <- accom_questions %>% filter(!is.na(Answer))

accom_questions$Question <- as.factor(accom_questions$Question)

accom_questions$Answer <-
  factor(
    accom_questions$Answer,
    levels = 1:5,
    labels = c("1 - Not at all satisfied", "2", "3", "4", "5 - Extremely satisfied")
  )

accom_question_names <-
  c(
    "Closed captions (N = 17)",
    "Electronic copies of materials in advance (N = 5)",
    "Other (N = 2)",
    "Sign language interpreters (N = 3)",
    "Translation services (N = 10)"
  )

accom_questions_summary <- accom_questions %>%
  group_by(Question, Answer) %>%
  summarise(Number = n()) %>%
  ungroup %>% group_by(Question) %>%
  mutate(proportion = Number / sum(Number))

accom_plot <-
  ggplot(accom_questions_summary,
         aes(
           x = factor(Question),
           y = proportion,
           fill = Answer
         )) +
  geom_bar(stat = "identity", width = 0.5) +
  scale_fill_manual(values = five_colors, drop = FALSE) +
  scale_x_discrete(
    drop = FALSE,
    labels = function(x)
      lapply(
        strwrap(accom_question_names, width = 15, simplify = FALSE),
        paste,
        collapse = "\n"
      )
  ) +
  geom_text(
    data = accom_questions_summary,
    aes(
      label = scales::percent(proportion, 1),
      y = proportion,
      group = Answer
    ),
    position = position_stack(vjust = 0.4),
    color = carp_sky,
    size = 3 ,
    check_overlap = TRUE,
    fontface = "bold"
  ) +
  theme_carp() +
  theme(
    legend.position = "right",
    axis.title = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    legend.title = element_blank()
  )

#Creates Figure 7 in the 2022 Report
funds_requested <-
  survey %>% select(person_id, satisfied_mobile_data, satisfied_care)

funds_requested <-
  funds_requested %>% gather(key = "Question", value = "Answer", -person_id)
funds_requested <- funds_requested %>% filter(!is.na(Answer))
funds_requested$Question <- as.factor(funds_requested$Question)
funds_requested$Answer <-
  factor(
    funds_requested$Answer,
    levels = 1:5,
    labels = c("1 - Not at all satisfied", "2", "3", "4", "5 - Extremely satisfied")
  )
accom_question2_names <-
  c("Funds for caregiver/childcare services (N = 2)",
    "Funds for mobile data (N = 4)")

funds_requested_summary <- funds_requested %>%
  group_by(Question, Answer) %>%
  summarise(Number = n()) %>%
  ungroup %>% group_by(Question) %>%
  mutate(proportion = Number / sum(Number))

funds_plot <-
  ggplot(funds_requested_summary,
         aes(
           x = factor(Question),
           y = proportion,
           fill = Answer
         )) +
  geom_bar(stat = "identity", width = 0.5) +
  scale_fill_manual(values = five_colors, drop = FALSE) +
  scale_x_discrete(
    drop = FALSE,
    labels = function(x)
      lapply(
        strwrap(accom_question2_names, width = 20, simplify = FALSE),
        paste,
        collapse = "\n"
      )
  ) +
  geom_text(
    data = funds_requested_summary,
    aes(
      label = scales::percent(proportion, 1),
      y = proportion,
      group = Answer
    ),
    position = position_stack(vjust = 0.4),
    color = carp_sky,
    size = 3 ,
    check_overlap = TRUE,
    fontface = "bold"
  ) +
  theme_carp() +
  theme(
    legend.position = "right",
    axis.title = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    legend.title = element_blank()
  )


##### Participants satisfied with conference experience (Figure 8 - 11)####
# The code in this section creates Figure 8 in the 2022 Report
conference_experience <-
  survey %>% select(person_id,
                    met_expectations,
                    worth_time,
                    goals_met,
                    stay_engaged)

conference_experience <-
  conference_experience %>% gather(key = "Question", value = "Answer", -person_id)

conference_experience <-
  conference_experience %>% filter(!is.na(Answer))

conference_experience$Answer <-
  factor(
    conference_experience$Answer,
    levels = 1:5,
    labels = c("1 - Strongly disagree", "2", "3", "4", "5 - Strongly agree")
  )

conference_experience_names <- c(
  "My personal goals for attending the conference were met (N = 63)",
  "The conference met my expectations (N = 63)",
  "I intend to stay engaged with The Carpentries now that the conference is over (N = 63)",
  "Participation in the conference was worth my time (N = 63)"
)

conference_experience_summary <- conference_experience %>%
  group_by(Question, Answer) %>%
  summarize(Number = n()) %>%
  ungroup %>%  group_by(Question) %>%
  mutate(proportion = Number / sum(Number))

conference_experience_plot <-
  ggplot(conference_experience_summary,
         aes(
           x = factor(Question),
           y = proportion,
           fill = Answer
         )) +
  geom_bar(stat = "identity", width = 0.5) +
  scale_fill_manual(values = five_colors, drop = FALSE) +
  scale_x_discrete(
    drop = FALSE,
    labels = function(x)
      lapply(
        strwrap(
          conference_experience_names,
          width = 15,
          simplify = FALSE
        ),
        paste,
        collapse = "\n"
      )
  ) +
  geom_text(
    data = conference_experience_summary,
    aes(
      label = scales::percent(proportion, 1),
      y = proportion,
      group = Answer
    ),
    position = position_stack(vjust = 0.4),
    color = carp_sky,
    size = 3 ,
    check_overlap = TRUE,
    fontface = "bold"
  ) +
  theme_carp() +
  theme(
    legend.position = "right",
    axis.title = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    legend.title = element_blank()
  )

# Creates Figure 9 in the 2022 Report

satisfaction_tech <-
  survey %>% select(person_id, zoom, etherpad, youtube)

satisfaction_tech <-
  satisfaction_tech %>% gather(key = "Question", value = "Answer", -person_id)

satisfaction_tech <- satisfaction_tech %>% filter(!is.na(Answer))

satisfaction_tech$Answer <-
  factor(
    satisfaction_tech$Answer,
    levels = 1:5,
    labels = c("1 - Not at all satisfied", "2", "3", "4", "5 -  Extremely satisfied")
  )

satisfaction_tech_names <-
  c(
    "The use of Etherpad for collaborative note taking (N = 63)",
    "The use of Youtube for asynchronous viewing of sessions (N = 47)",
    "The use of Zoom for streaming sessions (N = 63)"
  )

satisfaction_tech_summary <- satisfaction_tech %>%
  group_by(Question, Answer) %>%
  summarise(Number = n()) %>%
  ungroup %>% group_by(Question) %>%
  mutate(proportion = Number / sum(Number))

satisfaction_tech_plot <-
  ggplot(satisfaction_tech_summary,
         aes(
           x = factor(Question),
           y = proportion,
           fill = Answer
         )) +
  geom_bar(stat = "identity", width = 0.5) +
  scale_fill_manual(values = five_colors, drop = FALSE) +
  scale_x_discrete(
    drop = FALSE,
    labels = function(x)
      lapply(
        strwrap(
          satisfaction_tech_names,
          width = 20,
          simplify = FALSE
        ),
        paste,
        collapse = "\n"
      )
  ) +
  geom_text(
    data = satisfaction_tech_summary,
    aes(
      label = scales::percent(proportion, 1),
      y = proportion,
      group = Answer
    ),
    position = position_stack(vjust = 0.4),
    color = carp_sky,
    size = 3 ,
    check_overlap = TRUE,
    fontface = "bold"
  ) +
  theme_carp() +
  theme(
    legend.position = "right",
    axis.title = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    legend.title = element_blank()
  )

# Creates Figure 10 in the 2022 Report

community_questions <-
  survey %>% select(person_id, communication, community_interaction, keynote)

community_questions <-
  community_questions %>% gather(key = "Question", value = "Answer", -person_id)

community_questions <-
  community_questions %>% filter(!is.na(Answer))

community_questions$Question <-
  as.factor(community_questions$Question)
community_questions$Answer <-
  factor(
    community_questions$Answer,
    levels = 1:5,
    labels = c("1 - Not at all satisfied", "2", "3", "4", "5 -  Extremely satisfied")
  )

community_question_names <-
  c(
    "Communications surrounding the conference (N = 57)",
    "Level of interaction with other community members (N = 58)",
    "Keynote presentations (N = 44)"
  )

community_questions_summary <- community_questions %>%
  group_by(Question, Answer) %>%
  summarise(Number = n()) %>%
  mutate(proportion = Number / sum(Number))

community_plot <-
  ggplot(community_questions_summary,
         aes(
           x = factor(Question),
           y = proportion,
           fill = factor(Answer)
         )) +
  geom_bar(stat = "identity", width = 0.5) +
  scale_fill_manual(values = five_colors, drop = FALSE) +
  scale_x_discrete(
    drop = FALSE,
    labels = function(x)
      lapply(
        strwrap(
          community_question_names,
          width = 20,
          simplify = FALSE
        ),
        paste,
        collapse = "\n"
      )
  ) +
  geom_text(
    data = community_questions_summary,
    aes(
      label = scales::percent(proportion, 1),
      y = proportion,
      group = Answer
    ),
    position = position_stack(vjust = 0.4),
    color = carp_sky,
    size = 3 ,
    check_overlap = TRUE,
    fontface = "bold"
  ) +
  theme_carp() +
  theme(
    legend.position = "right",
    axis.title = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    legend.title = element_blank()
  )

# Net Promoter - Creates Figure 11 in the 2022 Report

# How to calculate net promoter score: https://monkeylearn.com/blog/nps-analysis/

net_promoter_table <- survey %>% select(net_promoter)

net_promoter_table$net_promoter <-
  as.numeric(net_promoter_table$net_promoter)

net_promoter_table <- net_promoter_table %>%
  mutate(Category = ifelse(
    net_promoter < 7,
    'Detractor',
    ifelse(net_promoter > 8, 'Promoter', 'Passive')
  ))

net_promoter_table <-
  net_promoter_table %>% filter(!is.na(net_promoter))

net_promoter_table <- net_promoter_table %>%
  filter(!is.na(Category)) %>%
  group_by(Category) %>%
  summarise(Number = n())

net_promoter_table <- net_promoter_table %>%
  mutate(Proportion = Number / sum(Number))

nps_plot <-
  ggplot(net_promoter_table, aes(x = Category, y = Number)) +
  geom_col(fill = three_colors) +
  geom_text(
    aes(label = scales::percent(Proportion, 1)),
    color = carp_sky,
    vjust = 2,
    fontface = "bold"
  ) +
  theme_carp() +
  labs(x = "Category (N = 63)") +
  theme(
    axis.title.y = element_blank(),
    axis.ticks.y = element_blank(),
    axis.text.y = element_blank(),
    axis.title.x = element_blank()
  )



##### Previous Involvement in The Carpentries (Appendix D)########
# Creates table and plot for number of people who selected each Level of previous involvement
# Not Used in 2022 Report
prev_invovled_table <- survey %>%
  group_by(prev_involved) %>%
  summarise(Number = n())

prev_invovled_table$prev_involved <-
  as.factor(prev_invovled_table$prev_involved)

prev_involved_plot <-
  ggplot(prev_invovled_table, aes(x = prev_involved, y = Number)) +
  geom_col(fill = carp_midnight) +
  geom_label(aes(label = Number, group = prev_involved), vjust = 1.5) +
  labs(x = "Level of Previous Involvement", title = "Previous Involvement with The Carpentries") +
  theme_carp() +
  theme(
    axis.title.y = element_blank(),
    axis.ticks.y = element_blank(),
    axis.text.y = element_blank()
  )

# Creates the crosstab used in 2022 Report (Appendix D)
prev_future_involve <-
  survey %>% select(person_id, prev_involved, stay_engaged)

prev_future_involve$prev_involved <-
  factor(prev_future_involve$prev_involved, levels = 0:10)

prev_future_involve$stay_engaged <-
  factor(prev_future_involve$stay_engaged, levels = 1:5)

prev_future_involve <- prev_future_involve %>%
  group_by(prev_involved, stay_engaged) %>%
  tally() %>%
  spread(prev_involved, n)


#### Time Zone (Appendix E) ############
# Creates a table that shows how many people selected each response to enough sessions in my timezone question (1 - 5)
enough_timezone_table <- survey %>%
  group_by(enough_sessions_per_timezone) %>%
  summarise(Number = n()) %>%
  mutate(Proportion = Number / sum(Number))

enough_timezone_table$enough_sessions_per_timezone <-
  factor(
    enough_timezone_table$enough_sessions_per_timezone,
    levels = 1:5,
    labels = c("1 - Strongly disagree", "2", "3", "4", "5 - Strongly agree")
  )

# Plots how many people selected each response to enough sessions in my timezone (Not Used in 2022 Report, so still a bit messy)
timezone_plot <-
  ggplot(enough_timezone_table,
         aes(x = enough_sessions_per_timezone, y = Proportion)) +
  geom_bar(stat = "identity", width = 0.5, fill = four_colors) +
  scale_x_discrete(drop = FALSE) +
  geom_text(
    data = enough_timezone_table,
    aes(label = scales::percent(Proportion, 1), y = Proportion),
    position = position_stack(vjust = 0.4),
    color = carp_sky,
    size = 3 ,
    check_overlap = TRUE,
    fontface = "bold"
  ) +
  theme_carp() +
  theme(
    axis.title = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks = element_blank(),
    legend.title = element_blank()
  )


# Creates crosstab table that was used in 2022 report (Appendix E)
timezone_table2 <-
  survey %>% select(person_id, timezone, enough_sessions_per_timezone)
group

timezone_crosstab <- timezone_table2 %>%
  group_by(timezone, enough_sessions_per_timezone) %>%
  tally() %>%
  spread(timezone, n)


######## Save Plots ########
# This code will save the plots in your working directory. These files will be a higher resolution than if you export from RStudio.
#Figure 1
ggsave(
  'avg_attendees_by_session_plot.png',
  plot = avg_attendees_by_session_plot,
  device = 'png',
  dpi = 300,
  width = 8,
  height = 3
)

#Figure 2
ggsave(
  '2capacity_plot.png',
  plot = capacity_plot,
  device = 'png',
  dpi = 300,
  width = 5,
  height = 3
)
#Figure 4
ggsave(
  '3welcoming_plot.png',
  plot = welcoming_plot,
  device = 'png',
  dpi = 300,
  width = 4.5,
  height = 3
)
#Figure 5
ggsave(
  'accom_requested_used_plot.png',
  plot = accom_requested_used_plot,
  device = 'png',
  dpi = 300,
  width = 8,
  height = 3
)

#Figure 6
ggsave(
  '8accom_plot.png',
  plot = accom_plot,
  device = 'png',
  dpi = 300,
  width = 6,
  height = 3
)
#Figure 7
ggsave(
  '9funds_plot.png',
  plot = funds_plot,
  device = 'png',
  dpi = 300,
  width = 5,
  height = 3
)
#Figure 8
ggsave(
  '4conference_experience_plot.png',
  plot = conference_experience_plot,
  device = 'png',
  dpi = 300,
  width = 6,
  height = 3
)
#Figure 9
ggsave(
  '5satisfaction_tech_plot.png',
  plot = satisfaction_tech_plot,
  device = 'png',
  dpi = 300,
  width = 6,
  height = 3
)
#Figure 10
ggsave(
  '6community_plot.png',
  plot = community_plot,
  device = 'png',
  dpi = 300,
  width = 6,
  height = 3
)
#Figure 11
ggsave(
  '7nps_plot.png',
  plot = nps_plot,
  device = 'png',
  dpi = 300,
  width = 4,
  height = 3
)
