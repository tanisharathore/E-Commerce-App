package com.ecom;

import java.util.ArrayList;
import java.util.List;

public class ProductService {

    private List<Product> products;

    public ProductService() {
        // Sample products
        products = new ArrayList<>();
        products.add(new Product(1, "Nail Paint", 80.00, "images/nail.png"));
        products.add(new Product(2, "Kajal", 120.00, "images/kajal.png"));
        products.add(new Product(3, "Perfume", 400.00, "images/perfume.png"));
        products.add(new Product(4, "Lipstick", 300.00, "images/lipstick.png"));
        products.add(new Product(5, "Eye Liner", 200.00, "images/eyeliner.png"));
        products.add(new Product(6, "Foundation", 350.00, "images/foundation.png"));
        products.add(new Product(7, "Hair Dryer", 600.00, "images/hairdryer.png"));
        products.add(new Product(8, "Earrings", 250.00, "images/facepack.jpg"));
        products.add(new Product(9, "Eye Shadow", 500.00, "images/eyeshadow.png"));
        products.add(new Product(10, "Face Pack", 80.0, "images/facepack.png"));
        products.add(new Product(11, "Blusher", 200.0, "images/blusher.png"));
        products.add(new Product(12, "Face powder", 150.0, "images/facepowder.png"));
    }

    // Method to get all products
    public List<Product> getAllProducts() {
        return products;
    }

    // Method to get a product by its ID
    public Product getProductById(int productId) {
        for (Product product : products) {
            if (product.getId() == productId) {
                return product;
            }
        }
        return null; // Return null if product not found
    }
}
