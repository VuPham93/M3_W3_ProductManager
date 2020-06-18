<%--
  Created by IntelliJ IDEA.
  User: hurah
  Date: 6/18/2020
  Time: 10:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product manager</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
    <h1>Products List</h1>
    <form method="post" action="productsManager?action=find">
        <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="product name" aria-label="product name" aria-describedby="button-addon2" name="findingName">
            <div class="input-group-append">
                <input class="btn btn-outline-secondary" type="submit" value="Find product">
            </div>
        </div>
    </form>

    <div>
        <a type="button" class="btn btn-secondary" href="productsManager?action=create">
            Create new
        </a>
    </div>

    <p></p>

    <div>
        <table class="table table-light table-striped table-bordered table-hover">
            <thead class="thead-dark" >
            <tr>
                <th scope="col">Serial</th>
                <th scope="col">Name</th>
                <th scope="col">Color</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Edit</th>
                <th scope="col">Delete</th>
            </tr>
            </thead>
            <c:forEach items='${requestScope["productList"]}' var="product">
                <tr>
                    <th scope="row"><a href="productsManager?action=view&id=${product.getSeries()}">${product.getSeries()}</a></th>
                    <td><a href="productsManager?action=view&id=${product.getSeries()}">${product.getName()}</a></td>
                    <td>${product.getColor()}</td>
                    <td>${product.getPrice()}</td>
                    <td>${product.getQuantity()}</td>
                    <td><a href="productsManager?action=edit&id=${product.getSeries()}"> edit </a></td>
                    <td><a href="productsManager?action=delete&id=${product.getSeries()}"> delete </a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>


</body>
</html>
