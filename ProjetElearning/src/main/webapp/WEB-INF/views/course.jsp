<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="./resources/bootstrap-glyphicons.css" rel="stylesheet">

<script src="./resources/js/jquery-1.11.1.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/bootstrap-datepicker.js"></script>
<script src="./resources/js/bootstrap-datepicker.fr.js"></script>
<jsp:include page="Headers.jsp"></jsp:include>

</head>


<body>
	<div class="container">

		<h1>Cours</h1>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">Récapitulatif des cours</div>
			<!-- Table -->
			<table class="table">
				<tr>
					<th>Titre</th>
					<th>Descriptif</th>
					<th>Présentiel</th>
					<th>En ligne</th>
				</tr>
				<tr>
					<td>cours1</td>
					<td>résumé du cours</td>
					<td>non</td>
					<td><input type="checkbox" name="idbox"></td>
				</tr>
				<tr>
					<td>cours2</td>
					<td>résumé du cours</td>
					<td>oui</td>
					<td>-</td>
				</tr>
				<tr>
					<td>Cours3</td>
					<td>résumé du cours</td>
					<td>non</td>
					<td><input type="checkbox" name="idbox"></td>
				</tr>
			</table>
		</div>

		<a data-toggle="modal" href="#myModal" class="btn btn-info"><span
			class="glyphicon glyphicon-plus"></span> Accéder à un cours</a>

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Télécharger un
							cours</h4>
					</div>
					<div class="modal-body">
						<form class="form-inline" role="form">
							<div class="form-group">
								<select class="form-control">
									<option>Intitulé du cours 1</option>
									<option>Intitulé du cours 3</option>
								</select>
							</div>
							<div class="form-group">
								<select class="form-control">
									<option>Semestre 1</option>
									<option>Semestre 2</option>
								</select>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Annuler</button>
						<button type="button" class="btn btn-primary">Télécharger</button>
					</div>
				</div>
			</div>
		</div>

		<a data-toggle="modal" href="#myModal1" class="btn btn-success"><span
			class="glyphicon glyphicon-plus"></span> Inscription Cours/Evaluation</a>

		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Inscription
							Cours/Evaluation</h4>
					</div>
					<div class="modal-body">
						<h4>Inscription cours</h4>
						<form class="form-inline" role="form">
							<div class="form-group">
								<select class="form-control">
									<option>Intitulé du cours 1</option>
									<option>Intitulé du cours 2</option>
									<option>Intitulé du cours 3</option>
									<option>Intitulé du cours 4</option>
									<option>Intitulé du cours 5</option>
								</select>
							</div>
							<div class="form-group">
								<select class="form-control">
									<option>Semestre 1</option>
									<option>Semestre 2</option>
								</select>
							</div>
						</form>

						<h4>Inscription évaluations</h4>
						<form class="form-inline" role="form">
							<div class="form-group">
								<select class="form-control">
									<option>Intitulé éval 1</option>
									<option>Intitulé éval 2</option>
									<option>Intitulé éval 3</option>
									<option>Intitulé éval 4</option>
									<option>Intitulé éval 5</option>
								</select>
							</div>
							<div class="form-group">
								<select class="form-control">
									<option>Semestre 1</option>
									<option>Semestre 2</option>
								</select>
							</div>
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Annuler</button>
						<button type="button" class="btn btn-primary">S'inscrire</button>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>