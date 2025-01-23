package com.ecom;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Create an instance of ProductService to get the product list
        ProductService productService = new ProductService();
        
        // Get the list of products from ProductService
        List<Product> products = productService.getAllProducts();
        
        // Set the products attribute to pass to the JSP
        request.setAttribute("products", products);
        
        // Forward the request to home.jsp
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }
}
