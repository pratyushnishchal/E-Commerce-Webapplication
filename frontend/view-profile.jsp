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
<title>View Profile</title>
<%@include file="includes/head.jsp"%>
</head>
<body>
	<%@include file="includes/navbar.jsp"%>
	<div class="container">
	<div class="card mx-auto text-center mt-2" style="width: 25rem;">
		<img class="card-img-top" src="images/Default_avatar_profile.jpg" alt="Card image cap">
		<div class="card-body center">
			<h5 class="card-title text-center">Profile Details</h5>
			<div class="card-text">
				<h4>
					Name:
					<%=auth.getName()%></h4>
				<h4>
					Age:
					<%=auth.getAge()%></h4>
				<h4>
					Email: <%=auth.getEmail()%></h4>
				<h4>
					Mobile Number:
					<%=auth.getMobile()%></h4>
			</div>
		</div>
		<div>
		
 		<a href="update-profile.jsp" class="btn btn-primary btn-md" type="submit">Update Profile</a>
		</div>
	</div>
	
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>