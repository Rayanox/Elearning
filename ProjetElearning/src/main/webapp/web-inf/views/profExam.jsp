<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./resources/bootstrap.min.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<jsp:include page="Headers.jsp"></jsp:include>
<title>E-Learning</title>
</head>
<body>
	<div class="container">
	
		<h3>Vos contrôles</h3>
		<div class="well well-lg">
			<table class="table table-striped table-bordered">
				<tr>
					<td></td>
					<th>Contrôles à venir</th>
					<th>Contrôles passés</th>					
				</tr>
				<tr>
					<th></th>
					<th></th>
				</tr>
			</table>
		</div>
		
		<div class="course">
			<div class="col-md-8 col-md-offset-4">
				<button type="button" class="btn btn-success">Ajouter un contrôle</button>
			</div>
			<div class="col-md-8 col-md-offset-4">
				<button type="button" class="btn btn-success">Modifier un contrôle</button>
			</div>
			<div class="col-md-8 col-md-offset-4">
				<button type="button" class="btn btn-success">Supprimer un contrôle</button>
			</div>
		</div>
		
	</div>
</body>
</html>