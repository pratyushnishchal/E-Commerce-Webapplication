<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>
<%@include file="includes/head.jsp"%>
<body>
<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Admin Login</div>
			<div class="card-body">
				<form action="admin-login" method="post">
					<div class="form-group">
						<label>Email Address</label> <input type="email"
							class="form-control" name="admin-login-email" required
							placeholder="Enter Your email">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" name="admin-login-password" required
							placeholder="Enter your password">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary md-6">Login</button>
					</div>
					
				</form>
			</div>
		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>