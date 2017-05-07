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
