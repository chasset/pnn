---
layout: project-default
code: pnn
title: PNN
tagline: Démonstration de la distribution des probabilités sur un jeu de données
---

![](https://dl.dropboxusercontent.com/u/483748/reports/pnn-probability-areas-0.05.png)

La figure précédente illustre l'usage du jeu de données norms fournit avec la bibliothèque [PNN](http://pnn.chasset.net) du logiciel R. Ce jeu de données comportent des observations de deux catégories A (disque) et B (triangle) décrits par deux variables quantitatives x (abscisse) et y (ordonnée). Les surfaces bleue (pour la catégorie A) et orange (pour la catégorie B) ainsi que leurs dégradés représentent les probabilités de chaque catégorie, calculées par PNN, selon les valeurs prises par x et par y.

La figure suivante représente cette fois la décision prise par PNN sur la catégorie la plus probable en fonction des variables x et y.

![](https://dl.dropboxusercontent.com/u/483748/reports/pnn-probability-areas-0.05-decisions.png)

Ces figures ont été réalisées avec un paramètre de lissage (sigma) de 0,02 qui ne représente pas l'optimum (0,718). Avec cette finesse, le réseau de neurones probabilistes identifie avec succès les catégories de 370 observations (l'optimum en identifie 371) sur un total de 400.
