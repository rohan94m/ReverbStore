<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Online Guitar Store</title>

    <!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->
  
    <script src="<c:url value="/resources/js/angular.min.js" />"></script>
  </head>
  <body>

  <!-- Navigation -->
  <%@ include file="header1.jsp" %>
    <br>
    <br>
    
    <c:if test="${emptycart=='emptycart'}">
    
    <div class="container">
 		<br>
 		<div class=" row jumbotron">
 		
 		<h3>Cart is empty </h3>
 		</div>
 		<br>
 		
 	</div>
    </c:if>
    
    
    <c:if test="${emptycart=='notempty'}">
    
     <div class="container">
 		<br>
 		<div class=" row jumbotron">
 		
 		<h3>Your Cart </h3>
 		</div>
 		<br>
 		
 	</div>
 	
 	
 	<div class="container">
<br>
<br>

<div ng-app ="mainApp" ng-controller="productController">
<div class="table-responsive">
<table class="table table-hover table-striped ">
    <thead>
      <tr>
        
        <th>Product Name</th>
        <th>Brand</th>
        <th>Category</th>
        <th>Unit Price</th>
        <th>Quantity</th>
        <th>Subtotal</th>
        <th>Operations</th>
      </tr>
    </thead>
    <tbody>
   		
   			<tr ng-repeat="p in productlist">
   			
   			<td>{{p.product.name}}</td>
   			<td>{{p.product.brand}}</td>
   			<td>{{p.product.category}}</td>
   			<td>Rs. {{p.product.price}}</td>
   			<td>{{p.quantity}}</td>
   			<td>Rs. {{p.totalPrice}}</td>
   			
   			<td><a href="editproduct?productid={{p.product_id}}" title="edit details"><span class="glyphicon glyphicon-pencil"></span></a>&nbsp
   			<a href="deleteprod?productid={{p.product_id}}" title="delete"><span class="glyphicon glyphicon-trash"></span></a> </td>
   			</tr>





   		</tbody>
   		
   		
</table>
	
</div>
	<h4>Grand total = Rs. ${grandtotal}</h4>
</div>
 </div>
 	
 	
 	
    
    <a href="<spring:url value="/checkout" />" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a>
    
    
    
    
    
    
    
    
    
    
    
    
    
 
 <script>	
 
 var mainApp = angular.module("mainApp", []);
 mainApp.controller("productController", function($scope){
	 
	 var json ='${cartitems}';
	 var products=JSON.parse(json); 
	 $scope.productlist=products;
	 
	 
 });
</script>
    
    
    
    
    
    
    </c:if>
    
    
     <!--Footer-->
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <%@ include file="footer.jsp" %>
    <!--Footer -->














<!-- jQuery and js included from header.jsp (necessary for Bootstrap's JavaScript plugins) -->
    
   
    
  </body>
</html>
    