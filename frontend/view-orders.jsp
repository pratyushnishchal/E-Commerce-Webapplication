
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ecommerce.model.*"%>
<%@page import="com.ecommerce.connection.*"%>
<%@page import="java.util.ArrayList"%>
<%
Admin admin = (Admin) request.getSession().getAttribute("admin_auth");
ArrayList<Order> ord1 = null;
if (admin != null) {
	request.getSession().setAttribute("admin_auth", admin);
	ord1 = ViewAllOrdersDao.getAllOrder();
} else {
	response.sendRedirect("admin-login.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Orders</title>
</head>
<%@include file="includes/head.jsp"%>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="admin-index.jsp">E-Commerce Admin
				Portal</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="admin-index.jsp">Home</a></li>

					<li class="nav-item"><a class="nav-link"
						href="add-products.jsp">Add Products</a></li>

					<li class="nav-item"><a class="nav-link"
						href="update-products.jsp">Update Products</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="view-orders.jsp">View Orders</a></li>
					<li class="nav-item"><a class="nav-link" href="log-out">LogOut</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="table-responsive">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Order Id</th>
						<th scope="col">Product Id</th>
						<th scope="col">User Id</th>
						<th scope="col">Product Name</th>
						<th scope="col">Category</th>
						<th scope="col">Order Date</th>
						<th scope="col">Quantity</th>
						<th scope="col">Price</th>
					</tr>
				</thead>
				<tbody>
					<%
					if (admin != null && ord1 != null) {
						for (Order o1 : ord1) {
					%>
					<tr>
						<td><%=o1.getOrderId()%></td>
						<td><%=o1.getId()%></td>
						<td><%=o1.getUid()%></td>
						<td><%=o1.getName()%></td>
						<td><%=o1.getCategory()%></td>
						<td><%=o1.getDate()%></td>
						<td><%=o1.getQuantity()%></td>
						<td><%=o1.getPrice()%></td>
					</tr>
					<%
					}
					}
					%>


				</tbody>
			</table>
		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>