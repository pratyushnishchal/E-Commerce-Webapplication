<%@page import="com.ecommerce.connection.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ecommerce.model.*"%>
<%@page import="java.util.ArrayList"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
ArrayList<Order> order = null;
if (auth != null) {
	request.setAttribute("auth", auth);
	order = OrderDao.getAllOrders(auth.getId());
}
else{
	response.sendRedirect("login.jsp");
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	session.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Orders Page</title>
<%@include file="includes/head.jsp"%>
</head>
<body>
	<%@include file="includes/navbar.jsp"%>
	<div class="container">
		<div class="card-header my-3">All Orders</div>
		<div class="table-responsive">
			<table class="table table-light">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Date</th>
						<th scope="col">Name</th>
						<th scope="col">Category</th>
						<th scope="col">Quantity</th>
						<th scope="col">Price</th>
						<th scope="col">Cancel</th>
					</tr>
				</thead>
				<tbody>
					<%
					if (order != null) {
						for (Order o : order) {
					%>
					<tr>
						<td><%=o.getDate()%></td>
						<td><%=o.getName()%></td>
						<td><%=o.getCategory()%></td>
						<td><%=o.getQuantity()%></td>
						<td><%=o.getPrice()%></td>
						<td><a href="cancel-order?id=<%=o.getOrderId() %>"
							class="btn btn-danger">Cancel</a></td>
					</tr>

					<%
					}
					%>
					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>