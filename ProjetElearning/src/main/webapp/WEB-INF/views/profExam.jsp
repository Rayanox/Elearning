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
	
		<h3>Vos contrôles</h3>
		
		<div class="col-md-6 col-md-offset-3 btgGroup">
			<div class="btn-group">
			  <a data-toggle="modal" href="#myModal" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Ajouter un contrôle</a>
			  <a data-toggle="modal" href="#myModal1" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Modifier un contrôle</a>
			  <a data-toggle="modal" href="#myModal2" class="btn btn-danger"><span class="glyphicon glyphicon-minus"></span> Supprimer un contrôle</a>
			</div>
		</div>

		<div class="well">
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
		
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			        <h4 class="modal-title" id="myModalLabel">Ajouter un contrôle</h4>
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
				        <h4 class="modal-title" id="myModalLabel">Sélectionner le contrôle à modifier</h4>
				      </div>
				      <div class="modal-body">
				        <form class="form-inline" role="form">
						  <div class="form-group">
						    <label class="sr-only" for="fileInput">Contrôle</label>
						    <select class="form-control">
							  <option>Contrôle 1</option>
							  <option>Contrôle 2</option>
							  <option>Contrôle 3</option>
							  <option>Contrôle 4</option>
							  <option>Contrôle 5</option>
							</select>
						  </div>
						</form>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-danger" data-dismiss="modal">Annuler</button>
				        <button type="button" class="btn btn-primary">Modifier</button>
				      </div>
				    </div>
				  </div>
			</div>
			
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title" id="myModalLabel">Supprimer un contrôle</h4>
				      </div>
				      <div class="modal-body">
				        <form class="form-inline" role="form">
						  <div class="form-group">
						    <label class="sr-only" for="fileInput">Contrôle</label>
						    <select class="form-control">
							  <option>Contrôle 1</option>
							  <option>Contrôle 2</option>
							  <option>Contrôle 3</option>
							  <option>Contrôle 4</option>
							  <option>Contrôle 5</option>
							</select>
						  </div>
						</form>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-danger" data-dismiss="modal">Annuler</button>
				        <button type="button" class="btn btn-primary">Supprimer</button>
				      </div>
				    </div>
				  </div>
			</div>
		
	</div>
	<script src="./resources/js/jquery-1.11.1.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
</body>
</html>