<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="./resources/bootstrap-glyphicons.css" rel="stylesheet">
	<jsp:include page="Headers.jsp"></jsp:include>
	
<!-- </head> -->
<!-- <body> -->
	<div class="container">
		
		<h3>Tableau de bord</h3>
		
		<div class="well">
			<ul class="nav nav-pills nav-stacked">
			  <li class="active">
			    <a href="#">
			      <span class="badge pull-right">14/05/2014 à 9H</span>
			      Prochain cours
			    </a>
			  </li>
			  <li>
			    <a href="#">
			      <span class="badge pull-right">14/05/2014 à 9H</span>
			      Prochaine évaluation
			    </a>
			  </li>
			  <li>
			    <a href="#">
			      <span class="badge pull-right">42</span>
			      Nombre de cours mis en ligne
			    </a>
			  </li>
			  <li>
			    <a href="#">
			      <span class="badge pull-right">42</span>
			      Nombre d'élèves inscrit à mes cours
			    </a>
			  </li>
			</ul>
			
			
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
	<script src="./resources/js/jquery-1.11.1.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
</body>
</html>