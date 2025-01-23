<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #00c6ff, #0072ff); /* Gradient background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
            overflow: hidden;
        }

        /* Main Container */
        .welcome-container {
            text-align: center;
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 15px;
            padding: 40px 50px;
            max-width: 600px;
            width: 90%;
            box-shadow: 0px 15px 25px rgba(0, 0, 0, 0.5);
        }

        h2 {
            font-size: 3em;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 2px;
            color: #ffeb3b;
            font-weight: 600;
        }

        /* Button Container */
        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        /* Button Styles */
        .button {
            padding: 15px 35px;
            font-size: 1.2em;
            border-radius: 50px;
            text-decoration: none;
            background: #ffeb3b;
            color: #333;
            border: 2px solid #ffeb3b;
            transition: all 0.3s ease;
            display: inline-block;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Button Hover Effects */
        .button:hover {
            background: transparent;
            color: #ffeb3b;
            border-color: #ffeb3b;
            transform: translateY(-5px);
        }

        .button:active {
            background: #ffeb3b;
            color: #333;
            transform: translateY(2px);
        }

        /* Mobile Responsiveness */
        @media (max-width: 768px) {
            h2 {
                font-size: 2em;
            }

            .button {
                font-size: 1.1em;
                padding: 12px 30px;
            }
        }
    </style>
</head>
<body>

    <div class="welcome-container">
        <h2>Welcome to the E-commerce Application</h2>
        <div class="button-container">
            <a href="login.jsp" class="button">Login</a>
            <a href="signup.jsp" class="button">Signup</a>
        </div>
    </div>

</body>
</html>
