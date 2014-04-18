

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<link href="./resources/bootstrap.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="./resources/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="./resources/bootstrap-theme.css" rel="stylesheet" type="text/css" media="screen" />
	<link href="./resources/bootstrap-theme.min.css" rel="stylesheet" type="text/css" media="screen" />
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<jsp:include page="Headers.jsp"></jsp:include>
		 <title>E-Learning</title>
    </head>
    <body>
	<div class="container">
        <h1>Connexion</h1>
        <form class="form-horizontal" role="form">
			  <div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">Email</label>
				<div class="col-sm-10">
				  <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
				</div>
			  </div>
			  <div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">Password</label>
				<div class="col-sm-10">
				  <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
				</div>
			  </div>
			  <div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
				  <div class="checkbox">
					<label>
					  <input type="checkbox"> Remember me
					</label>
				  </div>
				</div>
			  </div>
			  <div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
				  <button type="submit" class="btn btn-default">Sign in</button>
				</div>
			  </div>
		</form>
		</div>
    </body>
</html>
