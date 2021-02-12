#sets the working directory to the correct folder
setwd("~/Documents/DS710/ds710fall2016finalprojectproposal")

#reads in the file produced in python
states <- read.csv('fileop.csv')

#looks at the first 5 rows of the data to make sure it is the correct file
head(states)

#looks at the summary of the states data
#I notice there is almost an even split between the WI and FL data
#Also most of the data appears to be from 12/16/2016
summary(states)

#puts the count of states into a variable and outputs a graph
countstates <- table(states['State'])
barplot(countstates, xlab = 'States', ylab = 'Count of Tweets', 
        main = 'Count Tweets by WI and FL')

#create weather variables
weather1 = 'weather'
weather2 = 'Weather'
weather3 = 'wx'
weather4 = 'WX'

#looks for the weather statements in the tweets
WX1 <- states$State[grep(weather1,states$Tweet, perl = T)]
WX2 <- states$State[grep(weather2,states$Tweet, perl = T)]
WX3 <- states$State[grep(weather3,states$Tweet, perl = T)]
WX4 <- states$State[grep(weather4,states$Tweet, perl = T)]

#combineds the outputs
allwx <- c(WX1,WX2,WX3,WX4)
allwx

wxtable <- table(allwx)
wxtable
#fl = 2, WI = 8
percents <- c((2/99),(8/100))
barplot(percents, xlab = 'FL     States      WI',ylab = 'percent'
        ,main = 'percent of tweets mentioning weather')
