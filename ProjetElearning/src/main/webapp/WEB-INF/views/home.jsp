<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="./resources/bootstrap-glyphicons.css" rel="stylesheet">
	<jsp:include page="Headers.jsp"></jsp:include>

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
</head>
<body>

	
	<div class="container" style="">
		<p>Bienvenue ! Vous venez d'arriver sur le meilleur site d'e-learning qui existe en Europe. Il a été conçu par les meilleurs élèves dans le domaine : Camille, Rayane, Hussam, Boris !</p>
	</div>

</body>
</html>