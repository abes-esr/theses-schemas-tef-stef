# theses-schemas-tef-stef
La recommandation TEF (Thèses Electroniques Françaises) définit un jeu de métadonnées pour les thèses électroniques soutenues en France. Son objectif est d'organiser de manière cohérente des métadonnées de thèse riches et normalisées, pour faciliter leur échange et leur diffusion, au niveau national ou international. Ces métadonnées sont hétérogènes. Elles recouvrent des métadonnées descriptives (bibliographiques) et des métadonnées de gestion (administration, droits, conservation).

Cette recommandation propose à la fois une modélisation de ces métadonnées et un format XML. Ce format est un format d'échange et un outil de validation. Il consiste en un schéma XML qui permet de spécifier la structure et le contenu d'une notice TEF. S'y ajoutent des règles de validation Schematron qui expriment avec précision les contraintes propres à TEF, qui elles-mêmes reflètent les textes réglementaires nationaux qui organisent le circuit des thèses électroniques . Ce format XML s'appuie sur le schéma METS qui permet d'articuler les différents types de métadonnées.

## Architecture technique

Site statique (pages HTML et documents XML), servi par un container docker, basé sur une image nginx, avec la configuration par défaut.

Pour un déploiement dans le SI de l'Abes, il faut se référer aux configurations suivantes : https://git.abes.fr/depots/theses-docker/
