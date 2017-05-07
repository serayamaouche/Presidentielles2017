
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

<h4>Les comptes qui contribuent à cette propagande.</h4> 
<p>L'utilisateur avec le pseudo "NEVABELLE" apparait comme le comte le plus actif. D'après son profil, cet utilisateur est basé à Boulogne-sur-Mer. Son compte Twitter a été crée en 2011.</p>

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
On focalise ensuite sur les tweets qui ont étélargement retweetés, voiçi la liste des "top 10". Il est important de noter que les comptes qui sont dans cette liste ne sont pas tous de l'extrême-droite. Les deux premiers , par exemple, songt plutôt des comptes qui tweetent contre le FN.
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


Après exclusion des Retweet, le graphe ci-après illustrent les utilisateurs qui ont publié au moins 5 tweets avec e hashtag #MacronLeaks.
<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TopFrenchTweetsRTexcludMore5tweets.png" width="600"/>
</p>


