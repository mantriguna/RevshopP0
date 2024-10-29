<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RevShop</title>
    <!-- Bootstrap CSS
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../CSS/Seller_Main.css"> -->




</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/RevShop_New/JSP/Seller_Main.jsp">Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item dropdown" style="margin: 0 33px 0 35px;">
                    <a class="nav-link dropdown-toggle" href="#" id="newsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        News & Guidelines
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="newsDropdown">
                        <li><a class="dropdown-item" href="#">News</a></li>
                        <li><a class="dropdown-item" href="#">Guideline</a></li>
                    </ul>
                </li>
                <li class="nav-item" style="margin: 0 28px;">
                    <a class="nav-link" href="/RevShop_New/SellerAddProductServlet">Add Products</a>
                </li>
                <li class="nav-item" style="margin: 0 28px;">
                    <a class="nav-link" href="/RevShop_New/SellerShowProducts">My Products</a>
                </li>
                <li class="nav-item dropdown" style="margin: 0 28px;">
                    <a class="nav-link dropdown-toggle" href="#" id="ordersDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Orders</a>
                    <ul class="dropdown-menu" aria-labelledby="ordersDropdown">
                        <li><a class="dropdown-item" href="/RevShop_New/SellerReceivedOrder">Received</a></li>
                        <li><a class="dropdown-item" href="/RevShop_New/JSP/SellerSuccessfulOrders.jsp">Completed Orders</a></li>
                    </ul>
                </li>
                
                <li class="nav-item dropdown" style="margin: 0 28px;">
                    <a class="nav-link dropdown-toggle" href="#" id="helpDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Help
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="helpDropdown">
                        <li><a class="dropdown-item" href="#">Chat Bot</a></li>
                        <li><a class="dropdown-item" href="#">Technical Support</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown" style="margin: 0 15px;">
                    <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="../Images/Profile-icon.png" alt="Profile" class="profile-icon">
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="profileDropdown">
                        <li><a class="dropdown-item" href="/RevShop_New/SellerUpdateDetailsServlet">Update Profile</a></li>
                        <li><a class="dropdown-item" href="/RevShop_New/JSP/Login_page.jsp">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Load Bootstrap JS and Popper.js at the end of the body for better performance -->


</body>
</html>
    