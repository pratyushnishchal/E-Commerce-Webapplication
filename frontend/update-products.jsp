<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Products</title>
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
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Update Products</div>
			<div class="card-body">
				<form action="update-products" method="post">
					<div class="form-group">
						<label>Product ID</label> <input type="text"
							class="form-control" name="prod-id" required
							placeholder="Enter Product ID">
					</div>
					<div class="form-group">
						<label>Product Name</label> <input type="text"
							class="form-control" name="prod-name" required
							placeholder="Enter Product Name">
					</div>
					<div class="form-group">
						<label>Category</label> <input type="text" class="form-control"
							name="prod-category" required placeholder="Enter the category">
					</div>
					<div class="form-group">
						<label>Price</label> <input type="number" class="form-control"
							name="prod-price" required
							placeholder="Enter the price of product">
					</div>
					<div class="form-group">
						<label>Image Url</label> <input type="text" class="form-control"
							name="prod-url" required placeholder="Enter the product url">
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@include file="includes/head.jsp"%>
</body>
</html>