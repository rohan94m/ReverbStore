<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
   <style>
    body {
      position: relative;
  }
   </style>
 
  </head>
 <body ng-app ="mainApp">
    <!-- Navigation -->
<%@ include file="header1.jsp" %>
 

           
           
            
            
            <!-- Pedals -->
 	<div class="container" id="section2">
 			<br>
            <br>
             <br>
            <br>
     		<br>
           <div class="row"  ng-controller="productController2">
               
               

                    <div class="col-sm-4 col-lg-4 col-md-4" ng-repeat="p in pedalslist">
                        <div class="thumbnail">
                            <img width="320px" height="240px" class="img-responsive" src="<c:url value="/resources/img/uploads/{{p.imgname}}"/>" alt="">
                            <div class="caption">
                                <h4 class="pull-right">{{p.price}}</h4>
                                <h4><a href="product?productid={{p.product_id}}">{{p.name}}</a>
                                </h4>
                                
                            </div>
                            
                        </div>
                    </div>

                   
               </div>
               

           </div> 
            
            <!-- Pedals-->
            
 
            
          
            <br>
            <br>
            <br>
            <br>
           


    <!--Footer-->
    <br>
    <br>
    <br>
    <br>
    <br>
  <%@ include file="footer.jsp" %>
    <!--Footer -->





    <!-- jQuery and js included from header.jsp (necessary for Bootstrap's JavaScript plugins) -->
    
     <script>	
 

 
     var mainApp = angular.module("mainApp", []);
 
 mainApp.controller("productController2", function($scope){
	 
	 var jsonpedals ='${featured}';
	 var pedals=JSON.parse(jsonpedals); 
	 $scope.pedalslist=pedals;
	 
	 
	
 });
 
 




 
	
		
</script>

    
    
  </body>
</html>