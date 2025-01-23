<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #F2A5A0, #F5BFB0, #FAD2C4, #F9D9A5, #F2A5A0);
            color: #333;
            margin: 0;
            padding: 0;
            height: 100vh;
            animation: fadeInBackground 3s ease-in-out infinite;
        }

        @keyframes fadeInBackground {
            0% {
                background: linear-gradient(135deg, #F9D9A5, #F2A5A0, #FAD2C4, #F5BFB0, #F9D9A5);
            }
            50% {
                background: linear-gradient(135deg, #F8D8C8, #F2A5A0, #F5BFB0, #FAD2C4, #F8D8C8);
            }
            100% {
                background: linear-gradient(135deg, #F9D9A5, #F2A5A0, #FAD2C4, #F5BFB0, #F9D9A5);
            }
        }

        .product-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            margin: 20px;
        }

        .product-card {
            background: #ffffff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
            padding: 15px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .product-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
        }

        .product-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 5px;
        }

        .product-card h3 {
            font-size: 1.2em;
            margin: 10px 0;
            color: #061826;
        }

        .product-card p {
            font-size: 1em;
            margin: 5px 0;
            color: #333;
        }

        .add-to-cart-btn {
            display: inline-block;
            margin-top: 10px;
            padding: 12px 25px;
            background-color: #A4303F;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1em;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .add-to-cart-btn:hover {
            background-color:  #219ebc;
            transform: scale(1.1);
        }

        .add-to-cart-btn:active {
            transform: scale(1);
            background-color: #219ebc;
        }

        h1 {
            text-align: center;
            color: #061826;
            font-size: 2.5em;
            margin-top: 30px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body>
    <h1>Welcome to Beauty Product Store!</h1>
    <div class="product-container">
        <!-- Existing Products -->
        <div class="product-card">
            <img src="images/nail.png" alt="Nail Paint">
            <h3>Nail Paint</h3>
            <p>Price: $80</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="1">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>
        <div class="product-card">
            <img src="images/kajal.png" alt="Kajal">
            <h3>Kajal</h3>
            <p>Price: $120</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="2">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>
        <div class="product-card">
            <img src="images/perfume.png" alt="Perfume">
            <h3>Bellavita Perfume</h3>
            <p>Price: $400</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="3">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>

        <!-- New Products -->
        <div class="product-card">
            <img src="images/lipstick.png" alt="Lipstick">
            <h3>Lipstick</h3>
            <p>Price: $300</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="4">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>
        <div class="product-card">
            <img src="images/eyeliner.png" alt="Eyeliner">
            <h3>Eye Liner</h3>
            <p>Price: $200</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="9">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>
        <div class="product-card">
            <img src="images/foundation.png" alt="Foundation">
            <h3>Foundation</h3>
            <p>Price: $350</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="12">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>

        <div class="product-card">
            <img src="images/hairdryer.png" alt="Hairdryer">
            <h3>Hair Dryer</h3>
            <p>Price: $600</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="6">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>
        <div class="product-card">
            <img src="images/earrings.png" alt="Earrings">
            <h3>Earrings</h3>
            <p>Price: $250</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="7">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>

        <div class="product-card">
            <img src="images/eyeshadow.png" alt="Eyeshadow">
            <h3>Eye Shadow</h3>
            <p>Price: $500</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="10">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>
        <div class="product-card">
            <img src="images/facepack.jpg" alt="Facepack">
            <h3>Face Pack</h3>
            <p>Price: $80</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="8">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>

        <div class="product-card">
            <img src="images/blusher.png" alt="Blusher">
            <h3>Blusher</h3>
            <p>Price: $200</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="11">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>
        <div class="product-card">
            <img src="images/facepowder.png" alt="Face Powder">
            <h3>Face Powder</h3>
            <p>Price: $250</p>
            <form action="CartServlet" method="post">
                <input type="hidden" name="productId" value="13">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>
    </div>
    
    <!-- <script type="text/javascript">
        window.onload = function() {
            // Get the username from the session
            var username = "<%= session.getAttribute("username") %>";
            if (username) {
                // Show an alert with a welcome message
                alert("Welcome, " + username + "! You are logged in. Enjoy your shopping experience.");
            }
        }
    </script> -->
</body>
</html>
