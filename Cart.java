package com.ecom;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<Product> products;

    public Cart() {
        products = new ArrayList<>();
    }

    // Add product to the cart
    public void addProduct(Product product) {
        if (product != null) {
            products.add(product);
        }
    }

    // Get all products in the cart
    public List<Product> getProducts() {
        return products;
    }

    // Calculate the total price of products in the cart
    public double getTotalPrice() {
        double total = 0;
        for (Product product : products) {
            total += product.getPrice();
        }
        return total;
    }
}
