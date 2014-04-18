<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
	<jsp:include page="Headers.jsp"></jsp:include>
	<title>E-Learning</title>
</head>
<body>
	<div class="container">
	
		<h3>Votre emploi du temps</h3>
		
		<div class="well">
			<button type="button" class="btn btn-primary">Semaine Précédente</button>
			<div class="col-lg-4">
				<input type="text" class="form-control" placeholder="Date">
			</div>
			<button type="button" class="btn btn-primary">Semaine Suivante</button>
			
			<a data-toggle="modal" href="#myModal" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Ajouter un cours</a>
			    
			    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title" id="myModalLabel">Ajouter un cours</h4>
				      </div>
				      <div class="modal-body">
				        <form class="form-inline" role="form">
						  <div class="form-group">
						    <label class="sr-only" for="fileInput">Fichier</label>
						    <input type="email" class="form-control" id="fileInput" placeholder="Fichier à ajouter">
						  </div>
						  <button type="submit" class="btn btn-default">Ajouter</button>
						</form>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-danger" data-dismiss="modal">Annuler</button>
				        <button type="button" class="btn btn-primary">Sauvegarder</button>
				      </div>
				    </div>
				  </div>
				</div>
		</div>
		
		<div class="well well-lg">
			<table class="table table-striped table-bordered">
				<tr>
					<td></td>
					<th>Lundi</th>
					<th>Mardi</th>
					<th>Mercredi</th>
					<th>Jeudi</th>
					<th>Vendredi</th>
				</tr>
				<tr>
					<th>9h - 10h</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th>10h - 11h</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th>11h - 12h</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th>12h - 13h</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th>13h - 14h</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th>14h - 15h</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th>15h - 16h</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th>16h - 17h</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<th>17h - 18h</th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
			</table>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</body>
</html>