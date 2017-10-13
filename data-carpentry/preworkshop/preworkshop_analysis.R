---
  title: "Analysis of Data Carpentry Pre-Workshop Survey Data"
author: "Kari L. Jordan, PhD"
date: "March 1, 2017"
---
  
  ```{r echo = FALSE}
# this is a setup that controls what all the other chunks do
library(knitr)
opts_chunk$set(message = FALSE,
               warning = FALSE)
```


#Read in the data, I'm using `readr::read_csv` beause I find this has better default settings than `read.csv`. For example, it does not convert character columns to factors.

```{r}
# Load CSV and assign to dataframe.
library(readr)
my_data <- read_csv("public_data/dc_preworkshop_surveydata_2016March_2017Feb.csv")
```

#Inspect the data, I'm using `dplyr::glimpse` because it gives a nice, easy to read layout.

```{r}
#Inspect the structure of dataframe and column headers. 
library(dplyr)
glimpse(my_data)
```

Using dplyr to make a tally table, similar to how you used `plyr::count`, and `knitr::kable` to print a nice table

```{r}
my_data_status_tally <- 
  my_data %>% 
  group_by(Status) %>% 
  tally() %>% 
  filter(!is.na(Status)) %>% 
  arrange(desc(n))

# take a look 
library(knitr)
kable(my_data_status_tally)
```

Using ggplot2 to make a plot of the counts, using the above table. I use `reorder` to make the bars in order from big to small, I use `coord_flip` to turn the plot on its side so we can easily read the x-axis tick labels, and `base_size` to make the font size a little larger. 

```{r}
library(ggplot2)
ggplot(my_data_status_tally, 
       aes(reorder(Status, n),
           n)) +
  geom_col() +
  xlab("Status") +
  ylab("Count of people") +
  coord_flip() +
  theme_bw(base_size = 14)
```