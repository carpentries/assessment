# setwd("/Users/kariljordan/Data_Carpentry/my-forked-repos/private-data/learner-assessment/data-carpentry/"
predata <- read.csv("180118_dcpre.csv", stringsAsFactors = FALSE)
postdata <- read.csv("180108_dcpost.csv", stringsAsFactors = FALSE)

predata$uniqueID = predata[["Please.enter.a.unique.identifier.as.follows..Number.of.siblings..as.numeric....First.two.letters.of.the.city.you.were.born.in..lowercase....First.three.letters.of.your.current.street..lowercase...Example..If.I.have.0.siblings..was.born.in.Arlington..and.live.on.Creekwater.Street..my.unique.identifier.would.be.0arcre.This.identifier.will.be.confidential.to.you.and.will.help.us.compare.your.answers.with.the.post.survey."]]
predata[["Please.enter.a.unique.identifier.as.follows..Number.of.siblings..as.numeric....First.two.letters.of.the.city.you.were.born.in..lowercase....First.three.letters.of.your.current.street..lowercase...Example..If.I.have.0.siblings..was.born.in.Arlington..and.live.on.Creekwater.Street..my.unique.identifier.would.be.0arcre.This.identifier.will.be.confidential.to.you.and.will.help.us.compare.your.answers.with.the.post.survey."]] = NULL

# Which in the table of unique IDs appeared only once?
# Which gave us the position of the vector. We needed to pull out the names, not positions
# Which of the unique IDs are in this list. Only give us the rows in predata which match this condition
# and give us all the columns. We assigned it to a new data frame.
list_unique_ids_pre = names(which(table(predata$uniqueID) == 1))
predata_unique = predata[which(predata$uniqueID %in% list_unique_ids_pre),]

# Do the same for the post data
postdata$uniqueID = postdata[["Please.enter.a.unique.identifier.as.follows..Number.of.siblings..as.numeric....First.two.letters.of.the.city.you.were.born.in..lowercase....First.three.letters.of.your.current.street..lowercase...Example..If.I.have.0.siblings..was.born.in.Arlington..and.live.on.Creekwater.Street..my.unique.identifier.would.be.0arcre.This.identifier.will.be.confidential.to.you.and.will.help.us.compare.your.answers.with.the.pre.survey."]]
postdata[["Please.enter.a.unique.identifier.as.follows..Number.of.siblings..as.numeric....First.two.letters.of.the.city.you.were.born.in..lowercase....First.three.letters.of.your.current.street..lowercase...Example..If.I.have.0.siblings..was.born.in.Arlington..and.live.on.Creekwater.Street..my.unique.identifier.would.be.0arcre.This.identifier.will.be.confidential.to.you.and.will.help.us.compare.your.answers.with.the.pre.survey."]] = NULL

list_unique_ids_post = names(which(table(postdata$uniqueID) == 1))
postdata_unique = postdata[which(postdata$uniqueID %in% list_unique_ids_post),]

# Now we are ready to combine. Pre responses are labeled with an 'x' and post with a 'y'
combined_data <- merge(predata_unique, postdata_unique, by = "uniqueID")
