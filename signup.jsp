<html>
<head>
    <title>Signup</title>
    <style>

        /* General Body Styles */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #000000, #2c2c54, #34495e, #1a1a40, #0b0b30, #000000);
            background-size: 400% 400%; /* Animate the gradient */
            animation: gradientBG 10s ease infinite;
            color: #333;
            text-align: center;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Animate Gradient Background */
        @keyframes gradientBG {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        /* Form Container Styles */
        .form-container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            width: 350px;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        /* Heading Styles */
        h2 {
            color: white; /* Bright Pink */
            font-size: 24px;
            margin-bottom: 20px;
            text-transform: uppercase;
        }

        /* Input Field Styles */
        .input-field {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .input-field:focus {
            outline: none;
            border-color: #ff5c8a;
            box-shadow: 0 0 8px rgba(255, 92, 138, 0.4);
        }

        /* Submit Button Styles */
        .submit-btn {
    width: 100%;
    padding: 14px;
    background-color: #6a0dad; /* Purple shade */
    color: #fff;
    font-size: 18px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
    text-transform: uppercase;
}

.submit-btn:hover {
    background-color: #4b0082; /* Darker purple for hover effect */
    transform: scale(1.05); /* Slight enlargement */
}


        /* Link Styles */
        .back-link {
            margin-top: 15px;
            display: inline-block;
            text-decoration: none;
            color: white;
            font-size: 14px;
            transition: color 0.3s ease;
        }

        .back-link:hover {
            color: #ffd700; /* Golden hover effect */
        }
    </style>
</head>
<body>
    <h2>Signup</h2>
    <div class="form-container">
        <form action="SignupServlet" method="post">
            Username: <input type="text" name="username" class="input-field" required><br><br>
            
            Password: <input type="password" name="password" class="input-field" required><br><br>
            <input type="submit" value="Signup" class="submit-btn">
        </form>
    </div>
    <a href="login.jsp" class="back-link">Already have an account? Login</a>
</body>
</html>
