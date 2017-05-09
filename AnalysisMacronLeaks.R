#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Script File: macronLeaks.R  
# Date of creation: 05 May 2017
# Date of last modification:09 May 2017
# Author: Seraya Maouche <seraya.maouche@iscb.org>
# Short Description: This script provides R code to analyse to #MacronLeaks hashtag
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# Installing required packages
requiredPackages <- c("twitteR","httr","ggplot2","rjson","tm",
                      "gridExtra","lubridate","plotly","RCurl",
                      "wordcloud","RColorBrewer","arules","arulesViz")
install.packages(requiredPackages)


#********************** Load library
library(twitteR)
library(ggplot2)
library(httr)
library(rjson)
library(tm)
library("gridExtra")
library("lubridate")
library("plotly")
library("RCurl")

#**********************  Twitter API authentification 
Type in your app details from Twitter here:
  consumer_key       <- 'your_consumer_key'
consumer_secret    <- 'your_consumer_secret'
access_token       <- 'your_access_token'
access_secret      <- 'your_access_secret'

token <- twitteR::setup_twitter_oauth(consumer_key, consumer_secret, 
                                      access_token, access_secret)

# Extract tweets using the #MacronLeaks 
# Twitter API has limitations on how much tweets you can retrieve. 
tweets <- searchTwitter("#MacronLeaks",n=9999, since='2017-05-04', lang = "en")
print(length(tweets))
print(class(tweets))
tweets[[1]]$isRetweet
print(tweets[[1]])
print(tweets[[1]]$text)
print(tweets[[1]]$screenName)
tweets[[1]]$id
tweets[[1]]$replyToSN
tweets[[1]]$replyToUID
tweets[[1]]$statusSource
tweets[[1]]$created
tweets[[1]]$favorited
tweets[[1]]$retweeted
tweets[[1]]$retweetCount

#***************** Convert Tweets to a dataframe
TweetsDF <- twListToDF(tweets)
print(dim(TweetsDF))
print(colnames(TweetsDF))
print(TweetsDF[1:10,c('created','screenName','favorited','isRetweet','retweetCount','retweeted','retweetCount')])

# Export the tweets
write.table(TweetsDF,"tweetsEng.txt",sep="\t",quote=F)

# Plot the number of tweets for each user
TweetsCount <- table(TweetsDF$screenName)
TweetsCount <- sort(TweetsCount,decreasing=TRUE) 
# Display the top 20 tweets
print(TweetsCount[1:20])
print(length(unique(TweetsDF$screenName)))
barplot(TweetsCount [TweetsCount >= 10], las = 2,cex.names=0.7,col="darkblue")


# Exclude retweets
id_messagesNotRT <- which(!TweetsDF$isRetweet) 
print(length(id_messagesNotRT))
# How much tweets per user
countTweets2 <- table(TweetsDF$screenName[id_messagesNotRT]) 
countTweets2 <- sort(countTweets2,decreasing=TRUE) 
barplot(countTweets2 [countTweets2 >= 5], las = 2,cex.names=0.7, col = "violet")

# Ids of messages which are retweets
idRetweets <- which(TweetsDF$isRetweet)
# number of reweets 
nombreOfRetweets <- TweetsDF$retweetCount[idRetweets] 
index <- order(nombreOfRetweets,decreasing=TRUE) 

# The first 10 Ids with the name of user and retweet count
print(TweetsDF[TweetsDF$isRetweet,][index[1:10],c('screenName','id','retweetCount')])
print(TweetsDF[TweetsDF$isRetweet,][index[1:2],c('text')])

# select only rewteets 
RetweetsDF <- TweetsDF[TweetsDF$isRetweet,][index,] 
first <- !duplicated(RetweetsDF$text) 
print(RetweetsDF$text[first][1:10])
# display their repetion number
print(RetweetsDF$retweetCount[first][1:10])
# Dataframe of first occurence
dfFirst <- RetweetsDF[first,] 

# barplot of number of tweets for most tweeted messages
barplot(dfFirst$retweetCount[1:20], names.arg= dfFirst$id[1:20],las = 2,cex.names=0.7)
hist(dfFirst$retweetCount,main="Histogramme",col="darkred",xlab="Number of Retweets")

# dataframe of unique tweets 
DFUniqueTweets <- TweetsDF[!duplicated(TweetsDF$text),]
print(nrow(DFUniqueTweets))
UniqueTweets <- DFUniqueTweets$text 
print(length(UniqueTweets))
print(UniqueTweets[1])

# Text cleaning
# remove \n 
CleanedTweets <- gsub("\n"," ",UniqueTweets) 
# remove URL 
CleanedTweets <- gsub('http\\S+\\s*',"",CleanedTweets) 
#retrait space
CleanedTweets <- gsub("\\s+"," ",CleanedTweets) 
#remove  "\" 
CleanedTweets  <- gsub("[\\]","",CleanedTweets) 
#retrait space at the end of tweet
CleanedTweets  <- gsub("\\s*$","",CleanedTweets) 
# concert all characters to lowercase 
CleanedTweets  <- tolower(CleanedTweets) 

# remove special characters
CleanedTweets <- gsub("[éèê]","e",CleanedTweets) 
CleanedTweets <- gsub("[àâ]","a",CleanedTweets) 
CleanedTweets <- gsub("[ùû]","u",CleanedTweets)
CleanedTweets <- gsub("[ô]","o",CleanedTweets)

# extract retweet indicator
CleanedTweets <- gsub("rt ","",CleanedTweets) 
print(CleanedTweets[1])

#  remove duplicates 
CleanedTweets <- CleanedTweets[!duplicated(CleanedTweets)] 

# Number of messages
print(length(CleanedTweets))
signatureHasgtags<- regexpr("^#[[:alnum:]_]*",all_mots)

# Retrieve list of hashtags 
hashtagsList <- regmatches(all_mots,signature_hashtag) 

# Number of extracted hashtags 
print(length(hashtagsList))

# How many times each hashtag was used?
nhashtags <- table(hashtagsList)
head(nhashtags)
# Sorted
nhashtags <- sort(nhashtags,decreasing=TRUE) 
print(nhashtags[1:10])

# Plot the cloudword of hashtags
library(wordcloud)
library(RColorBrewer)
wordcloud(names(nhashtags)[-1],nhashtags[-1],scale=c(3,.5),colors=brewer.pal(8, "Dark2"))










