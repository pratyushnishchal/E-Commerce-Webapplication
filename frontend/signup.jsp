<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ecommerce.model.*"%>
    <%
    User auth = (User) request.getSession().getAttribute("auth");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
</head>
<%@include file="includes/head.jsp"%>
<body>
<%@include file="includes/navbar.jsp" %>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Registration</div>
			<div class="card-body">
				<form action="signup-page" method="post">
					<div class="form-group">
						<label>Name</label> <input type="text"
							class="form-control" name="name" required
							placeholder="Enter Your Name">
					</div>
					<div class="form-group">
						<label>Age</label> <input type="number"
							class="form-control" name="age" required
							placeholder="Enter Your Age" >
					</div>
					<div class="form-group">
						<label>Mobile Number</label> <input type="tel"
							class="form-control" name="mobile-num" required
							placeholder="Enter Your Mobile Number">
					</div>
					<div class="form-group">
						<label>Email</label> <input type="email"
							class="form-control" name="signup-email" required
							placeholder="Enter Your Email">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" name="signup-password" required
							placeholder="Enter your password">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Signup</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<%@include file="includes/footer.jsp"%>
</body>
</html>