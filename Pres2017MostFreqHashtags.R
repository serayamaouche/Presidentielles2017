#Packages required:
library(twitteR)
library(ggplot2)
library(httr)
library(rjson)
library(tm)
library("gridExtra")
library("lubridate")
library("plotly")
library("RCurl")

# Choix des candidats à analyser (sondage, nombre de parrainages ou un autre critère)
# Sélection des 6 premiers candidats selon les parrainages envoyés au 
# Conseil Consitutionnel le mars 2017
Candidats         <- c("Fillon","Macron","Hamon",
                       "Arthaud","DupontA","Melenchon","MLP")
Parrainages       <- c(1155,464,334,314,205,136,84)

# library("plotly")
df <- data.frame(Candidats = as.factor(Candidats), 
                 Parrainages = Parrainages)

#df$Candidats <- factor(df$Candidats, levels = c("Fillon", "Macron", "Hamon", "Arthaud", "DupontA","Melenchon"))

# Trier le df en fonction du nomnre de parrainage
# df <- df[with(df, order(-Parrainages)),] 
df$Candidats <- factor(df$Candidats, 
                       levels = df$Candidats[order(-df$Parrainages)])

# Plot
p <- ggplot(df , aes(Candidats, Parrainages, fill = Candidats)) + 
  geom_bar(stat = "identity") +
  ggtitle("Les parrainages par candidat - 3 mars 2017")

p <- ggplotly(p)


# Twitter users
# You'd need to set global options with an authenticated app
setup_twitter_oauth(getOption("twitter_consumer_key"),
                    getOption("twitter_consumer_secret"),
                    getOption("twitter_access_token"),
                    getOption("twitter_access_token_secret"))

TwCandidats         <- c("FrancoisFillon","EmmanuelMacron","benoithamon",
                         "n_arthaud","dupontaignan","JLMelenchon","MLP_officiel")


extract.hashes = function(vec){
  
  hash.pattern = "#[[:alpha:]]+"
  have.hash = grep(x = vec, pattern = hash.pattern)
  
  hash.matches = gregexpr(pattern = hash.pattern,
                          text = vec[have.hash])
  extracted.hash = regmatches(x = vec[have.hash], m = hash.matches)
  
  df = data.frame(table(tolower(unlist(extracted.hash))))
  colnames(df) = c("tag","freq")
  df = df[order(df$freq,decreasing = TRUE),]
  return(df)
}

# ************** François Fillon 
twFillon = userTimeline(TwCandidats[1], n = 3200, includeRts=TRUE, excludeReplies=TRUE)
twFillon = twListToDF(twFillon)
vecFillon = twFillon$text
length(vecFillon)

user <- getUser(TwCandidats[1])
followers <- user$getFollowers()
b <- twListToDF(followersFillon)
f_count <- as.data.frame(b$followersCount)
u_id <- as.data.frame(b$id)
u_sname <- as.data.frame(b$screenName)
u_name <- as.data.frame(b$name)
final_df <- cbind(u_id,u_name,u_sname,f_count)
sort_fc <- final_df[order(-f_count),]
colnames(sort_fc) <- c('id','name','s_name','fol_count')


datFillon = head(extract.hashes(vecFillon),30)
names(datFillon) = c('Hashtag','Frequency')
datFillon2 = transform(datFillon,Hashtag = reorder(Hashtag,Frequency))

# dat2 <- dat2[with(dat2, order(-Frequency)),] 
datFillon2$Hashtag <- factor(datFillon2$Hashtag, 
                       levels = datFillon2$Hashtag[order(datFillon2$Frequency)])
write.table(datFillon2, file = "HashtagsFillon.txt",row.names=FALSE, na="",col.names=TRUE, sep=",")

# Plot
p1 <- ggplot(datFillon2 , aes(Hashtag, Frequency, fill = Hashtag)) + 
  geom_bar(stat = "identity") + coord_flip() +
  ggtitle("Les hashtags les plus utilisés par François Fillon")

p1 <- ggplotly(p1)


# **************** Tweets d'Emmanuel Macron
twMacron = userTimeline(TwCandidats[2], n = 3200, includeRts=TRUE, excludeReplies=TRUE)
twMacron = twListToDF(twMacron)
vecMacron = twMacron$text
length(vecMacron)

datMacron = head(extract.hashes(vecMacron),30)
names(datMacron) = c('Hashtag','Frequency')
datMacron2 = transform(datMacron,Hashtag = reorder(Hashtag,Frequency))

# dat2 <- dat2[with(dat2, order(-freq)),] 
datMacron2$Hashtag <- factor(datMacron2$Hashtag, 
                         levels = datMacron2$Hashtag[order(datMacron2$Frequency)])
write.table(datMacron2, file = "HashtagsMacron.txt",row.names=FALSE, na="",col.names=TRUE, sep=",")

# Plot
p2 <- ggplot(datMacron2 , aes(Hashtag, Frequency, fill = Hashtag)) + 
  geom_bar(stat = "identity") + coord_flip() +
  ggtitle("Les hashtags les plus utilisés par Emmanuel Macron")

p2 <- ggplotly(p2)


# Tweets de Benoit Hamon
twHamon  = userTimeline(TwCandidats[3], n = 3200, includeRts=TRUE, excludeReplies=TRUE)
twHamon  = twListToDF(twHamon)
vecHamon = twHamon$text
length(vecHamon)


datHamon = head(extract.hashes(vecHamon),100)
names(datHamon) = c('Hashtag','Frequency')
datHamon2 = transform(datHamon,Hashtag = reorder(Hashtag,Frequency))

# dat2 <- dat2[with(dat2, order(-freq)),] 
datHamon2$Hashtag <- factor(datHamon2$Hashtag, 
                         levels = datHamon2$Hashtag[order(datHamon2$Frequency)])
write.table(datHamon2, file = "HashtagsHamon.txt",row.names=FALSE, na="",col.names=TRUE, sep=",")

# Plot
p3 <- ggplot(datHamon2 , aes(Hashtag, Frequency, fill = Hashtag)) + 
  geom_bar(stat = "identity") + coord_flip() +
  ggtitle("Les hashtags les plus utilisés par Benoit Hamon")

p3 <- ggplotly(p3)

# Tweets de Nathalie Arthaud
twArthaud = userTimeline(TwCandidats[4], n = 3200, includeRts=TRUE, excludeReplies=TRUE)
twArthaud = twListToDF(twArthaud)
vecArthaud = twArthaud$text


datArthaud = head(extract.hashes(vecArthaud),30)
names(datArthaud) = c('Hashtag','Frequency')
datArthaud2 = transform(datArthaud,Hashtag = reorder(Hashtag,Frequency))

# dat2 <- dat2[with(dat2, order(-freq)),] 
datArthaud2$Hashtag <- factor(datArthaud2$Hashtag, 
                          levels = datArthaud2$Hashtag[order(datArthaud2$Frequency)])
write.table(datArthaud2, file = "HashtagsArthaud.txt",row.names=FALSE, na="",col.names=TRUE, sep=",")

# Plot
p4 <- ggplot(datArthaud2 , aes(Hashtag, Frequency, fill = Hashtag)) + 
  geom_bar(stat = "identity") + coord_flip() +
  ggtitle("Les hashtags les plus utilisés par Nathalie Arthaud")

p4 <- ggplotly(p4)


# Tweets de Nicolas Dupont-Aignan
twDupontA  = userTimeline(TwCandidats[5], n = 3200, includeRts=TRUE, excludeReplies=TRUE)
twDupontA  = twListToDF(twDupontA)
vecDupontA = twDupontA$text
length(vecDupontA)


datDupontA = head(extract.hashes(vecDupontA),30)
names(datDupontA) = c('Hashtag','Frequency')
datDupontA2 = transform(datDupontA,Hashtag = reorder(Hashtag,Frequency))

# dat2 <- dat2[with(dat2, order(-freq)),] 
datDupontA2$Hashtag <- factor(datDupontA2$Hashtag, 
                          levels = datDupontA2$Hashtag[order(datDupontA2$Frequency)])
write.table(datDupontA2, file = "HashtagsDupondA.txt",row.names=FALSE, na="",col.names=TRUE, sep=",")


# Plot
p5 <- ggplot(datDupontA2 , aes(Hashtag, Frequency, fill = Hashtag)) + 
  geom_bar(stat = "identity") + coord_flip() +
  ggtitle("Les hashtags les plus utilisés par Nicolas Dupont-Aignan")

p5 <- ggplotly(p5)


# Tweets de Jean-Luc Mélenchon
twMelenchon  = userTimeline(TwCandidats[6], n = 3200, includeRts=TRUE, excludeReplies=TRUE)
twMelenchon  = twListToDF(twMelenchon)
vecMelenchon = twMelenchon$text
length(vecMelenchon)


datMelenchon = head(extract.hashes(vecMelenchon),30)
names(datMelenchon) = c('Hashtag','Frequency')
datMelenchon2 = transform(datMelenchon,Hashtag = reorder(Hashtag,Frequency))

# dat2 <- dat2[with(dat2, order(-freq)),] 
datMelenchon2$Hashtag <- factor(datMelenchon2$Hashtag, 
                          levels = datMelenchon2$Hashtag[order(datMelenchon2$Frequency)])
write.table(datMelenchon2, file = "HashtagsMelenchon.txt",row.names=FALSE, na="",col.names=TRUE, sep=",")


# Plot
p6 <- ggplot(datMelenchon2 , aes(Hashtag, Frequency, fill = Hashtag)) + 
  geom_bar(stat = "identity") + coord_flip() +
  ggtitle("Les hashtags les plus utilisés par Jean-Luc Mélenchon")

p6 <- ggplotly(p6)








