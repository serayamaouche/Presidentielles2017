
<h2> Analyse du hashtag #MacronLeaks, qui a été lancé le 5 mai soir, à la suite de la cyber-attaque qui a visé les données d'En Marche.</h2>

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TwitterPolitique.jpg" width="400"/>
</p>

Les métadonnées des archives partagées indiquent qu'un utilisateur avec l'email frankmacher1@gmx.de a partagé en ligne les données qui ont volées.
GMX (Global Message eXchange) est un service de courrier électronique d'origine allemande dont ses utilisateurs sont essentiellement basés en Allemagne, en Autriche et en Suisse.

```
<metadata>
<identifier>Macron_201705</identifier>
<mediatype>texts</mediatype>
<collection>opensource</collection>
<description>Mail archive</description>
<scanner>Internet Archive HTML5 Uploader 1.6.3</scanner>
<subject>Macron</subject>
<title>Macron</title>
<publicdate>2017-05-05 11:17:39</publicdate>
<uploader>frankmacher1@gmx.de</uploader>
<addeddate>2017-05-05 11:17:39</addeddate>
<curation>
[curator]validator@archive.org[/curator][date]20170505112302[/date][comment]checked for malware[/comment]
</curation>
<language>English</language>
<identifier-access>http://archive.org/details/Macron_201705</identifier-access>
<identifier-ark>ark:/13960/t7np7fg57</identifier-ark>
<repub_state>4</repub_state>
</metadata>
```

Une enquête a été ouverte pour «accès frauduleux à un système de traitement automatisé de données» et «atteinte au secret des correspondances». Elle a été confiée à la Brigade d'enquêtes sur les fraudes aux technologies de l'information (Befti), selon une information de [Tribune de Genève](http://www.tdg.ch/monde/piratage-macron-enquete-ouverte/story/31443439). 

<h3>Extraction des tweets et identification des comptes impliqués</h3>
Afin d'identifier l'origine de cette attaque électronique et les acteurs qui contribuent aux tweets utilisant le hashtag #MacronLeaks, nous avons anlaysé les données Twitter dans l'environment R.
Nous avons d'abord effectué une analyse sans restriction de langue. Le graphe ci-après illustre les internautes qui ont beaucoup tweeté en utilisant le hashtag #MacronLeaks.

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TopTweetsNoLangSelect.png" width="600"/>
</p>

Ensuite, nous avons effectué l'analyse séparément en anglais et en français.

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TopFrenchTweetPlus10tweets.png" width="600"/>
</p>

Afin d'améliorer la lisibilité du graphe ci-dessus, nous avons mis une limite d'au moins 15 tweets par utilisateurs :
<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TopFrenchTweetsPlus15tweets.png" width="600"/>
</p>

<h4>Les comptes qui contribuent à cette propagande.</h4> 
<p>L'utilisateur avec le pseudo "NEVABELLE" apparait comme le comte le plus actif. D'après son profil, il est basé à Boulogne-sur-Mer. Son compte Twitter a été crée en 2011.</p>

```
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
```
Notre analyse a ensuite focalisé sur les tweets qui ont été largement retweetés, voiçi la liste des "top 10". Il est important de noter que les comptes qui sont dans cette liste ne sont pas tous de l'extrême-droite. Les deux premiers , par exemple, sont plutôt des comptes qui tweetent contre le FN.

```
> print(df[df$isRetweet,][index[1:10],c('screenName','id','retweetCount')])
         screenName                 id retweetCount
52      Troncharlie 861244138272018432         3385
197          rkanty 861243107416961024         3385
217  sebastienmarot 861242928823496705         3385
399       NEVABELLE 861241673396957186         3385
561     lucawesome9 861240568894164992         3385
825      nusnusanna 861238402536140800         3385
1676      nanass777 861231554902863872         3385
2059     DrPansophe 861228660594012164         3385
2338      daammnson 861226893709893633         3385
2531 mariannachou33 861225500886302720         3385

```
Les tweets les plus populaires:
<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/MostPopularTweets.png" width="600"/>
</p>


Le nuage des hashtags qui ont été utilisés par les internautes ayant publié avec #MacronLeaks:
<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/wordCloud.png" width="600"/>
</p>




