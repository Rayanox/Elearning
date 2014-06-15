

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="Headers.jsp"></jsp:include>
</head>



<body>

	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Connexion</div>
					<div
						style="float: right; font-size: 80%; position: relative; top: -10px">
						<a href="#">Mot de passe oublié?</a>
					</div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>

					<form id="loginform" class="form-horizontal" action="./login"
						role="form" method="post">

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input id="login-username"
								type="text" class="form-control" name="username" 
								placeholder="Nom d'utilisateur">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input id="login-password"
								type="password" class="form-control" name="password"
								placeholder="Mot de passe">
						</div>

						<div class="input-group">
							<div class="checkbox">
								<label> <input id="login-remember" type="checkbox"
									name="remember" value="1"> Se souvenir de moi
								</label>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-12 controls">
								<button type="submit" class="btn btn-success">Connexion</button>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12 control">
								<div
									style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
									Pas de compte? <a href="#"
										onClick="$('#loginbox').hide(); $('#signupbox').show()">
										Inscription </a>
								</div>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
