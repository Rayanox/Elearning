<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="./resources/bootstrap.css" rel="stylesheet" type="text/css"
	media="screen" />
<link href="./resources/bootstrap.min.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="./resources/bootstrap-theme.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="./resources/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css" media="screen" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Learning</title>
<jsp:include page="Headers.jsp"></jsp:include>
</head>
<body>
	<div class="container">

		<h1>Evaluation</h1>

		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">Récapitulatif des évaluations</div>

			<!-- Table -->
			<div class="well">
				<table class="table table-striped table-bordered">
					<tr>
						<th>Evaluations passées</th>
						<th>Evaluations à venir</th>
					</tr>
						<tr>
							<td>
					<table class="table">
						<tr>
							<th>Evaluation</th>
							<th>Validation</th>
							<th>Note</th>
						</tr>
						<tr>
							<td>eval1</td>
							<td>oui</td>
							<td>15/20</td>
						</tr>
						<tr>
							<td>eval2</td>
							<td>oui</td>
							<td>15/20</td>
						</tr>
						<tr>
							<td>eval3</td>
							<td>oui</td>
							<td>15/20</td>
						</tr>
					</table>
					</td>
							<td>
					<table class="table">
						<tr>
							<th>Evaluation</th>
							<th>Date</th>
							<th>Descriptif</th>
						</tr>
						<tr>
							<td>eval4</td>
							<td>15/05/2014</td>
							<td> - </td>
						</tr>
						<tr>
							<td>eval5</td>
							<td>25/05/2014</td>
							<td> - </td>
						</tr>
						<tr>
							<td>eval6</td>
							<td>05/06/2014</td>
							<td> - </td>
						</tr>
					</table>
					</td>
						</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>