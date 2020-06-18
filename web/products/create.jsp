<%--
  Created by IntelliJ IDEA.
  User: hurah
  Date: 6/18/2020
  Time: 4:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create new product</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <h1>Create new product</h1>
    <div>
        <p>
            <c:if test='${requestScope["message"] != null}'>
                <span class="message">${requestScope["message"]}</span>
            </c:if>
        </p>
        <p>
            <a href="productsManager">Back to products list</a>
        </p>
    </div>

    <form method="post">
        <fieldset>
            <legend>Product information</legend>
            <table class="table table-light table-striped table-bordered table-hover">
                <tr>
                    <th scope="row">Name: </th>
                    <td><input class="form-control" type="text" name="name" id="name"></td>
                </tr>
                <tr>
                    <th scope="row">Color: </th>
                    <td><input class="form-control" type="text" name="color" id="color"></td>
                </tr>
                <tr>
                    <th scope="row">Price: </th>
                    <td><input class="form-control" type="text" name="price" id="price"></td>
                </tr>
                <tr>
                    <th scope="row">Quantity: </th>
                    <td><input class="form-control" type="text" name="quantity" id="quantity"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input class="btn btn-primary" type="submit" value="Create product"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>
