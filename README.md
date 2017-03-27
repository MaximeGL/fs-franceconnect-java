# Exemple de code d'une intégration de FranceConnect en JAVA avec Oltu

Le but est à travers une journée de formation de voir l'intégration de FranceConnect en tant que fournisseur de service.
Cette application propose un code très simpliste et dois le rester.
Des améliorations peuvent néanmoins être proposé.

## Pourquoi ce POC ?

Ce POC permet de valider l'authentification d'un utilisateur à travers l'API FranceConnect.
Dans cet exemple, il n'est pas question de récupérer des informations pour rapprocher des comptes mais uniquement de valider l'authentification déléguée à un fournisseur d'identité.

Ce besoin semble pertinent pour pas mal de solution :

- mise en place dans le SSO CAS
- intégration dans des solutions opensource (Jahia, Liferay, ...)
- intégration dans des applications spécifiques (par exemple, à travers Apache Shiro, Spring Security, ...)



## Pré-requis

Vous devez creer un compte FranceConnect (https://partenaires.franceconnect.gouv.fr/inscription).

Dans la configuration de votre compte (https://doc.integ01.dev-franceconnect.fr/updateClient), vous devrez positionner ces configurations :

Urls de callback (une par ligne):

	http://localhost:8080/poc-fc/fc/cb

Urls de redirection de déconnexion (une par ligne) :

	http://localhost:8080/poc-fc/logout.jsp

Récuperer Client key et le Client secret



## Initialisation

Pour faire fonctionner l'application :

- cloner le dépôt git 

	git clone

- remplacer les valeurs <param_value> de clientId et de secretID par les votres dans le src/main/webapp/WEB-INF/web.xml

- construire l'application :

	cd poc-fc
	mvn install

- lancer tomcat :

	mvn tomcat:run

- accéder avec votre navigateur à l'adresse :

	http://localhost:8080/poc-fc/



## Cinématique

- cliquer sur le bouton "S'identifier avec FranceConnect", le lien pointe vers l'URL /poc-fc/secured/ ; cette sous-arborescence est sécurisée et nécessite une authentification 
- vous devriez être redirigé vers FranceConnect automatiquement
- choisir "impots.gouv.fr" et utiliser les identifiants/mot de passe suivant :

	Numéro fiscal : mireille@binks.fr
	Mot de passe : 123

- vous devriez accéder à la ressource protégée



## Kit FranceConnect

Après authentification, le kit (https://doc.integ01.dev-franceconnect.fr/ressources-graphiques) est visible  par l'affichage de l'image FranceConnect en haut à gauche. en cliquant dessus vous accéder à plusieurs outils (statistiques et déconnexion par exemple).
    


## Base de développement

Le code du projet suivant a été réutilisé :
	https://github.com/astik/poc-franceconnect

Le code a gardé sa simplicité, le kit de connection FranceConnect a été rajouté et il est maitenant possible de visualiser qu'on récupère bien les informations utilisateurs
