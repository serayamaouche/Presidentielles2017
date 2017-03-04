
<h2> Les mots-dièse (hashtags) les plus utilisés par les candidats à la Présidentielle 2017 (Most frequent hashtags that are used by candidates for the French presidential election 2017)</h2>

Les réseaux sociaux jouent un rôle important dans les campagnes politiques telles que la Présidentielle de 2017. Twitter France a lancé, le 12 octobre 2016, [TwitterPolFR](https://twitter.com/TwitterPolFR), un compte politique pour la couverture de l'actualité politique nationale et l'élection présidentielle de 2017. La plateforme [aucoeurdesdebats.fr](https://aucoeurdesdebats.fr) animée par Twitter France est "consacrée à la mise en avant des bonnes pratiques, données et usages créatifs de Twitter dans le domaine politique", selon l'équipe de TwitterProlFr.

Twitter est un outil intéressant qui fonctionne comme un agrégateur d'articles de presse et d'autres types d'information. Créer une liste Twitter pour tous les femmes et hommes politiques ou toute la presse nationale, par exemple, permet un accès rapide et ciblé à l'actualité politique.

Twitter n'est pas seulement un endroit propice aux discussions politiques et au suivi des discours et des déplacements des candidats, il sert également à identifier les sources des polémiques qui ciblent certains candidats.

L'analyse des données massives (Big Data) générées, sur twitter ou un autre réseau social, par les citoyens, les journalistes, les experts ou par les candidats eux même permet de corriger la stratégie d'une campagne. Elle sert également à répondre rapidement aux polémiques et aux fausses informations. Combiner l'analyse "Big Data" à des algorithmes pour le traitement automatique du langage naturel (Natural language processing, en anglais) permet d'analyser le discours et les déclarations de chaque candidat et de savoir si ses publications sur les réseaux sociaux apportent ou discutent des propositions concrètes ou plutôt si elles se limitent à des attaquent contre les autres candidats. 

Une étude publié, le 12 octobre dernier, par [Harris Interactive](http://harris-interactive.fr/opinion_polls/twitter-dans-la-vie-politique-et-les-campagnes-electorales/) a montré que 71% des internautes estiment que l’actualité politique est présente sur Twitter. 53% de ces internautes consultent Twitter sur le thème de la politique.

Sur les 313 millions d'utilisateurs actifs dans le monde (source : [Twitter 09/02/17](https://about.twitter.com/fr/company)), il y a 13,9 millions de visiteurs uniques en France (Source : [Médiamétrie 15/02/17](http://www.mediametrie.fr/comportements/solutions/reseaux-sociaux.php?id=107)). 45% des utilisateurs de Twitter sont des femmes, 55% sont des hommes.

Dans cet exemple, nous montrons comment l'analyse des messages publiés par les candidats à Présidentielle de 2017 sur Twitter permet d'identier les sujets prioritaires pour chaque candidat.

<h3>1- Sélection des candidats dont les comptes Twitter seront analysés</h3>
Afin de sélectionner les candidats à considérer pour cette analyse, nous avons préféré utiliser le nombre total des parrainages que le Conseil Constitutionel [a reçu jusqu'au 3 mars(https://presidentielle2017.conseil-constitutionnel.fr/les-parrainages/parrainages-par-candidat/) pour sélectionner les six premiers candidats (Marine Le Pen, qui à se jour disposes seulement de 84 signatures, n'a pas été considérée).
François Fillon et Emmanuel Macron disposent du grand nombre de signature. Le premier a dépassé les 500 signatures par des élus d’au moins 30 départements ou collectivités d’outre-mer.

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/Parrainages3mars2017.png" width="600"/>
</p>


<h5>Nombres de followers et de tweets par candidat</h5>
Cette table donne les comptes twitter des six candidats aux Présidentielles 2017. La table est ordonnée selon le nombre d'abonnés (followers). Jean-Luc Mélenchon arrive en première position suivi d'Emmanuel Macron bien que ce dernier ne tweete que très peu (seulement 2 015 messages de 140 caratères (tweets)). 


| Candidat | Parti | Compte Twitter | Nombre de "followers" | Nombre de tweets |
| ------------- | ------------- | ------------- | ------------- |------------- |
| Jean-Luc Mélenchon |  La France insoumise | [@JLMelenchon](https://twitter.com/JLMelenchon) | 982 K | 19,9 k |
| Emmanuel Macron  |En Marche | [@EmmanuelMacron](https://twitter.com/EmmanuelMacron) | 536 K | 2 015 |
| François Fillon |Les Républicains  | [@FrancoisFillon](https://twitter.com/FrancoisFillon) | 441 K | 16,1 K |
| Benoît Hamon   |Parti socialiste | [@benoithamon](https://twitter.com/benoithamon) | 338 K | 7 520 |
| Nicolas Dupont-Aignan |Debout la France | [@dupontaignan](https://twitter.com/dupontaignan) | 90 k | 9 576 |
| Nathalie Arthaud |Lutte ouvrière | [@n_arthaud](https://twitter.com/n_arthaud) | 2 005 | 617 |
(Ces données ont été extraites le 4 mars 2017 à 16h30)





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
