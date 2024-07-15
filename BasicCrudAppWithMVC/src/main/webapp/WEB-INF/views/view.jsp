<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>View Product</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">View Product</h2>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Product Details</h5>
            <p class="card-text"><strong>ID:</strong> ${product.id}</p>
            <p class="card-text"><strong>Name:</strong> ${product.name}</p>
            <p class="card-text"><strong>Description:</strong> ${product.description}</p>
            <p class="card-text"><strong>Price:</strong> ${product.price}</p>
        </div>
    </div>
    <a href="${pageContext.request.contextPath}/products" class="btn btn-primary mt-3">Back to List</a>
</div>
<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
