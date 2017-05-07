
<h2> Analyse du hashtag #MacronLeaks qui a été lancé le 5 mai soir à la suite de la cyber-attaque qui a visé les données d'En Marche.</h2>

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/TwitterPolitique.jpg" width="400"/>
</p>

<h3>Extraction des tweets et identifications des comptes impliqués</h3>


<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/Parrainages3mars2017.png" width="600"/>
</p>


<h3>Nombre total de followers et de tweets par candidat</h3>
Cette table donne les comptes Twitter des six candidats à la Présidentielle de 2017 qui ont été sélectionnés pour notre analyse. La table est ordonnée selon le nombre d'abonnés (followers). Jean-Luc Mélenchon arrive en première position suivi d'Emmanuel Macron bien que ce dernier ne tweete que très peu (seulement 2 015 messages de 140 caratères (tweets) depuis l'ouverture de son compte). 


| Candidat | Parti | Compte Twitter | Nombre de "followers" | Nombre de tweets |
| ------------- | ------------- | ------------- | ------------- |------------- |
| Jean-Luc Mélenchon |  La France insoumise | [@JLMelenchon](https://twitter.com/JLMelenchon) | 982 K | 19,9 k |
| Emmanuel Macron  |En Marche | [@EmmanuelMacron](https://twitter.com/EmmanuelMacron) | 536 K | 2 015 |
| François Fillon |Les Républicains  | [@FrancoisFillon](https://twitter.com/FrancoisFillon) | 441 K | 16,1 K |
| Benoît Hamon   |Parti socialiste | [@benoithamon](https://twitter.com/benoithamon) | 338 K | 7 520 |
| Nicolas Dupont-Aignan |Debout la France | [@dupontaignan](https://twitter.com/dupontaignan) | 90 k | 9 576 |
| Nathalie Arthaud |Lutte ouvrière | [@n_arthaud](https://twitter.com/n_arthaud) | 2 005 | 617 |
(Ces données ont été extraites le 4 mars 2017 à 16h30)


<h3>3- Quels sont les mots-dièse (hashtags) les plus utilisés par chaque candidat ?</h3>
Pour cette analyse effetcuée dans [R](https://www.r-project.org) (le script [est disponible](https://github.com/serayamaouche/Presidentielles2017/blob/master/Pres2017MostFreqHashtags.R) dans ce répertoire github), les données ont été extraites via l'[API de twitter](https://dev.twitter.com/rest/public) dans R.

Les résultats présentées ci-après montrent que François Fillon et Nicolas Dupont-Aignan utilisent très peu de mots-dièses (hashtags) dans leurs Tweets.

<h6>1- François Fillon</h6>

Contrairement à Emmanuel Macron dont les hashtags reflètement une utilisation de Twitter pour détailler son programme, les qui sont utilisés par François Fillon se limitent à des sujets polémiques contre notamment deux cibles : Emmanuel Macron et François Bayrou. Sans doute pour critiquer le soutien de ce dernier sur sa décision de soutenir le candidat d'En Marche.

<p align="center">
  <img src="https://github.com/serayamaouche/Presidentielles2017/blob/master/HashtagsFillon.png" width="600"/>
</p>


2- Emmanuel Macron
Pour Emmanuel Macron, des hashtags pour présenter son programme (#ProgrammeEM) ou d'autres liés à son ancienne activité en tant que ministre de l'economie tels les mots-dièse #Frenchtech et #LoiActivité, arrivent en premier. 
Aucun hashtag qui reflète des discussions sur des polémiques politiques ou qui inclut le nom d'un des autres candidat n'apparaît dans les résultats de nos analyses.

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


