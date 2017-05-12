<h3>Dernière modification : 10 mai 2017</h3>

<h2> Analyse du hashtag #MacronLeaks, qui a été lancé le 5 mai soir, à la suite de la cyber-attaque qui a visé les données d'En Marche.</h2>

<h4>Dernières infos</h4>
- <p>The Rebel TV, le media de Jack Posobiec, une personne très active dans la diffusion du #MacronLeaks et dans la publications d'articles et vidéos contre Emmanuel Macron, a été accréditée à la Maison Blanche. Jack Posobiec est le "Washington Bureau Chief" de Rebel TV.</p>

- <p>Les observateurs attribuent les attaques à l'extrême-droite américaine et aux Russes. Notre analyse des tweets a révélé des comptes de l'extrême-droite américaine ou européenne, des comptes russes, mais beaucoup de comptes de l'extrême-droite française. La copine de Jack Posobiec, une polonaise naturalisée américaine, est très active dans cette campagne sur les réseaux sociaux. Elle s'appelle Tanya Tay (sur Twitter elle utilise le pseudo @GoTTdiva).</p>


<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TwitterPolitique.jpg" width="400"/>
</p>

Les métadonnées des archives partagées indiquent qu'un utilisateur avec l'email frankmacher1@gmx.de a partagé en ligne les données qui ont été volées.
GMX (Global Message eXchange) est un service de courrier électronique d'origine allemande dont ses utilisateurs sont essentiellement basés en Allemagne, en Autriche et en Suisse.

``` XML
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

L'équipe de campagne d'Emmanuel Macron avait dénoncé vendredi 5 mai une action de piratage des coordonnée d'En Marche. Le [communiqué](https://en-marche.fr/article/communique-presse-piratage) avait confirmé "une action de piratage massive et coordonnée donnant lieu ce soir à la diffusion sur les réseaux sociaux d’informations internes de nature diverse (mails, documents comptables, contrats…)"

Une enquête a été ouverte pour «accès frauduleux à un système de traitement automatisé de données» et «atteinte au secret des correspondances». Elle a été confiée à la Brigade d'enquêtes sur les fraudes aux technologies de l'information (Befti), selon une information de [La Tribune de Genève](http://www.tdg.ch/monde/piratage-macron-enquete-ouverte/story/31443439). 

<h3>Extraction des tweets et identification des comptes impliqués</h3>
Afin d'identifier l'origine de cette attaque électronique et les acteurs qui contribuent aux tweets utilisant le hashtag #MacronLeaks, nous avons d'abord examiné les fichiers des métadonnées qui sont disponibles dans les archives en ligne.
Nous avons ensuite anlaysé les données Twitter dans l'environment R.
La première partie de l'analyse a été effectué sans restriction de langue. Le graphe ci-après illustre les internautes qui ont beaucoup tweeté en utilisant le hashtag #MacronLeaks.

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

<h4>Les comptes francophones qui contribuent à cette propagande</h4> 
<p>L'utilisateur avec le pseudo "NEVABELLE" apparait comme le comte le plus actif. D'après son profil, il est basé à Boulogne-sur-Mer. Son compte Twitter a été crée en 2011.</p>

``` R
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
Notre analyse a ensuite focalisé sur les messages qui ont été largement retweetés, voiçi la liste des "top 10". Il est important de noter que les comptes qui sont dans cette liste ne sont pas tous de l'extrême-droite. Les deux premiers , par exemple, sont plutôt des comptes qui tweetent contre le FN.

``` R
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
Les tweets les plus populaires ont été publiés par ces utilisateurs :
<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/MostPopularTweets.png" width="600"/>
</p>


Le nuage des hashtags qui ont été utilisés par les internautes ayant publié sur le #MacronLeaks:
<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/wordCloud.png" width="600"/>
</p>


<h4>Les comptes angolophones qui contribuent à la diffusion du hashtag #MacronLeaks</h4> 
<p></p>

``` R
> print(count[1:20])

   MKUltraSperg   Jenny99245688 Patriot_Girl_TX   Pepethetroll1 
             24              19              19              18 
  pepethetroll2     brendafox26  Quincy_l_Jones      RealStephF 
             18              16              15              13 
     AndreFrato     Makerel_Sky      MockNDrole    NesterTweets 
             12              12              12              12 
UKRebelAlliance  sixmillionlied     NeutralMate OHenryHernandez 
             12              11              10              10 
  SaveTheseDogs   Flemington455         hmbr123   Nikhil_Rathor 
             10               9               9               9 
```

Les tweets les plus populaires ont été publiés par :
<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TopUsersEnglish.png" width="600"/>
</p>

Notre analyse a ensuite focalisé sur les messages qui ont été largement retweetés, voiçi la liste des "top 10".

``` R
> print(df[df$isRetweet,][index[1:10],c('screenName','id','retweetCount')])
         screenName                 id retweetCount
30     1rishinfidel 861458217791913984         7539
936     soleilbeach 861428034540371970         7539
1032 ANTHONYPERRONI 861425609284702208         7539
1059       nikkudix 861424929438277632         7539
1150   johnsgirlsx3 861422659942453249         7539
1725     rainbowgl7 861409944817377280         7539
1727   Stevens10Liz 861409927373443072         7539
3015  Lain_Coulbert 861384132370329601         7539
3645       o_obilly 861373919919570944         7539
5680   MollyMcBeal1 861351264923389952         7539

```
Les tweets les plus populaires après exclusion des retweets:
<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TopUserEnRTexcluded.png" width="600"/>
</p>


Le nuage des hashtags qui ont été utilisés par les internautes ayant publié avec #MacronLeaks:
<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/WordCloudHashtagEnglish.png" width="600"/>
</p>





