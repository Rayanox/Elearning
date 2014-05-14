<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<title>Tableau de bord</title>
</head>


<body>
	
	<jsp:include page="Headers.jsp"></jsp:include>


	<div style="margin: 10px;"> <!--  Englobe tout le contenu -->
		<h1 style="text-align: center;">Tableau de bord</h1>
		<div class="panel panel-default">
		  <!-- Default panel contents -->
		  			<div class="panel-heading">Récapitulatif des cours</div>

			<!-- Table -->
			<div class="well">
				<table class="table table-striped table-bordered">
					<tr>
						<th>Liste de tous les cours &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <button>S'inscrire</button></th>
						<th>Liste des cours suivis &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <button>Se désinscrire</button></th>
					</tr>
						<tr>
							<td>
					<table class="table">
						<tr>
							<th>Intitulé </th>
							<th>Inscription</th>
						</tr>
						<tr>
							<td>Cours 1</td>
							<td><input type="checkbox"></td>
						</tr>
						<tr>
							<td>Cours 2</td>
							<td><input type="checkbox"></td>
						</tr>
						<tr>
							<td>Cours 3</td>
							<td><input type="checkbox"></td>
						</tr>
					</table>
					</td>
							<td>
					<table class="table">
						<tr>
							<th>Intitulé</th>
							<th>Désinscription</th>
						</tr>
						<tr>
							<td>Cours 4</td>
							<td><input type="checkbox"></td>
						</tr>
						<tr>
							<td>Cours 5</td>
							<td><input type="checkbox"></td>
						</tr>
						<tr>
							<td>Cours 6</td>
							<td><input type="checkbox"></td>
						</tr>
					</table>
					</td>
						</tr>
				</table>
			</div>
		  
		  
		  
		  
		  
		  
		  
<!-- 		  <div class="panel-heading">Liste de tous les cours</div> -->
		  
<!-- 		  Table liste de tous les cours -->
<!-- 		  <table class="table"> -->
<%-- 		   <% for(int i= 0; i< 5; i++) { %>  --%>
<!-- 			  <div class="col-lg-6" style="width: 100%;"> -->
<!-- 			    <div class="input-group" > -->
<!-- 			      <span class="input-group-addon"> -->
<!-- 			        <input type="checkbox"> -->
<!-- 			      </span> -->
<%-- 			      <input type="text" width="100%" readonly="readonly" value="Cours <% out.print(i+1); %>" class="form-control"> </input> --%>
<!-- 			    </div>/permet un petit espace -->
<!-- 			  </div>/.col-lg-6 -->
<%-- 			  <% } %> --%>
<!-- 		  </table> -->
<!-- 		</div> -->
		
<!-- 		<div> -->
<!-- 			<button>S'inscrire</button> -->
<!-- 		</div> -->
		
		
<!-- 		<div class="panel panel-default" style="margin-top: 15px"> -->
<!-- 		  Default panel contents -->
<!-- 		  <div class="panel-heading">Liste des cours suivis</div> -->
		  
<!-- 		  Table liste de tous les cours -->
<!-- 		  <table class="table"> -->
<%-- 		   <% for(int i= 0; i< 5; i++) { %>  --%>
<!-- 			  <div class="col-lg-6"  style="width: 100%;"> -->
<!-- 			    <div class="input-group"> -->
<!-- 			      <span class="input-group-addon"> -->
<!-- 			        <input type="checkbox"> -->
<!-- 			      </span> -->
<%-- 			      <input type="text" readonly="readonly" value="Cours <% out.print(i+1); %>" class="form-control"> --%>
<!-- 			    </div>/permet un petit espace -->
<!-- 			  </div>/.col-lg-6 -->
<%-- 			  <% } %> --%>
<!-- 		  </table> -->
<!-- 		</div> -->
		
<!-- 		<div> -->
<!-- 			<button>Se désinscrire</button> -->
<!-- 		</div> -->
		
		
	</div>	
</body>
</html>