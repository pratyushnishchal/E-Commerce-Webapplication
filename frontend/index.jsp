<%@page import="com.ecommerce.connection.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ecommerce.model.*"%>
<%@page import="com.ecommerce.connection.*"%>
<%@page import="java.util.ArrayList"%>
<%
User auth = (User) request.getSession().getAttribute("auth");

if (auth != null) {
	request.setAttribute("auth", auth);
}
ArrayList<Product> products = ProductDao.getAllProducts();
ArrayList<Cart> cart_list=(ArrayList<Cart>) session.getAttribute("cart-list");
if(cart_list!=null){
	cart_list=ProductDao.getCartProducts(cart_list);
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to Shopping Cart</title>
<%@include file="includes/head.jsp"%>
</head>
<body>
	<%@include file="includes/navbar.jsp"%>
	<div class="container">
		<div class="card-header my-3">All Products</div>
		<div class="row">
			<%
			if (!products.isEmpty()) {
				for (Product p : products) {
			%>
			<div class="col-md-6 my-3">
			<div class="card-group">
				<div class="card">
					<img class="card-img-top" src="<%=p.getImage() %>"
						alt="Card image cap" width="500" height="500">
					<div class="card-body">
						<h5 class="card-title"><%=p.getName()%></h5>
						<h6 class="price">
							Price: Rs <%=p.getPrice()%></h6>
						<h6 class="category">
							Category:
							<%=p.getCategory()%></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="add-to-cart?id=<%=p.getId() %>" class="btn btn-dark">Add to cart</a> <a href="order-now?quantity=1&id=<%=p.getId() %>"
								class="btn btn-primary">Buy Now</a>
						</div>
					</div>
				</div>
			</div>
			</div>
			<%
			}
			}
			%>

		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>