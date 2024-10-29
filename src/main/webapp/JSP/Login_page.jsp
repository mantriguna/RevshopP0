<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../CSS/Login_page.css">
    <style>
    body{
    background-image: url('/RevShop_New/Images/MainRevature.png'); /* Path to the background image */
        /* Full screen: 100% of the viewport width and height */
    background-repeat: no-repeat;
    background-position: center;
    background-attachment: fixed; /* Keeps the image fixed during scrolling */

            }
        /* Style for the user type selection buttons */
        .container {
    margin: 180px 10px 10px 10px;
}
        .user-type-buttons {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .user-type-buttons .btn {
            margin: 0 10px;
            width: 150px;
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .user-type-buttons .btn:hover {
            background-color: #0056b3;
        }
        .user-type-buttons .btn.active {
            background-color: #004494;
        }

        /* Style for forms and other elements */
        #customerForm, #sellerForm {
            display: none;
            margin-top: 20px;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }
        button {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            width: 100%;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
        .loginLink {
            margin-top: 20px;
            text-align: center;
        }
        .loginLink a {
            color: #007bff;
            text-decoration: none;
        }
        .loginLink a:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function showLoginForm(userType) {
            // Hide both forms initially
            document.getElementById("customerForm").style.display = "none";
            document.getElementById("sellerForm").style.display = "none";

            // Show the correct form based on the button clicked
            if (userType === 'customer') {
                document.getElementById("customerForm").style.display = "block";
            } else {
                document.getElementById("sellerForm").style.display = "block";
            }

            // Add 'active' class to the selected button
            var buttons = document.querySelectorAll('.user-type-buttons .btn');
            buttons.forEach(function(btn) {
                if (btn.textContent.toLowerCase() === userType) {
                    btn.classList.add('active');
                } else {
                    btn.classList.remove('active');
                }
            });
        }
    </script>
</head>
<body>
    <div class="container mt-5" >
        <h2 class="text-center mb-4">Login to RevShop</h2>

        <div class="user-type-buttons">
            <button class="btn" onclick="showLoginForm('customer')">Customer</button>
            <button class="btn" onclick="showLoginForm('seller')">Seller</button>
        </div>

        <!-- Customer Login Form -->
        <div id="customerForm">
            <h3>Customer Login</h3>
            <form action="/RevShop_New/CustomerLoginServlet" method="post" class="form-group">
                <label for="custEmail">Email:</label>
                <input type="email" id="custEmail" name="custEmail" class="form-control" required>
                
                <label for="custPassword">Password:</label>
                <input type="password" id="custPassword" name="custPassword" class="form-control" required>
                
                <button type="submit" class="btn btn-success btn-block">Login</button>
            </form>
        </div>

        <!-- Seller Login Form -->
        <div id="sellerForm">
            <h3>Seller Login</h3>
            <form action="/RevShop_New/SellerLoginServlet" method="post" class="form-group">
                <label for="sellEmail">Email:</label>
                <input type="email" id="sellEmail" name="sellEmail" class="form-control" required>
                
                <label for="sellPassword">Password:</label>
                <input type="password" id="sellPassword" name="sellPassword" class="form-control" required>
                
                <button type="submit" class="btn btn-success btn-block">Login</button>
            </form>
        </div>

        <div class="loginLink">
            <p>New here? <a href="/RevShop_New/JSP/Registeration_Page.jsp">Register</a></p>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
