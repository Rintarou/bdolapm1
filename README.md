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

* Auteurs
* Dates
* Lieux
* Acquisitions

# Sources
[Le Dataset](http://data.nantes.fr/donnees/detail/inventaire-des-collections-du-musee-darts-de-nantes/)

