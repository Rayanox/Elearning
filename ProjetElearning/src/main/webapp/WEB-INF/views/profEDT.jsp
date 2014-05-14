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
	<script type="text/javascript">
		$( document ).ready(function() {
			$('#datep').datepicker({
				format: 'dd-mm-yyyy',
				language: "FR"
			});
		});
	</script>
	<jsp:include page="Headers.jsp"></jsp:include>
</head>

<body>
	<div class="container">
	
		<h3>Votre emploi du temps</h3>

	<div class="well">
		<div class="col-lg-5">
			<div class="input-group">
				<span class="input-group-btn">
					<button class="btn btn-primary" type="button">Semaine précédente</button>
				</span> 
<!--    			    <div data-date="12-02-2012" data-date-format="dd-mm-yyyy"> -->
			    	<input id="datep" class="form-control" type="text" value="">
<!-- 			    </div> -->
				<span class="input-group-btn">
					<button class="btn btn-primary" type="button">Semaine suivante</button>
				</span>
			</div>
		</div>

		<a data-toggle="modal" href="#myModal" class="btn btn-success"><span
			class="glyphicon glyphicon-plus"></span> Ajouter un cours</a>

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Ajouter un cours</h4>
					</div>
					<div class="modal-body">
						<form class="form-inline" role="form">
							<div class="form-group">
								<label class="sr-only" for="fileInput">Fichier</label> <input
									type="email" class="form-control" id="fileInput"
									placeholder="Fichier à ajouter">
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
	
</body>
</html>