<%--
  Created by IntelliJ IDEA.
  User: hurah
  Date: 6/18/2020
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
<form method="post">
    <div class="container">
        <h1>Delete this product, are you sure? </h1>
        <table class="table table-light table-striped table-bordered table-hover">
            <tr>
                <th scope="row">Serial: </th>
                <td>${requestScope.product.series}</td>
            </tr>
            <tr>
                <th scope="row">Name: </th>
                <td>${requestScope.product.name}</td>
            </tr>
            <tr>
                <th scope="row">Color: </th>
                <td>${requestScope.product.color}</td>
            </tr>
            <tr>
                <th scope="row">Price: </th>
                <td>${requestScope.product.price}</td>
            </tr>
            <tr>
                <th scope="row">Quantity: </th>
                <td>${requestScope.product.quantity}</td>
            </tr>
            <tr>
                <td><input class="btn btn-primary" type="submit" value="Delete product"></td>
            </tr>
        </table>
        <p>
            <a href="productsManager">Back to products list</a>
        </p>
    </div>
</form>

</body>
</html>
