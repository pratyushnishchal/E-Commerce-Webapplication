<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>
</head>
<%@include file="includes/head.jsp"%>
<body>
<%@include file="includes/navbar.jsp"%>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Update Profile</div>
			<div class="card-body">
				<form action="update-profile" method="post">
				<input type="hidden" name="id" value="<%=auth.getId() %>" class="form-input">
					<div class="form-group">
						<label>Name</label> <input type="text"
							class="form-control" name="update-name" required
							placeholder="Enter Your Name" value="<%=auth.getName() %>">
					</div>
					<div class="form-group">
						<label>Age</label> <input type="number"
							class="form-control" name="update-age" required
							placeholder="Enter Your Age" value="<%=auth.getAge() %>" >
					</div>
					<div class="form-group">
						<label>Mobile Number</label> <input type="tel"
							class="form-control" name="update-mobile-num" required
							placeholder="Enter Your Mobile Number" value="<%=auth.getMobile() %>">
					</div>
					<div class="form-group">
						<label>Email</label> <input type="email"
							class="form-control" name="update-email" required
							placeholder="Enter Your Email" value="<%= auth.getEmail() %>">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" name="update-password" required
							placeholder="Enter your password" value="<%=auth.getPassword() %>">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<%@include file="includes/footer.jsp"%>
</body>
</html>