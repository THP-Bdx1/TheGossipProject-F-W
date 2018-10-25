# README PROJET DU JEUDI 25 OCTOBRE

* Projet réalisé par William et François 

Ce site génère une base de données de :
- Utilisateurs, qui ont un prénom, un nom, une adresse mail, un âge, une description, et dépendent d'une seule ville
- Villes, qui ont chacun un zip code
- Gossips, qui ont chacun un titre, un contenu, une date de création, et qui dépendent chacun d'un utilisateur unique
- Tags, qui ont chacun un nom, et qui sont apposés à un ou plusieurs gossip
- Commentaires, qui ont chacun un contenu, sont associés à un utilisateur unique, et un gossip unique. Il peut y avoir beaucoup de commentaires sur un seul gossip, et plusieurs commentaires d'utilisateurs
- Des messages privés, en texte, qui ont chacun un expéditeur (extrait de la base de données utilisateur) et au moins un destinataire (extrait également des utilisateurs)

Un "bundle install" est nécessaire avant lancement, puis un "rails db:seed" pour générer une base de données.


Enjoy !


