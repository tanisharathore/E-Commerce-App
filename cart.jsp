<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ecom.Product" %>
<!DOCTYPE html>
<html>
<head>
    <title>Your Shopping Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #0056b3;
            color: white;
        }

        .total-price {
            text-align: center;
            font-size: 1.2em;
            margin-top: 20px;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .button-container a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #0056b3;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin: 0 10px;
        }

        .button-container a:hover {
            background-color: #003f8a;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center; color: #0056b3;">Your Shopping Cart</h1>
    <%
        List<Product> cart = (List<Product>) session.getAttribute("cart");
        if (cart != null && !cart.isEmpty()) {
    %>
    <table>
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <% 
                double total = 0.0;
                for (Product product : cart) {
                    total += product.getPrice();
            %>
            <tr>
                <td><%= product.getName() %></td>
                <td>$<%= product.getPrice() %></td>
            </tr>
            <% } %>
            <tr>
                <td class="total">Total</td>
                <td class="total">$<%= total %></td>
            </tr>
        </tbody>
    </table>
    <% 
        } else { 
    %>
    <p style="text-align: center;">Your cart is empty.</p>
    <% } %>
    
    <div class="button-container">
        <a href="home.jsp">Continue Shopping</a>
        <a href="LogoutServlet">Logout</a>
    </div>
</body>
</html>
