
<h2> Analyse du hashtag #MacronLeaks qui a été lancé le 5 mai soir à la suite de la cyber-attaque qui a visé les données d'En Marche.</h2>

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TwitterPolitique.jpg" width="400"/>
</p>

<h3>Extraction des tweets et identifications des comptes impliqués</h3>
Nous avons d'abord effectué une analyse sans restriction de langue. Le graphe ci-après illustre les internautes qui ont le plus tweeté en utilisant le hashtag #MacronLeaks.

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TopTweetsNoLangSelect.png" width="600"/>
</p>

Ensuite, nous avons limité l'analyse aux Tweets en français.



<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TopFrenchTweetPlus10tweets.png" width="600"/>
</p>

Afin d'améliorer la lisibilité du graphe ci-dessus, nous avons mis un seuil de 15 tweets ou plus par utilisateurs :
<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TopFrenchTweetsPlus15tweets.png" width="600"/>
</p>

''

R version 3.3.2 (2016-10-31) -- "Sincere Pumpkin Patch"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/.RData]

> #Packages required:
> library(twitteR)
> library(ggplot2)
> library(httr)
> library(rjson)
> library(tm)
Le chargement a nécessité le package : NLP

Attachement du package : ‘NLP’

The following object is masked from ‘package:httr’:

    content

The following object is masked from ‘package:ggplot2’:

    annotate

Warning message:
le package ‘tm’ a été compilé avec la version R 3.3.3 
> library(gridExtra)
> library(lubridate)

Attachement du package : ‘lubridate’

The following object is masked from ‘package:base’:

    date

> library(curl)
Error in library(curl) : aucun package nommé ‘curl’ n'est trouvé
> 
> #Type in your app details from Twitter here:
> consumer_key       <- 'ZO4sTtVNAtDDjwrOoytHmwhtt'
> consumer_secret    <- 'C6YbE5u1rugeq60KaBFdO7cejzWLEpbpzFYJU1YCoYrhRiwnS8'
> access_token       <- '703977842-PIJMhagKAryEXMsxF4YO2nBHEFs9Miwr7eJN4vTx'
> access_secret      <- 'RlEFA40yGa7Je4RMYOgFCNt5w2M5zEeDYKqcZLUzINEST'
> 
> token <- twitteR::setup_twitter_oauth(consumer_key, consumer_secret, 
+                                       access_token, access_secret)
[1] "Using direct authentication"
Error in check_twitter_oauth() : OAuth authentication error:
This most likely means that you have incorrectly called setup_twitter_oauth()'
> 
> #Extract tweets from a single user at a time   
> tweets <- searchTwitter("#MacronLeaks",n=9999, since='2017-05-04')
Error in loadNamespace(name) : there is no package called ‘curl’
> install.packages("curl")
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.3/curl_2.6.zip'
Content type 'application/zip' length 3092733 bytes (2.9 MB)
downloaded 2.9 MB

package ‘curl’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Seraya\AppData\Local\Temp\RtmpewfrW2\downloaded_packages
> #Packages required:
> library(twitteR)
> library(ggplot2)
> library(httr)
> library(rjson)
> library(tm)
> library(gridExtra)
> library(lubridate)
> library(curl)

Attachement du package : ‘curl’

The following object is masked from ‘package:httr’:

    handle_reset

Warning message:
le package ‘curl’ a été compilé avec la version R 3.3.3 
> #Type in your app details from Twitter here:
> consumer_key       <- 'ZO4sTtVNAtDDjwrOoytHmwhtt'
> consumer_secret    <- 'C6YbE5u1rugeq60KaBFdO7cejzWLEpbpzFYJU1YCoYrhRiwnS8'
> access_token       <- '703977842-PIJMhagKAryEXMsxF4YO2nBHEFs9Miwr7eJN4vTx'
> access_secret      <- 'RlEFA40yGa7Je4RMYOgFCNt5w2M5zEeDYKqcZLUzINEST'
> 
> token <- twitteR::setup_twitter_oauth(consumer_key, consumer_secret, 
+                                       access_token, access_secret)
[1] "Using direct authentication"
> 
> #Extract tweets from a single user at a time   
> tweets <- searchTwitter("#MacronLeaks",n=9999, since='2017-05-04')
> print(length(tweets))
[1] 9999
> print(class(tweets))
[1] "list"
> print(tweets[[1]])
[1] "oasisupernova: RT @JackPosobiec: What's the French word for 'collusion?' #MacronLeaks https://t.co/nVmwXou6Vy"
> print(tweets[[1]]$text)
[1] "RT @JackPosobiec: What's the French word for 'collusion?' #MacronLeaks https://t.co/nVmwXou6Vy"
> print(tweets[[1]]$screenName)
[1] "oasisupernova"
> tweets[[1]]$id
[1] "861239298808565760"
> tweets[[1]]$replyToSN
character(0)
> tweets[[1]]$replyToUID
character(0)
> tweets[[1]]$statusSource
[1] "<a href=\"http://twitter.com/download/android\" rel=\"nofollow\">Twitter for Android</a>"
> tweets[[1]]$created
[1] "2017-05-07 15:20:24 UTC"
> tweets[[1]]$isRetweet
[1] TRUE
> tweets[[1]]$favorited
[1] FALSE
> tweets[[1]]$retweetCount
[1] 1159
> df <- twListToDF(tweets)
> #dimensions 
> print(dim(df))
[1] 9999   16
> print(colnames(df))
 [1] "text"          "favorited"     "favoriteCount" "replyToSN"     "created"      
 [6] "truncated"     "replyToSID"    "id"            "replyToUID"    "statusSource" 
[11] "screenName"    "retweetCount"  "isRetweet"     "retweeted"     "longitude"    
[16] "latitude"     
> #comptage du nombre de message par auteurs 
> comptage <- table(df$screenName)
> #tri décroissant 
> comptage <- sort(comptage,decreasing=TR
+ comptage <- sort(comptage,decreasing=TRUE)
Error: unexpected symbol in:
"comptage <- sort(comptage,decreasing=TR
comptage"
> #comptage du nombre de message par auteurs 
> comptage <- table(df$screenName)
> 
> #tri décroissant 
> comptage <- sort(comptage,decreasing=TRUE)
> #affichage des 10 premiers 
> print(comptage[1:10])

        G0rille Capricorne75014   Magamemequeen   _YvonneBurton    jjjjjjjjjjl2        Neo69120 
             32              26              26              23              23              23 
        mllgigi     johan_otten      tullyframe       Ahurastan 
             20              19              18              16 
> print(length(unique(df$screenName)))
[1] 7011
> #nous utilisons la variable comptage définie précédemment 
> barplot(comptage [comptage >= 5], las = 2,cex.names=0.7,col="cornsilk")
> #nous utilisons la variable comptage définie précédemment 
> barplot(comptage [comptage >= 10], las = 2,cex.names=0.7,col="cornsilk")
> barplot(comptage [comptage >= 10], las = 2,cex.names=0.7,col="blue")
> #nous utilisons la variable comptage définie précédemment 
> barplot(comptage [comptage >= 10], las = 2,cex.names=0.7,col="darkblue")
> print(tweets[[1]]$screenName)
[1] "oasisupernova"
> #nous utilisons la variable comptage définie précédemment 
> barplot(comptage [comptage >= 50], las = 2,cex.names=0.7,col="darkblue")
Error in plot.window(xlim, ylim, log = log, ...) : 
  'xlim' nécessite des valeurs finies
In addition: Warning messages:
1: In min(w.l) : no non-missing arguments to min; returning Inf
2: In max(w.r) : no non-missing arguments to max; returning -Inf
3: In min(x) : no non-missing arguments to min; returning Inf
4: In max(x) : no non-missing arguments to max; returning -Inf
> #nous utilisons la variable comptage définie précédemment 
> barplot(comptage [comptage >= 20], las = 2,cex.names=0.7,col="darkblue")
> #nous utilisons la variable comptage définie précédemment 
> barplot(comptage [comptage >= 10], las = 2,cex.names=0.7,col="darkblue")
> #sauvegarde de la structure data.frame 
> write.table(df,"tweets.txt",sep="\t",quote=F)
> getwd()
[1] "C:/Users/Seraya/Documents"
> #Extract tweets from a single user at a time   
> tweets <- searchTwitter("#MacronLeaks",n=9999, since='2017-05-04', lang = "fr")
> print(length(tweets))
[1] 9999
> print(class(tweets))
[1] "list"
> print(tweets[[1]])
[1] "snifff007: RT @pierrejovanovic: la bonne nouvelle avec le #MacronLeaks  c'est que même élu il ne pourra pas gouverner Ca va lui exploser à la figure !…"
> print(tweets[[1]]$text)
[1] "RT @pierrejovanovic: la bonne nouvelle avec le #MacronLeaks  c'est que même élu il ne pourra pas gouverner Ca va lui exploser à la figure !…"
> print(tweets[[1]]$screenName)
[1] "snifff007"
> tweets[[1]]$id
[1] "861244416320823297"
> tweets[[1]]$replyToSN
character(0)
> tweets[[1]]$replyToUID
character(0)
> tweets[[1]]$statusSource
[1] "<a href=\"http://twitter.com\" rel=\"nofollow\">Twitter Web Client</a>"
> tweets[[1]]$created
[1] "2017-05-07 15:40:44 UTC"
> tweets[[1]]$isRetweet
[1] TRUE
> tweets[[1]]$favorited
[1] FALSE
> tweets[[1]]$retweeted
[1] FALSE
> tweets[[1]]$retweetCount
[1] 578
> #copier la liste dans une structure data.frame 
> df <- twListToDF(tweets)
> #dimensions 
> print(dim(df))
[1] 9999   16
> print(colnames(df))
 [1] "text"          "favorited"     "favoriteCount" "replyToSN"    
 [5] "created"       "truncated"     "replyToSID"    "id"           
 [9] "replyToUID"    "statusSource"  "screenName"    "retweetCount" 
[13] "isRetweet"     "retweeted"     "longitude"     "latitude"     
> print(df[1:10,c('created','screenName','isRetweet','retweeted','retweetCount')])
               created     screenName isRetweet retweeted
1  2017-05-07 15:40:44      snifff007      TRUE     FALSE
2  2017-05-07 15:40:44   marcoderouen      TRUE     FALSE
3  2017-05-07 15:40:43  BeraudJacky42      TRUE     FALSE
4  2017-05-07 15:40:43     Matamaure_      TRUE     FALSE
5  2017-05-07 15:40:42   Darkvadehors      TRUE     FALSE
6  2017-05-07 15:40:40      Isaaveon_      TRUE     FALSE
7  2017-05-07 15:40:38   AlexisLeBail      TRUE     FALSE
8  2017-05-07 15:40:34       Anygma76      TRUE     FALSE
9  2017-05-07 15:40:32 DassonvilleMeg      TRUE     FALSE
10 2017-05-07 15:40:32   Darkvadehors      TRUE     FALSE
   retweetCount
1           578
2            90
3           152
4           207
5            23
6          1205
7             5
8            23
9            40
10           87
> 
> #sauvegarde de la structure data.frame 
> write.table(df,"tweetsFr.txt",sep="\t",quote=F)
> #comptage du nombre de message par auteurs 
> count <- table(df$screenName)
> 
> #tri décroissant 
> count <- sort(count,decreasing=TRUE)
> #affichage des 10 premiers 
> print(count[1:10])

      NEVABELLE          epok83        JSarthre   agostino31139 
             37              35              34              27 
       elfino26        Neo69120 fra8frgmailcom1     Jackeraser2 
             24              23              22              22 
       celte1er         G0rille 
             21              21 
> print(length(unique(df$screenName)))
[1] 5739
> #nous utilisons la variable comptage définie précédemment 
> barplot(count [count >= 10], las = 2,cex.names=0.7,col="darkblue")
> #nous utilisons la variable comptage définie précédemment 
> barplot(count [count >= 20], las = 2,cex.names=0.7,col="darkblue")
> #nous utilisons la variable comptage définie précédemment 
> barplot(count [count >= 10], las = 2,cex.names=0.7,col="darkblue")
> #nous utilisons la variable comptage définie précédemment 
> barplot(count [count >= 15], las = 2,cex.names=0.7,col="darkblue")
> id_originaux <- which(!df$isRetweet)
> #nombre de messages originaux 
> print(length(id_originaux))
[1] 648
> #comptage du nombre de message par auteurs 
> comptage_bis <- table(df$screenName[id_originaux])
> #tri décroissant 
> comptage_bis <- sort(comptage_bis,decreasing=TRUE)
> #graphique de ceux qui ont plus de 5 (inclus) messages 
> barplot(comptage_bis [comptage_bis >= 5], las = 2,cex.names=0.7, col = "tan")
> #graphique de ceux qui ont plus de 5 (inclus) messages 
> barplot(comptage_bis [comptage_bis >= 10], las = 2,cex.names=0.7, col = "tan")
> #graphique de ceux qui ont plus de 5 (inclus) messages 
> barplot(comptage_bis [comptage_bis >= 3], las = 2,cex.names=0.7, col = "tan")
> barplot(comptage_bis [comptage_bis >= 3], las = 2,cex.names=0.7, col = "darktan")
Error in rect(y1, x1, y2, x2, ...) : nom de couleur 'darktan' incorrecte
> #graphique de ceux qui ont plus de 5 (inclus) messages 
> barplot(comptage_bis [comptage_bis >= 3], las = 2,cex.names=0.7, col = "darkgreen")
> #graphique de ceux qui ont plus de 5 (inclus) messages 
> barplot(comptage_bis [comptage_bis >= 5], las = 2,cex.names=0.7, col = "darkgreen")
> #graphique de ceux qui ont plus de 5 (inclus) messages 
> barplot(comptage_bis [comptage_bis >= 5], las = 2,cex.names=0.7, col = "darkviolet")
> #graphique de ceux qui ont plus de 5 (inclus) messages 
> barplot(comptage_bis [comptage_bis >= 5], las = 2,cex.names=0.7, col = "violet")
> print(count[1:1
+ 10])
Error: unexpected numeric constant in:
"print(count[1:1
10"
> print(count[1:10])

      NEVABELLE          epok83        JSarthre 
             37              35              34 
  agostino31139        elfino26        Neo69120 
             27              24              23 
fra8frgmailcom1     Jackeraser2        celte1er 
             22              22              21 
        G0rille 
             21 
> print(count[1:20])

      NEVABELLE          epok83        JSarthre 
             37              35              34 
  agostino31139        elfino26        Neo69120 
             27              24              23 
fra8frgmailcom1     Jackeraser2        celte1er 
             22              22              21 
        G0rille         mllgigi   bassemvaudais 
             21              20              19 
moimoipresident blackma83455223          ETFsNI 
             18              17              17 
   PascalLafont   Sabrina_IXOYE        Ujinbo56 
             17              17              17 
      bigoudi51  FrontisteDuSud 
             16              16 
> print(length(tweets))
[1] 9999
> tweets[[1]]$retweetCount
[1] 578
> print(length(unique(df$screenName)))
[1] 5739
> print(length(unique(df$screenName)))
[1] 5739
> print(count[1:20])

      NEVABELLE          epok83        JSarthre 
             37              35              34 
  agostino31139        elfino26        Neo69120 
             27              24              23 
fra8frgmailcom1     Jackeraser2        celte1er 
             22              22              21 
        G0rille         mllgigi   bassemvaudais 
             21              20              19 
moimoipresident blackma83455223          ETFsNI 
             18              17              17 
   PascalLafont   Sabrina_IXOYE        Ujinbo56 
             17              17              17 
      bigoudi51  FrontisteDuSud 
             16              16 


''

