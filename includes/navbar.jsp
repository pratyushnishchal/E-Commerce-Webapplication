<%@page import="com.ecommerce.model.User" %>
<%
User u=new User(); %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">E-Commerce Shopping Cart</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart<span
						class="badge badge-danger px-1">${cart_list.size()}</span></a></li>
				<%
				if (auth != null) {
				%>
				<li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="view-profile">View Profile</a></li>
				<li class="nav-item"><a class="nav-link" href="log-out">Logout</a></li>
				
				<%
				} else {
				%>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Login </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="admin-login.jsp">Admin Login</a>
						<div class="dropdown-divider"></div> 
						<a class="dropdown-item" href="login.jsp">User Login</a>
					</div>
				</li>
				<li class="nav-item"><a class="nav-link" href="signup.jsp">SignUp</a>
				</li>
				<%
				}
				%>
				
			</ul>
		</div>
	</div>
</nav>