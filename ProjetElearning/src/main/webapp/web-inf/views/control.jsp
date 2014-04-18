<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<link href="./resources/bootstrap.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="./resources/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="./resources/bootstrap-theme.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="./resources/bootstrap-theme.min.css" rel="stylesheet" type="text/css" media="screen" />
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
  <table class="table">
    <tr><th> Evaluation </th><th> Validation </th><th> Note </th></tr>
	<tr><td> eval1 </td><td> oui </td><td> 15/20 </td></tr>
	<tr><td> eval2 </td><td> oui </td><td> 15/20 </td></tr>
	<tr><td> eval3 </td><td> oui </td><td> 15/20 </td></tr>
  </table>
</div>
<div class="panel panel-default">	
<div class="panel-heading">Evaluations à venir</div>
<div class="list-group">
  <a href="#" class="list-group-item active">
    <h4 class="list-group-item-heading">Eval4</h4>
    <p class="list-group-item-text">date : 15/03/2014</p>
  </a>

    <a href="#" class="list-group-item">
    <h4 class="list-group-item-heading">Eval5</h4>
    <p class="list-group-item-text">date : 25/03/2014</p>
  </a>
  
      <a href="#" class="list-group-item">
    <h4 class="list-group-item-heading">Eval6</h4>
    <p class="list-group-item-text">date : 05/04/2014</p>
  </a>
  
</div>
</div>
</div>
</body>
</html>