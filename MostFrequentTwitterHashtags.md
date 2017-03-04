
<h2> Les mots-dièse (hashtags) les plus utilisés par les candidats aux Présidentielles 2017</h2>

The [scholar R package](https://cran.r-project.org/web/packages/scholar/index.html) provides functions to retrieve citation data from Google Scholar. The package provides functions for comparing multiple scholars and predicting h-index scores based on past publication records.

<h5>Nombres de followers et de tweets par candidat</h5>
Cette table donne les comptes twitter des six candidats aux Présidentielles 2017. La table est ordonnée selon le nombre d'abonnés (followers). Jean-Luc Mélenchon arrive en première position suivi d'Emmanuel Macron bien que ce dernier ne tweete que très peu (seulement 2 015 messages de 140 caratères (tweets)). 

| Candidat | Parti | Compte Twitter | Nombre de followers" | Nombre de tweets |
| ------------- | ------------- | ------------- | ------------- |------------- |
| Jean-Luc Mélenchon |  La France insoumise | [@JLMelenchon](https://twitter.com/JLMelenchon) | 982 K | 19,9 k |
| Emmanuel Macron  |En Marche | [@EmmanuelMacron](https://twitter.com/EmmanuelMacron) | 536 K | 2 015 |
| François Fillon |Les Républicains  | [@FrancoisFillon](https://twitter.com/FrancoisFillon) | 441 K | 16,1 K |
| Benoît Hamon   |Parti socialiste | [@benoithamon](https://twitter.com/benoithamon) | 338 K | 7 520 |
| Nicolas Dupont-Aignan |Debout la France | [@dupontaignan](https://twitter.com/dupontaignan) | 90 k | 9 576 |
| Nathalie Arthaud |Lutte ouvrière | [@n_arthaud](https://twitter.com/n_arthaud) | 2 005 | 617 |
(Ces statistiques ont été extraites le 4 mars 2017 à 16h30)


<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/Parrainages3mars2017.png" width="600"/>
</p>



1- François Fillon

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/HashtagsFillon.png" width="600"/>
</p>


2- Emmanuel Macron

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/HashtagsMacron.png" width="600"/>
</p>

3- Benoit Hamon


<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/HashtagsHamon.png" width="600"/>
</p>


4- Nathalie Arthaud


<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/HashtagsArthaud.png" width="600"/>
</p>

5- Nicolas Dupont-Aignan

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/HashtagsDupontA.png" width="600"/>
</p>

6- Jean-Luc Mélenchon

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/HashtagsMelenchon.png" width="600"/>
</p>


```R
# Get how many articles a scholar has published
authorID <- "NDyEvlQAAAAJ&hl"
# Gets the citation history of a single article
get_article_history(authorID, article)

```
