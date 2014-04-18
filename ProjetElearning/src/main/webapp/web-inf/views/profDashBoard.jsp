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
		
		<h3>Tableau de bord</h3>
		
		<div class="well">
			<div class="list-group">
			  <a href="#" class="list-group-item active">Prochain cours<span class="badge">14/05/2014 à 9H</span></a>
			  <a href="#" class="list-group-item">Prochaine évaluation<span class="badge">14/05/2014 à 9H</span></a>
			  <a href="#" class="list-group-item">Nombre de cours mis en ligne<span class="badge">14</span></a>
			  <a href="#" class="list-group-item">Nombre d'élèves inscrit à mes cours<span class="badge">14</span></a>
			</div>
			
			<div class="btn-group btn-group-justified">
			  <div class="btn-group">
			    <a data-toggle="modal" href="#myModal" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-plus"></span> Ajouter un cours</a>
			  </div>
			  <div class="btn-group">
			    <a data-toggle="modal" href="#myModal1" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-plus"></span> Ajouter une évaluation</a>
			  </div>
			  <div class="btn-group">
			    <a data-toggle="modal" href="#myModal2" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-plus"></span> Ajouter des notes</a>
			  </div>
			</div>
			
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
			
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title" id="myModalLabel">Ajouter une évaluation</h4>
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
			
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title" id="myModalLabel">Ajouter de notes</h4>
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
	</div>
	<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</body>
</html>