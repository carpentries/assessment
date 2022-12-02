library(tidyverse)
library(fs)
library(ggh4x)
library(ggthemes)
# remotes::install_github("MCMaurer/MCMsBasics)
library(MCMsBasics)
source("theme_carpentries.R")

dc <- read_csv("clean-data/session_participants_cleaned.csv")


# visualizations ----------------------------------------------------------

dc %>% 
  count(session_type, session_name) %>% 
  ggplot(aes(y = session_type, x = n)) +
  geom_point(alpha = 0.5) +
  theme_carpentries() +
  labs(title = "Attendance by session type",
       subtitle = "Attendance = 5+ mins in Zoom recording",
       x = "Attendees") +
  theme(axis.title.y = element_blank())

ggsave("images/attendence_sessiontype.jpg", width = 10, height = 8)

dc %>% 
  count(minutes, session_name) %>% 
  mutate(minutes = factor(minutes, ordered = T) %>% 
           fct_relabel(~paste(., "minutes"))) %>% 
  ggplot(aes(y = minutes, x = n)) +
  geom_point(alpha = 0.5) +
  theme_carpentries() +
  labs(title = "Attendance by session length",
       subtitle = "Attendance = 5+ mins in Zoom recording",
       x = "Attendees") +
  theme(axis.title.y = element_blank())

ggsave("images/attendence_sessionlength.jpg", width = 10, height = 8)

dc %>% 
  distinct(participant, country) %>% 
  count(country) %>% 
  ggplot(aes(x = n, y = reorder(country, n),
             xend = n, yend = reorder(country, n))) +
  geom_point() +
  geom_segment(x = 0) +
  theme_carpentries() +
  theme(axis.title.y = element_blank()) +
  labs(title = "Attendees by country",
       x = "Total attendees")

ggsave("images/attendees_country.jpg", width = 10, height = 8)

dct <- dc %>% 
  mutate(session_name = str_remove(session_name, ":.*") %>% 
           str_remove("/ Ach.*"),
         session_type = ifelse(is.na(session_type), "Other", session_type)) %>% 
  count(session_name, session_type) %>%
  mutate(session_type = factor(session_type) %>% 
           fct_lump_min(min = 2)) 

dct %>% 
  ggplot(aes(y = reorder(session_name, n), x = n,
             xend = n, yend = reorder(session_name, n),
             color = session_type)) +
  geom_point() +
  geom_segment(x = 0) +
  theme_carpentries() +
  scale_color_colorblind(guide = guide_stringlegend()) +
  theme(axis.title.y = element_blank(), legend.position = c(0.7,0.5)) +
  labs(title = "Attendance by session",
       subtitle = "Attendance = 5+ mins in Zoom recording.\nX axis labels correspond to min, max, and quartiles.",
       x = "Attendees",
       color = "") +
  scale_x_quantile(val = dct$n)

ggsave("images/attendence_sessionname.jpg", width = 10, height = 8)
