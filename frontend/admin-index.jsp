<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ecommerce.model.*" %>
    <%@page import="com.ecommerce.connection.*" %>
    <%@page import="java.util.ArrayList" %>
    <%
    Admin admin=(Admin)request.getSession().getAttribute("admin_auth");
    ArrayList<SignupUser> al=null;
    if(admin!=null) {
		request.getSession().setAttribute("admin_auth", admin);
		al=(ArrayList<SignupUser>)AllUsersDao.userLogin();
	}
    else{
    	response.sendRedirect("admin-login.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<%@include file="includes/head.jsp"%>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="admin-index.jsp">E-Commerce Admin Portal</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="admin-index.jsp">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="add-products.jsp">Add Products</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="update-products.jsp">Update Products</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="view-orders.jsp">View Orders</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="log-out">LogOut</a>
				</li>	
			</ul>
		</div>
	</div>
</nav>
<div class="container">
		<div class="card-header my-3">All Users</div>
		<div class="table-responsive">
			<table class="table table-light table-md">
				<thead class="thead-dark">
					<tr>
						<th scope="col">User Id</th>
						<th scope="col">Name</th>
						<th scope="col">Age</th>
						<th scope="col">Mobile Number</th>
						<th scope="col">Email</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
				<% if(al!=null){
					for(SignupUser su1:al){%>
				<tr>
						<td><%=su1.getId() %></td>
						<td><%=su1.getName() %></td>
						<td><%=su1.getAge() %></td>
						<td><%=su1.getMobile() %></td>
						<td><%=su1.getEmail() %></td>
						<td><a href="admin-delete-account?id=<%=su1.getId() %>" class="btn btn-danger btn-sm">Delete Account</a></td>
				</tr>
					<% }
				}%>
				</tbody>
			</table>
		</div>
	</div>
<%@include file="includes/footer.jsp"%>
</body>
</html>