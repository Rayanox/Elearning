<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
	<link href="./resources/bootstrap.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="./resources/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="./resources/bootstrap-theme.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="./resources/bootstrap-theme.min.css" rel="stylesheet" type="text/css" media="screen" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="Headers.jsp"></jsp:include>
<title>E-Learning</title>
</head>
<body>
	<div class="container">
	
	 <h1>Inscription</h1>
	<div class="panel panel-default">
		<div class="panel-heading">Choix de l'inscription</div>
			<label>
				<input type="radio" checked> Cours
			</label>
	
			<label>
				<input type="radio"> Evaluation
			</label></br>
	</div>
	
	<div class="panel panel-default">
		<div class="panel-heading">Descriptif</div>
			
			<SELECT name="Choix" size="1">
				<OPTION>Cours1
				<OPTION>Cours2
				<OPTION>Cours3
			</SELECT>
	
			<SELECT name="ChoixSemestre" size="1">
				<OPTION>Semestre 1
				<OPTION>Semestre 2
			</SELECT>
	</div>
	
<button type="button" class="btn btn-success">Valider</button>
<button type="button" class="btn btn-danger">annuler</button>
</div>
</body>
</html>