#! /usr/bin/env Rscript

#
#   Description: report plotting functions
#   Analyzing pre and post survey results from Data Carpentry 
#   Repo: https://github.com/carpentries/assessment-projects/tree/master/data-carpentry-projects
#   Date: 2017, August 09 - 27
#   Copyright (C) 2017 Paula Andrea Martinez
#   ORCID iD 0000-0002-8990-1985

source(file = "scripts/installpkg.R")

#####################################
# download files

# download.file("https://raw.githubusercontent.com/carpentries/assessment/master/learner-assessment/data-carpentry/archived-analysis/data/preworkshop_public_archived.csv", 
#                 destfile = "data/preworkshop_public_archived.csv", method = "wininet")
# 
#  
# download.file("https://raw.githubusercontent.com/carpentries/assessment/master/learner-assessment/data-carpentry/archived-analysis/data/postworkshop_public_archived.csv", 
#               destfile = "data/postworkshop_public_archived.csv", method = "wininet")

############################################################################
# Libraries
library(extrafont)
library(RColorBrewer)
library(scales)
library(ggplot2)
############################################################################
# Set blind-friendly colour Palette
# http://www.cookbook-r.com/Graphs/Colors_%28ggplot2%29/
# The palette with grey:
cbPalette <- c("#56B4E9", "#009E73", "#F0E442", "#0072B2", "#999999","#E69F00", "#D55E00", "#CC79A7", "#90EE90")
# To use for fills, add

scale_fill_manual(values = cbPalette)
# To use for line and point colors, add
scale_colour_manual(values = cbPalette)

# ###########################################################################
# Exploring the dataset
Exploring <- function(filecsv){
  ps <- read.csv(filecsv)
  print(filecsv)
  #print(paste("Data contains", 
  #             dim(ps)[1], "rows and", 
  #             dim(ps)[2], "columns")) 
  return(ps)
}
# ###########################################################################
# Reordering levels of a factor
reorderLevels <- function(x, vec){
  x <- factor(x,levels(x)[vec])
  #print(levels(x))
  return(x)
}
# ###########################################################################
# Define a helper function to change NAs from factor to character
empty_as_na <- function(x){
  if("factor" %in% class(x)) x <- as.character(x) ## since ifelse wont work with factors
  ifelse(as.character(x)!="", x, "No answer")
}
# ###########################################################################
# http://www.cookbook-r.com/Graphs/Multiple_graphs_on_one_page_%28ggplot2%29/
# Multiple plot function
#
# ggplot objects can be passed in ..., or to plotlist (as a list of ggplot objects)
# - cols:   Number of columns in layout
# - layout: A matrix specifying the layout. If present, 'cols' is ignored.
#
# If the layout is something like matrix(c(1,2,3,3), nrow=2, byrow=TRUE),
# then plot 1 will go in the upper left, 2 will go in the upper right, and
# 3 will go all the way across the bottom.
#
multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  library(grid)
  
  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  
  numPlots = length(plots)
  
  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                     ncol = cols, nrow = ceiling(numPlots/cols))
  }
  
  if (numPlots==1) {
    print(plots[[1]])
    
  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))
    
    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))
      
      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}
# ###########################################################################
# Cleaning Epreworkshop
cleanPreworkshopdata <- function(df){
  #print(colnames(df))
  # "Start.Date" # munging to year.survey
  # "End.Date"                 "When.Taking.Survey" # ignored      
  # "First.Time" # ignored
  # "Status"   #munging and reorder
  # "Status.Other"   # ignored          
  # "Department"   # ignored 
  # "Discipline"   #munging and reorder
  # "Discipline.Other"   # ignored       
  # [10] "OS"                       "With.Friend"              "Programming.Usage"       
  # [13] "Current.Tools.1"          "Current.Tools.2"          "Current.Tools.3"         
  # [16] "Current.Tools.4"          "Current.Tools.5"          "Current.Tools.6"         
  # [19] "Current.Tools.7"      # ignored       
  # "Have.Dataset"  #munging names          "Data.Management.Strategy"
  # [22] "Data.Analysis.Workflow"   "Data.Organization"        "Using.Scripting.Language"
  # [25] "Using.R.or.Python"        "Value.of.SQL.or.Python"   "Hope.to.Learn"           
  # [28] "Workshop.in.US"           "Age"                      "Gender"                  
  # [31] "Gender.Other"             "Race"                     "Race.Other"  
  df$year.survey <- as.factor(format(as.Date(as.character(df$Start.Date), "%m/%d/%y" ),"%Y"))
  #print(levels(df$year.survey ))
  levels(df$Status)[1] <- "No Answer"
  levels(df$Status)[5] <- "Other"
  levels(df$Status)[8] <- "Undergraduate Student"
  df$Status <- reorderLevels(df$Status, c(8,3,6,2,7,4,5,1))
  levels(df$Discipline)[1] <- "No Answer"
  levels(df$Have.Dataset)[2] <- "I am working on generating data"
  levels(df$Have.Dataset)[3] <- "I do not have data yet"
  levels(df$Have.Dataset)[4] <- "I have data and done a fair bit of analysis"
  levels(df$Have.Dataset)[5] <- "I have data but haven't started analyzing it"
  levels(df$Gender)[1] <- "No Answer"
  df$Gender <- reorderLevels(df$Gender, c(2,3,4,1))
  levels(df$Race)[1] <- "No Answer"
  levels(df$Race)[7] <- "Other"
  df$Race <- reorderLevels(df$Race, c(2,3,4,5,6,9,8,7,1))
  print(paste("Data contains", 
              dim(df)[1], "rows and", 
              dim(df)[2], "columns")) 
  write.csv(file = "data/clean_presurvey.csv", df)
  return(df)
}
# ###########################################################################
# Cleaning Epostworkshop
cleanPostworkshopdata <- function(df){
  #print(dim(df))
  #print(colnames(df))
  # [1] "Start.Date"                "End.Date"                  "When.Taking.Survey"        "First.Time"               
  # [5] "Research"                  "Status"                    "Status.Other"              "Involvement"              
  # [9] "Practical.Knowledge"       "Organize.Data"             "Use.OpenRefine"            "Import.Python"            
  # [13] "Import.R"                  "Visualizations.in.Python"  "Visualizations.in.R"       "Construct.SQL"            
  # [17] "Use.command.line"          "Skill.Level.Prior"         "Skill.Level.Following"     "Data.Organization"        
  # [21] "Using.Scripting.Language"  "Using.R.or.Python"         "Value.of.SQL.or.Python"    "Application"              
  # [25] "Worth.My.Time"             "Material"                  "Recommend"                 "Instructors.Clear.Answers"
  # [29] "Instructors.Considerate"   "Instructors.Effective"     "Instructors.Enthusiastic"  "Workshop.in.US"           
  # [33] "Age"                       "Gender"                    "Gender.Other"              "Race.American.Indian"     
  # [37] "Race.Asian"                "Race.Black"                "Race.Hispanic"             "Race.Islander"            
  # [41] "Race.White"                "Race.Prefer.Not"           "Race.Other"          
  df$year.survey <- as.factor(format(as.Date(as.character(df$Start.Date), "%m/%d/%y" ),"%Y"))
  #print(levels(df$year.survey ))
  levels(df$Status)[1] <- "No Answer"
  levels(df$Status)[5] <- "Other"
  levels(df$Status)[8] <- "Undergraduate Student"
  df$Status <- reorderLevels(df$Status, c(8,3,6,2,7,4,5,1))
  levels(df$Gender)[1] <- "No Answer"
  df$Gender <- reorderLevels(df$Gender, c(2,3,4,1))
  # capitalize levels
  levels(df$Workshop.in.US)[2] <- "No"
  levels(df$Workshop.in.US)[3] <- "Yes"
  print(paste("Data contains", 
              dim(df)[1], "rows and", 
              dim(df)[2], "columns")) 
  write.csv(file = "data/clean_postsurvey.csv", df)
  return(df)
  
}
# ###########################################################################
# ######### plotting ##############
font_import(pattern="[T/t]ahoma", prompt = FALSE)
loadfonts()
# ###########################################################################
# Make barplots by Status 
# Needs a dataframe and a title string, the name of the first column, its string name, and order vector
# however this last attribute is not necessary
plotByStatusGeneric <- function(df, ti, colna, colstr, reorderingvec = NULL){
  #StartbyFiltering colna Not Answered
  #print(dim(df))
  #print(colna)
  y <- droplevels(subset(df, df[[colna]] != ""))
  #print(dim(y))
  print(table(y[[colna]]))
  if(!is.null(reorderingvec)){
    y[[colna]] <- reorderLevels(y[[colna]], reorderingvec)
  }
  numoffacets <- length((table(y[[colna]])))
  perc <- c()
  for (f in 1:numoffacets){
    perc[f] <- round((table(y[[colna]])[f] * 100 / dim(y)[1]), digits = 2)
  }
  #####Plot Function Generic
  ps <- ggplot(data = y, aes( x = Status, fill= Status)) +
    #coord_flip() +
    geom_bar(aes(y = (..count..)/sum(..count..))) +
    scale_fill_manual(values = cbPalette) +
    theme_light() +
    labs(x = "Status", y = paste("Total respondents", dim(y)[1], "shown in percentages")) +
    ggtitle(paste(ti, "\n responses by status and", colstr)) +
    scale_y_continuous(labels = scales::percent) +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme(panel.grid.major.x = element_blank(),
          axis.text.x=element_blank(),
          axis.ticks.x=element_blank(),
          legend.position="bottom",
          legend.title = element_blank(),
          strip.background = element_rect(fill =  "#888888"),
          strip.placement = "outside",
          strip.switch.pad.grid = unit(0.1, "cm"),
          text = element_text(family="Tahoma", size = 11))+
    facet_grid(reformulate(colna), ".") # . ~ colna
  ps <- ps +  ggplot2::annotate(geom = "text", label = paste0(perc, "%"), size = 4, 
                                x = 4.5, y = dim(y)[1]/6000, fontface="bold",
                                colour = "#888888", family="Tahoma")
  print(ps)
  ggsave(filename =  paste("./plots/", ti, "_","Status_", gsub("\\.", "",colna),
                           ".png", sep = ""),
         width = 15, height = 8, dpi = 200)
}
# ###########################################################################
# A try to make a generic plot separated by status and 2 other facets
# Needs a dataframe and a title string, the name of the first column, its string name, and order vector
# The name of the second column, and order vector
plotGeneric <- function(df, ti, colna, colstr, reorderingvec = NULL, ext, reorderingvec2 = NULL ){
  #print(dim(df))
  #print(colna)
  #print(ext)
  #StartbyFiltering colna Not Answered
  y <- droplevels(subset(df, df[[colna]] != ""))
  y <- droplevels(subset(y, y[[ext]] != ""))
  #print(dim(y))
  if(!is.null(reorderingvec)){
    y[[colna]] <- reorderLevels(y[[colna]], reorderingvec)
  }
  if(!is.null(reorderingvec2)){
    y[[ext]] <- reorderLevels(y[[ext]], reorderingvec2)
  }
  #print(table(y[[colna]],y[[ext]]))
  print(table(y[[colna]]))
  print(table(y[[ext]]))
  numoffacets <- length((table(y[[colna]],y[[ext]])))
  perc <- c()
  for (f in 1:numoffacets){
    perc[f] <- round((table(y[[colna]],y[[ext]])[f] * 100 / dim(y)[1]), digits = 2)
  }
  #####Plot Function Generic
  ps <- ggplot(data = y, aes( x = Status, fill= Status) )+
    #coord_flip() +
    geom_bar(aes(y = (..count..)/sum(..count..))) +
    scale_fill_manual(values = cbPalette) +
    theme_light() + 
    labs(x = "Status", y = paste("Total respondents", dim(y)[1], "shown in percentages")) +
    ggtitle(paste(ti, "\n responses by status and", colstr)) +
    scale_y_continuous( labels = percent_format())+
    theme(panel.grid.major.x =  element_blank(),
          plot.title   = element_text(hjust = 0.5),
          axis.text.x  = element_blank(),
          axis.ticks.x = element_blank(),
          legend.position = "bottom",
          legend.title    = element_blank(),
          strip.background = element_rect(fill =  "#888888"),
          strip.placement = "outside",
          strip.switch.pad.grid = unit(0.1, "cm"),
          text=element_text(family="Tahoma", size = 11))+
    #facet_grid(reformulate(colna), ".") # . ~ colna
    facet_grid(eval(reformulate(colna, ext)))
  ps <- ps +  ggplot2::annotate(geom = "text", label = paste0(perc, "%"), size = 4, 
                                x = 4.5, y = dim(y)[1]/6000, fontface="bold",
                                colour = "#888888", family="Tahoma")
  ggsave(filename =  paste("./plots/", ti, "_",ext, "_", gsub("\\.", "",colna),
                           ".png", sep = ""),
         width = 15, height = 8, dpi = 200)
  print(ps)
}
# ###########################################################################
# Plots for Gender, Race and Age should be only from US respondents
# ###########################################################################
# Plots by Gender should be only taken for answers within US 
# Needs a dataframe and a title string, the order vector is not necessary
plotByGender <- function(df, ti, reorderingvec=NULL){
  if(!is.null(reorderingvec)){
    df[["Gender"]] <- reorderLevels(df[["Gender"]], reorderingvec)
  }
  ps <- ggplot(data = df, aes( x = Gender, fill = Gender )) +
    #coord_flip() +
    geom_bar(aes(y = (..count..)/sum(..count..)) ) +
    scale_fill_manual(values = cbPalette) +
    theme_light() +
    labs(x = "Gender", y = paste("Total respondents", dim(df)[1], "shown in percentages")) +
    ggtitle(paste(ti, "\n responses by gender") ) +
    scale_y_continuous(labels = scales::percent, limits = c(0, 0.7)) +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme(axis.text.x=element_blank(),
          axis.ticks.x=element_blank(),
          legend.position="bottom",
          legend.title = element_blank())
  print(ps)
}
# ###########################################################################
# Plot simple barplot
# Needs a dataframe and a title string, the name of the column, and how to label that column
plotBarplot <- function(df, ti, xnam, xnamelab){
  print(table(df[[xnam]]))
  ps <- ggplot(data = df, aes_string( x = xnam, fill= xnam)) +
    geom_bar(aes(y = (..count..)/sum(..count..))) +
    scale_fill_manual(values = c(cbPalette, brewer.pal(8, "Set3"))) +
    theme_light() +
    labs(x = xnamelab, y = paste("Total respondents", dim(df)[1], "shown in percentages")) +
    ggtitle(paste(ti, "\n responses by", xnamelab)) +
    scale_y_continuous(labels = scales::percent) +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme(panel.grid.major.x =  element_blank(),
          plot.title   = element_text(hjust = 0.5),
          axis.text.x  = element_blank(),
          axis.ticks.x = element_blank(),
          legend.position = "bottom",
          legend.title    = element_blank(),
          strip.background = element_rect(fill =  "#888888"),
          strip.placement = "outside",
          strip.switch.pad.grid = unit(0.1, "cm"),
          text=element_text(family="Tahoma", size = 11))
  print(ps)
  ggsave(filename =  paste("plots/",ti,"_",xnamelab, ".png", sep = ""),
         width = 12, height = 6, dpi = 120)
}
# ###########################################################################
# Plot by Gender and Status
# Needs a dataframe and a title string
plotByGenderStatus <- function(df, ti){
  ps <- ggplot(data = df, aes( x = Gender, fill= Gender)) +
    geom_bar(aes(y = (..count..)/sum(..count..))) +
    scale_fill_manual(values = cbPalette) +
    theme_light() +
    labs(x = "Gender", y = paste("Total respondents", dim(df)[1], "shown in percentages")) +
    ggtitle(paste(ti, "\n responses by gender and status")) +
    scale_y_continuous(labels = scales::percent) +
    theme(plot.title = element_text(hjust = 0.5)) +
    theme(axis.text.x=element_blank(),
          axis.ticks.x=element_blank(),
          legend.position="bottom",
          legend.title = element_blank())+
    facet_grid(. ~ Status)
  print(ps)
  #ggsave(filename =  paste("./plots/GendervsStatus-",ti,".png", sep = ""),
  #       width = 12, height = 6, dpi = 120)
}
# ###########################################################################
# Excluding "Prefer not to say" and "No answer" from Gender and Status
ExcludeNANotGiven <- function(df){
  newpredf <- data.frame(Gender = factor(df$Gender),
                         Status = factor(df$Status))
  #print(head(newpredf))
  #print(str(newpredf))
  #print(table(newpredf$Gender))
  #print(table(newpredf))
  x <- subset(newpredf, newpredf$Gender == "Male" |newpredf$Gender == "Female", drop = T)
  x <- subset(x, x$Status != "No Answer", drop = T)
  #print(table(x))
  y <- droplevels(x)
  #print(table(y))
  print(dim(y))
  return(y)
}
# ###########################################################################
# Make a Wordcloud , receives a column , and a name for the plot 
myWordCloud <- function(coln, nam){
  # Reference example for wordcloud 
  # http://www.sthda.com/english/wiki/text-mining-and-word-cloud-fundamentals-in-r-5-simple-steps-you-should-know
  library(tm)
  library(SnowballC)
  library(wordcloud)
  mydata <- as.character(coln) 
  #First, we need to create a corpus
  mydata <- Corpus(VectorSource(mydata))
  #Next, we will convert the corpus to a plain text document
  mydata <- tm_map(mydata, content_transformer(tolower))
  # Remove numbers
  mydata <- tm_map(mydata, removeNumbers)
  # Remove english common stopwords
  mydata <- tm_map(mydata, removeWords, stopwords("english"))
  # Remove your own stop word
  # specify your stopwords as a character vector
  mydata <- tm_map(mydata, removeWords, c("the", "this")) 
  # Remove punctuations
  mydata <- tm_map(mydata, removePunctuation)
  # Eliminate extra white spaces
  mydata <- tm_map(mydata, stripWhitespace)
  # Text stemming
  #mydata <- tm_map(mydata, stemDocument)
  # matrix
  dtm <- TermDocumentMatrix(mydata)
  m <- as.matrix(dtm)
  v <- sort(rowSums(m), decreasing=TRUE)
  d <- data.frame(word = names(v), freq=v)
  head(d, 10)
  set.seed(1234)
  
  wordcloud(words = d$word, freq = d$freq, scale=c(3,.3),
            random.order = FALSE,   
            colors = cbPalette)
}
