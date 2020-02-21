# Descriptif
Création d'une application web avec un login et une connection à une base SQL

## Environnement nécessaire:
- Mysql Workbench
- Server Tomcat
- Maven
- Eclipse

## Objectif
Cette application consiste à créer une aide aux nouveaux arrivants d'une entreprise.
On s'y connecte en rentrant seulement l'identifiant. Pas de mot de passe nécessaire.

# Etape à suivre
1. Démarrer mysql server en localhost
1. Importer le projet sur Eclipse en tant que Projet Maven
1. Modifier le fichier contenant les propriétés de connexion à la base de donnée pour qu'elles soient en accord avec votre base.
Chemin: **/src/main/webapp/WEB-INF/spring-database.xml**
1. Installer Tomcat server puis l'ajouter à Eclipse
1. Démarrer l'application. 
Clic droit sur le projet: Run As -> Run On Server

## Precision

La connection à la base de donnée fonctionne mais la requete SQL permettant de vérifier si l'identifiant rentré dans le login se trouve dans la base de donnée ne fonctionne pas.
Pour résoudre ce problème, il faudrait donner une variable à l'identifiant entré.
