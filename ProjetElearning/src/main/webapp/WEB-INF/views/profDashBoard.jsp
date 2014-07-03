<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<link href="./resources/bootstrap-glyphicons.css" rel="stylesheet">
	<script src="./resources/js/jquery-1.11.1.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<jsp:include page="Headers.jsp"></jsp:include>
</head>


<body>
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
			    <a data-toggle="modal" href="#myModal" class="btn btn-info btn-lg addCourseOrAssessment"><span class="glyphicon glyphicon-plus"></span> Ajouter un cours</a>
			  </div>
			  <div class="btn-group">
			    <a data-toggle="modal" href="#myModal1" class="btn btn-success btn-lg addCourseOrAssessment"><span class="glyphicon glyphicon-plus"></span> Ajouter une évaluation</a>
			  </div>
			  <div class="btn-group">
			    <a data-toggle="modal" href="#myModal2" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-plus"></span> Ajouter des notes</a>
			  </div>
			</div>
			
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				     <form id="courseform" class="form-inline" action="./addCourse" role="form" method="post">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title" id="myModalLabel">Ajouter un cours</h4>
				      </div>
				      <div class="modal-body">
				      	
						<div class="form-group">
							<label for="course">Cours</label>
						    <select name="course" class="form-control course"></select>
						</div>
						<div class="form-group">
							<label for="rooms">Salle</label>
							<select name="rooms" class="form-control rooms"></select>
						</div>
						<div class="form-group">
							<label for="beginTime">Début</label>
							<select name="beginTime" class="form-control">
								<option value="9:00:00">9:00</option>
								<option value="10:00:00">10:00</option>
								<option value="11:00:00">11:00</option>
								<option value="12:00:00">12:00</option>
								<option value="13:00:00">13:00</option>
								<option value="14:00:00">14:00</option>
								<option value="15:00:00">15:00</option>
								<option value="16:00:00">16:00</option>
							</select>
						</div>
						<div class="form-group">
							<label for="endTime">Fin</label>
							<select name="endTime" class="form-control">
								<option value="10:00:00">10:00</option>
								<option value="11:00:00">11:00</option>
								<option value="12:00:00">12:00</option>
								<option value="13:00:00">13:00</option>
								<option value="14:00:00">14:00</option>
								<option value="15:00:00">15:00</option>
								<option value="16:00:00">16:00</option>
								<option value="17:00:00">17:00</option>
							</select>
						</div>
						<div class="form-group">
							<label for="date">Date</label>
							<input type="text" name="date" placeholder="AAAA-MM-AA">
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-danger" data-dismiss="modal">Annuler</button>
				        <button type="submit" class="btn btn-primary">Sauvegarder</button>
				      </div>
				      </form>
				    </div>
				  </div>
			</div>
			
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				     <form id="assessmentform" class="form-inline" action="./addAssessment" role="form" method="post">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title" id="myModalLabel">Ajouter une évaluation</h4>
				      </div>
				      <div class="modal-body">
				      	
						<div class="form-group">
							<label for="course">Cours</label>
						    <select name="course" class="form-control course"></select>
						</div>
						<div class="form-group">
							<label for="rooms">Salle</label>
							<select name="rooms" class="form-control rooms"></select>
						</div>
						<div class="form-group">
							<label for="beginTime">Début</label>
							<select name="beginTime" class="form-control">
								<option value="9:00:00">9:00</option>
								<option value="10:00:00">10:00</option>
								<option value="11:00:00">11:00</option>
								<option value="12:00:00">12:00</option>
								<option value="13:00:00">13:00</option>
								<option value="14:00:00">14:00</option>
								<option value="15:00:00">15:00</option>
								<option value="16:00:00">16:00</option>
							</select>
						</div>
						<div class="form-group">
							<label for="endTime">Fin</label>
							<select name="endTime" class="form-control">
								<option value="10:00:00">10:00</option>
								<option value="11:00:00">11:00</option>
								<option value="12:00:00">12:00</option>
								<option value="13:00:00">13:00</option>
								<option value="14:00:00">14:00</option>
								<option value="15:00:00">15:00</option>
								<option value="16:00:00">16:00</option>
								<option value="17:00:00">17:00</option>
							</select>
						</div>
						<div class="form-group">
							<label for="date">Date</label>
							<input type="text" name="date" placeholder="AAAA-MM-AA">
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-danger" data-dismiss="modal">Annuler</button>
				        <button type="submit" class="btn btn-primary">Sauvegarder</button>
				      </div>
				      </form>
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
	
	<script type="text/javascript">
	
	$(".addCourseOrAssessment").click(function(){
	      $.ajax({
	        url: 'getCourse.html',
	        type : 'GET',
	        dataType: 'json',
	        success: function(data) {
	        	for (var i = 0; i < data.length; i++) {
	                $('.course')
	                	.append($("<option></option>")
	                	.attr("value",data[i].id)
	                	.text(data[i].nameCourse));
	              }
	        }
	      });
	      
	      $.ajax({
		        url: 'getRooms.html',
		        type : 'GET',
		        dataType: 'json',
		        success: function(data) {
		        	for (var i = 0; i < data.length; i++) {
		        		$('.rooms')	
		                	.append($("<option></option>")
		                	.attr("value",data[i].id)
		                	.text(data[i].nameRoom));
		              }
		        }
		      });
	});
	</script>
	
</body>
</html>