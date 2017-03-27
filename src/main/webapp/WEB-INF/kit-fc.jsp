<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<% if (session.getAttribute("userInfo") != null) {
	HashMap<String, Object> userDetails = (HashMap) session.getAttribute("userInfo");
	String firstName = "";
	String familyName = "";
	if (userDetails != null) {
		firstName = (String)userDetails.get("given_name");
		familyName = (String)userDetails.get("family_name");
	}
	else{
		firstName = null;
		familyName = null;
	}
%>
<div style= background-color:blue>
	<div id="fconnect-profile" data-fc-logout-url="/poc-fc/logout">
	    <a href="#"><%= firstName + " " + familyName %></a>
	</div>
</div>
<div>
	<h4>Voici les informations utilisateurs dont je dispose</h4>
	<%= userDetails %>
</div>
<script src="http://fcp.integ01.dev-franceconnect.fr/js/franceconnect.js"></script>

<% } %>