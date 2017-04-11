download.file('http://sdtaylor.github.io/dplyr/shrub_data.csv','shrub_data.csv')
install.packages('dplyr')
#Grab dataframe and first column that we want to focus on. 
#Will produce a new dataframe with only one column.
select(shrubs, site)
select()
#Show heights greater than 5
filter(shrubs, height>5)
#Arrange by ascending height
arrange(shrubs, height)
#Arrange by descending height
arrange(shrubs,-height)
#Filters information for sites that equal forest
filter(shrubs, site == 'forest')
#Filters those not equal to forest
filter(shrubs,site!='forest')
#Taking our dataframe and adding a new column called area whose value is length x width
#Mutate adds a column and keeps all the other columns as well
shrubs_area = mutate(shrubs, area = length * width)
shrubs_area
shrubs_area = mutate(shrubs, area = length * width, radius = width/2)
shrubs_area
filter(shrubs, site == 'ridge', height>5)
filter(shrubs,height>7,height<3)
filter(shrubs,height>3 | height<7)
filter(shrubs,height>3 , height<7)
filter(shrubs,height>=3 , height<7)
#Make a dataframe with shrubs from experiment A and with height less than 5
filter(shrubs, experiment == 'A', height <5)
shrubs
shrubs_ridge = filter(shrubs, site == 'ridge')
shrubs_ridge
shrubs_ridge_subset = select(shrubs_ridge, site, height)

shrubs_ridge_subset
shrubs
#Takes the output and makes it the first input in the argument after the pipe
shrubs %>% select(site, length)

shrubs_ridge = shrubs %>% select(site,length) %>% filter(site=='ridge')
shrubs_ridge
#Make a dataframe with the volume of only shrubs with a height of >4
shrubs %>%
  mutate(volume = length*width*height) %>%
  filter(height>4)

shrubs
#Group_by and summarise to find mean of site
#Takes column, finds all unique items, and groups them together
shrubs %>%
  group_by(site) %>%
  summarise(length_mean = mean(length))
shrubs %>%
  group_by(site) %>%
  summarise(length_mean = mean(length), length_sd = sd(length))

#Make a dataframe of the total shrub volume at all 4 sites
shrubs %>%
  mutate(volume = length*width*height)%>%
  group_by(site) %>%
  summarise(total_shrub_volume=sum(volume))

shrubs %>% group_by(site) %>%
  summarize(total_volume = sum(length*width*height))