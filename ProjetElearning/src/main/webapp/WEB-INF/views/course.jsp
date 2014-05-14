<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
    <tr><th> Titre </th><th> Descriptif </th><th> Présentiel </th><th> En ligne </th> </tr>
	<tr><td> cours1 </td><td> résumé du cours </td><td> non </td><td> <button type="button" class="btn btn-info">Accéder au cours</button> </td></tr>
	<tr><td> cours2 </td><td> résumé du cours </td><td> oui</td><td> - </td></tr>
	<tr><td> Cours3 </td><td> résumé du cours </td><td> non </td><td> <button type="button" class="btn btn-info">Accéder au cours</button> </td></tr>
  </table>
</div>

<button type="button" class="btn btn-success">Inscription Cours/Evaluation</button>

</div>

</body>
</html>