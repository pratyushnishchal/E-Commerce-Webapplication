<%@page import="java.text.DecimalFormat"%>
<%@page import="com.ecommerce.connection.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ecommerce.model.*"%>
	<%@page import="java.util.ArrayList"%>

<%
DecimalFormat dcf=new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}
ArrayList<Cart> cart_list=(ArrayList<Cart>) session.getAttribute("cart-list");
if(cart_list!=null){
	cart_list=ProductDao.getCartProducts(cart_list);
	double total=ProductDao.getTotalPrice(cart_list);
	request.setAttribute("cart_list", cart_list);
	request.setAttribute("total", total);
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Cart Page</title>
<%@include file="includes/head.jsp"%>
<style>
.btn-incre, .btn-decre {
	box-shadow: none;
	font-size: 25px;
}
</style>
</head>
<body>
    <%@include file="includes/navbar.jsp"%>
    <div class="container">
        <div class="d-flex flex-column flex-md-row py-3">
            <h3 class="mb-3 mb-md-0">Total Price: $ ${(total > 0) ? dcf.format(total) : 0}</h3>
            <a class="mx-md-3 btn btn-primary" href="cart-check-out">Check Out</a>
        </div>
        <div class="table-responsive">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Price</th>
                        <th scope="col">Buy Now</th>
                        <th scope="col">Cancel</th>
                    </tr>
                </thead>
                <tbody>
                    <% if (cart_list != null) {
                        for (Cart cm : cart_list) { %>
                            <tr>
                                <td><%= cm.getName() %></td>
                                <td><%= cm.getCategory() %></td>
                                <td><%= dcf.format(cm.getPrice()) %></td>
                                <td>
                                    <form action="order-now" method="post" class="form-inline">
                                        <input type="hidden" name="id" value="<%= cm.getId() %>" class="form-input">
                                        <div class="form-group d-flex align-items-center w-100">
                                            <a class="btn btn-sm btn-incre mx-1" href="quantity-inc-dec?action=inc&id=<%= cm.getId() %>">
                                                <i class="fas fa-plus-square"></i>
                                            </a>
                                            <input type="text" name="quantity" class="form-control w-25 mx-1 text-center" value="<%= cm.getQuantity() %>" readonly>
                                            <a class="btn btn-sm btn-decre mx-1" href="quantity-inc-dec?action=dec&id=<%= cm.getId() %>">
                                                <i class="fas fa-minus-square"></i>
                                            </a>
                                            <button type="submit" class="btn btn-primary btn-sm mx-1">Buy</button>
                                        </div>
                                    </form>
                                </td>
                                <td>
                                    <a href="remov-item-from-cart?id=<%= cm.getId() %>" class="btn btn-sm btn-danger">Remove</a>
                                </td>
                            </tr>
                        <% }
                    } %>
                </tbody>
            </table>
        </div>
    </div>
    <%@include file="includes/footer.jsp"%>
</body>


</html>