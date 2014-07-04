<%@page import="fr.iut.elearning.model.Course"%>
<%@page import="org.springframework.context.annotation.Import"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
	<script src="/test.js"></script>
	<title>Tableau de bord</title>
</head>

<body>
	<jsp:include page="Headers.jsp"></jsp:include>
		  
		  

	<div style="margin: 10px;"> <!--  Englobe tout le contenu -->
		<h1 style="text-align: center;">Tableau de bord</h1>
		<div class="panel panel-default">
		  <!-- Default panel contents -->
		  
		  
		  			<div class="panel-heading">Recapitulatif des cours</div>


			<!-- Table -->
			<div class="well">
			
				<table class="table table-striped table-bordered">
					<tr>
						<th>Liste de tous les cours </th>
						<th>Liste des cours suivis </th>
					</tr>
						<tr>
							<td>
					<table class="table">
						<tr>
							<th>Intitule </th>
						</tr>



						<% 
java.util.List<Course> list = (java.util.List<Course>)  request.getAttribute("courseList");
for(Course course : list) {
	
	%>

						<tr>
							<td><%=course.getNameCourse() %> </td>
							<!-- <td><input type="checkbox" onclick="AjoutCours()"></td>  -->
						</tr>

<%
}
	%>



						
					</table>
					</td>
							<td>
					<table class="table">
						<tr>
							<th>Intitule</th>
						</tr>
						<% 
java.util.List<Course> listRegistred = (java.util.List<Course>)  request.getAttribute("listCourseRegistred");
for(Course course : listRegistred) {
	
	%>
						<tr>
							<td><%=course.getNameCourse() %> </td>
							<!-- <td><input type="checkbox" onclick="AjoutCours()"></td>  -->
						</tr>
						<%
}
	%>
						
					</table>
					</td>
						</tr>
				</table>
			</div>
		  
		  <!-- Codes javascript et AJAX -->
		  <script type="text/javascript">function AjoutCours(){
			  var elementTR = document.getElementById("cours3");
			  kill();
			  document.getElementById("14");
			  alert(document.getElementById("cours3").innerHTML);
			  //alert("Ajout d'un couuurs !!! : "+elementTR);
			}
		  </script>
		  
		  
		  
		  
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
<!-- 			<button>Se desinscrire</button> -->
<!-- 		</div> -->
		
		
	</div>	
</body>
</html>