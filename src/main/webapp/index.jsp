<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<jsp:include page="WEB-INF/kit-fc.jsp" />
	<h2>Page d'accueil d'un Fournisseur de Service!</h2>
	<a id="fc_login" rel="group" href="/poc-fc/secured" modal="true" autoheight="false" autosize="false">
		<img src="fc_boutons_png/FCboutons-10.png" alt="Connexion avec FranceConnect" />
	</a>
	<div>
		<h4>Ce contenu est accessible à toute personne identifié ou non</h4>
		<h5>Authentification avec FranceConnect</h5>
		Quand l'utilisateur clique sur le bouton "S'identifier avec FranceConnect"
		une demande d'authentification est envoyé sur l'adresse: https://fcp.integ01.dev-franceconnect.fr/api/v1/authorize
		<br>avec les paramètres suivant:<br>
		Scope = openid profile<br>
		State = test<br>
		Nonce = toto<br>
		<br>
		Le State et le Nonce doivent être normalement générés et crytés côté Fournisseur de Service
	</div>
</body>
</html>
