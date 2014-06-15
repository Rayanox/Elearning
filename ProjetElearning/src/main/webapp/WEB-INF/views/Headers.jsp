<%@page import="fr.iut.elearning.model.Status"%>
<%@page import="fr.iut.elearning.model.SessionBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./resources/bootstrap.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="./resources/datepicker.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="./resources/demo.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="./resources/bootstrap-theme.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="./resources/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css" media="screen" />

<title>E-Learning</title>


<%
	//Initialisation des URL 
	SessionBean sess = (SessionBean) session
			.getAttribute("sessionBean");
	String url_EDT = "", url_DashBoard = "", url_Course = "", url_Control = "", url_Accueil = "", url_login, url_Deconnexion;

	url_EDT = "./EDT";
	url_DashBoard = "./DashBoard";
	url_Course = "./Course";
	url_Control = "./Control";

	url_Deconnexion = "./Deconnexion";
	url_Accueil = ".";
	url_login = "./login";
%>

<img height="175px" width="100%" alt=""
	src="./resources/Images/BanniereAvecPrenoms.jpg">
<div style="margin: 10px" class="">
	<!-- Conteneur menu -->
	<ul class="nav nav-pills col-md-9">
		<%
			if (!sess.getStatus().equals(Status.Visiteur)) {
		%>
		<li class="active"><a href="<%=url_DashBoard%>"><span
				class="glyphicon glyphicon-list-alt"></span> Tableau de Bord</a></li>
		<li><a href="<%=url_EDT%>"><span
				class="glyphicon glyphicon-calendar"></span> Emploi du temps</a></li>
		<li><a href="<%=url_Course%>"><span
				class="glyphicon glyphicon-book"></span> Cours</a></li>
		<li><a href="<%=url_Control%>"><span
				class="glyphicon glyphicon-saved"></span> Contrôles</a></li>
		<%
			} else {
		%>
		<li><a href="<%=url_Accueil%>"><span
				class="glyphicon glyphicon-saved"></span> Accueil</a></li>
		<%
			}
		%>
	</ul>


	<ul class="nav nav-pills pull-right">
		<%
			if (!sess.getStatus().equals(Status.Visiteur)) {
		%>
		<li><a href="#"><span class="glyphicon glyphicon-user"></span>
				<%= sess.getLogin() %></a></li>
		<li><a href="<%=url_Deconnexion%>"><span
				class="glyphicon glyphicon-off"></span> Déconnexion</a></li>
		<%
			} else {
		%>
		<li><a href="<%=url_login%>"><span
				class="glyphicon glyphicon-off"></span> Connexion</a></li>
		<%
			}
		%>
	</ul>


</div>
<br>
<br>
