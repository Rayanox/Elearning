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
	
		<h3>Vos contrôles</h3>
		
		<div class="col-md-6 col-md-offset-3 btgGroup">
			<div class="btn-group">
			  <a data-toggle="modal" id="addAssessment" href="#myModal" class="btn btn-success"><span class="glyphicon glyphicon-plus"></span> Ajouter un contrôle</a>
			  <a data-toggle="modal" href="#myModal1" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span> Modifier un contrôle</a>
			  <a id="assessmentDeleteBtn" class="btn btn-danger"><span class="glyphicon glyphicon-minus"></span> Supprimer un contrôle</a>
			</div>
		</div>

		<div class="well">
			<table class="table table-striped table-bordered assessmentTable">
				<tbody class="assessments">
					<tr>
						<th>Évaluations à venir</th>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
			        <input type="hidden" name="dashBoardAssessment" value="0">
			      </div>
			      </form>
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
	</div>
	
	<script type="text/javascript">
	$("#addAssessment").click(function(){
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
	
	$(document).ready(function(){
		var nameCourse, nameRoom, beginTime, endTime, id, date;
		
		$.ajax({
			url: 'getTeacherAssessment.html',
			type: 'GET',
			dataType: 'json',
			success: function(data) {
				$.each(data, function(i, item){
					var donnees;
					$.each(item, function(j, jitem){
						if($.isPlainObject(jitem) == false){
							date = jitem;
						}
						if(jitem.nameCourse != null){
							nameCourse = jitem.nameCourse;
						}
						if(jitem.nameRoom != null){
							nameRoom = jitem.nameRoom;
						}
						if(jitem.beginTime != null){
							beginTime = jitem.beginTime.substring(0,5);
						}
						if(jitem.endTime != null){
							endTime = jitem.endTime.substring(0,5);
						}
						if(jitem.id != null){
							id = jitem.id;
						}
						donnees = "<input type='checkbox' class='assessmentToDel' name ='assessmentToDelete' value = '"+id+"'> <span class='gras'>Date: </span>" + date + " <span class='gras'>Évaluation: </span>" + nameCourse + " <span class='gras'>Salle: </span>" + nameRoom + " <span class='gras'>Début: </span>" + beginTime + " <span class='gras'>Fin: </span>" + endTime;
					});
					$('.assessmentTable').find('.assessments').append("<tr><td>"+ donnees + "</td></tr>");
				});
			}
		});
	});
	
	$('#assessmentDeleteBtn').on('click', function(){
		var num = $('.assessmentToDel:checked').val();
		$.ajax({
	        url: 'deleteAssessment.html',
	        type : 'POST',
	        data: 'assessmentToDelete='+num,
	        
	        success: function(data) {
	        	location.reload();
	        }
	      });
	});
	</script>
</body>
</html>