# bdolapm1

Projet de base de données OLAP pour M1 ALMA

# Présentation

Ce projet vise restructurer un dataset de l'ouverture de donnnées de Nantes,
afin d'en faire une base de donnée OLAP

Nous avons choisi un [dataset](http://data.nantes.fr/donnees/detail/inventaire-des-collections-du-musee-darts-de-nantes/) qui porte sur les oeuvres de l'inventaire des collections du musée d'arts de Nantes.

# Structure

Les oeuvres constituent la table de fait de la base de données.

Un certains nombre de propriétés s'y appliquent.

Puis autour viennent se greffer les dimensions relatives aux autres éléments,

* Auteur (l'auteur de l'oeuvre)
* Acquisitions (date et conditions d'acquisition de l'oeuvre)
* Domaine (type d'oeuvre d'art : peinture, sculpture ...)
* Dimensions (les dimensions X, Y et potentiellement Z de l'oeuvre)

# Navigation

Vous trouverez dans ce repository :
* le fichier csv d'origine dans Data/base.csv
* le fichier csv nettoyé et formatté pour l'intégration dans Data/clean.csv
* l'export de la base de données Oracle de notre entrepôt de données dans Data/export.sql
* le diagramme en étoile modélisant notre entrepôt de données OLAP dans Model/DiagEtoile_v4.png
* les différentes requêtes dans Queries/

# Sources
[Le Dataset](http://data.nantes.fr/donnees/detail/inventaire-des-collections-du-musee-darts-de-nantes/)
