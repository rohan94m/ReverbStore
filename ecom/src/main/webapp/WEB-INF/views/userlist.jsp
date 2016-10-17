 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Online Guitar Store</title>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->
   
    
    </head>
  <body>
     <!-- Navigation -->
	<%@ include file="header1.jsp" %>
 	<div class="container">
 		<br>
 		<div class=" row jumbotron">
 		
 		<h3>Customer List</h3>
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
        <th>Name</th>
        <th>Email ID</th>
        <th>PHONE</th>
        <th>CITY</th>
        
      </tr>
    </thead>
    <tbody>
   			<tr ng-repeat="p in productlist">
   			<td>{{p.fullname}}</td>
   			<td>{{p.email}}</td>
   			<td>{{p.mobile}}</td>
   			<td>{{p.city}}</td>
   			
   			</tr>





   		</tbody>
</table>
</div>
</div>
 </div>
 
 <script>	
 
 var mainApp = angular.module("mainApp", []);
 mainApp.controller("productController", function($scope){
	 
	 var json ='${customers}';
	 var products=JSON.parse(json); 
	 $scope.productlist=products;
	 
	 
 });
 
	
		
</script>




 <!--Footer-->
    <div class="container">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
  </div>
    <!--Footer -->
	<%@ include file="footer.jsp" %>




    <!-- jQuery and JS included from header.jsp (necessary for Bootstrap's JavaScript plugins) -->
  	

   

  
  
  </body>
</html>    
 	   
 	
 	
   
