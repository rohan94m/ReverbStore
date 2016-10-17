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
 
 <!-- Section 1 -->
 <div class="container" id="section1" >
<br>
        
		<br>
                <div class="row"  ng-controller="productController">
                
                
                	  <div class="col-sm-4 col-md-4 scrollable" id="myscrollbar"  >
                <p class="lead "><strong><em>Acoustic Guitars</em></strong></p>
                <div class="list-group">
                    <a href="#section1" class="list-group-item" style="background:#DCDCDC">Acoustic</a>
                    <a href="#section2" class="list-group-item">Electric</a>
                    <a href="#section3" class="list-group-item">Bass</a>
                    
                </div>
            	</div>

                    <div class="col-sm-4 col-lg-4 col-md-4" ng-repeat="p in ampslist">
                        <div class="thumbnail">
                            <img width="320px" height="240px" class="img-responsive" src="<c:url value="/resources/img/uploads/{{p.imgname}}"/>" alt="">
                            <div class="caption">
                                <h4 class="pull-right"><strong><em>Rs. {{p.price}} /- </em></strong></h4>
                                <h4><a href="product?productid={{p.product_id}}">{{p.brand}} {{p.name}}</a>
                                </h4>
                               
                            </div>
                            
                        </div>
                    </div>

                   
                </div>

            </div>
            
            <!-- section 1 -->
           
           
            
            
            <!-- Section 2 -->
 <div class="container" id="section2">
 <br>
            <br>
             <br>
            <br>
      
		<br>
               <div class="row"  ng-controller="productController2">
               
                 <div class="col-sm-4 col-md-4 scrollable" id="myscrollbar">
                <p class="lead "><strong><em>Electric Guitars</em></strong></p>
                <div class="list-group">
                    <a href="#section1" class="list-group-item">Acoustic</a>
                    <a href="#section2" class="list-group-item" style="background:#DCDCDC">Electric </a>
                    <a href="#section3" class="list-group-item">Bass</a>
                    
                </div>
            	</div>
        

                    <div class="col-sm-4 col-lg-4 col-md-4" ng-repeat="p in pedalslist">
                        <div class="thumbnail">
                            <img width="320px" height="240px" class="img-responsive" src="<c:url value="/resources/img/uploads/{{p.imgname}}"/>" alt="">
                            <div class="caption">
                                <h4 class="pull-right">Rs. {{p.price}} /-</h4>
                                <h4><a href="product?productid={{p.product_id}}">{{p.name}}</a>
                                </h4>
                               
                            </div>
                            
                        </div>
                    </div>

                   
                </div>
               

            </div>
            
            <!-- section 2 -->
            
            <!-- section 3 -->
            
 		<div class="container" id="section3">
			<br>
            <br>
            <br>
            <br>
        	
				<br>
				<div class="row"  ng-controller="productController3">

					  <div class="col-md-4 col-sm-4 scrollable" id="myscrollbar">
			                <p class="lead"><strong><em>Bass Guitars</em></strong></p>
			                <div class="list-group">
			                    <a href="#section1" class="list-group-item" >Acoustic</a>
			                    <a href="#section2" class="list-group-item">Electric</a>
			                    <a href="#section3" class="list-group-item" style="background:#DCDCDC">Bass</a>
			                    
			                </div>
			            </div>
                    <div class="col-sm-4 col-lg-4 col-md-4" ng-repeat="b in processorslist">
                        <div class="thumbnail">
                             <img width="320px" height="240px" class="img-responsive" src="<c:url value="/resources/img/uploads/{{b.imgname}}"/>" alt="">
                            <div class="caption">
                                <h4 class="pull-right">Rs.{{b.price}} /-</h4>
                                <h4><a href="product?productid={{p.product_id}}">{{b.name}}</a>
                                </h4>
                               
                            </div>
                            
                        </div>
                    </div>

                   
                </div>
                
              
              
            
            </div>
            
            <!-- section 3 -->
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
 mainApp.controller("productController", function($scope){
	 
	 var jsonamps ='${acoustic}';
	 var amps=JSON.parse(jsonamps); 
	 $scope.ampslist=amps;

	 
	
	 
 });
 
 
 
 mainApp.controller("productController2", function($scope){
	 
	

	 
	 var jsonpedals ='${electric}';
	 var pedals=JSON.parse(jsonpedals); 
	 $scope.pedalslist=pedals;
	 
	 
	
 });
 
 

 mainApp.controller("productController3", function($scope){
	 

	 
	 var jsonprocessors ='${bass}';
	 var processors=JSON.parse(jsonprocessors); 
	 $scope.processorslist=processors;
	 
 });


 
	
		
</script>
    <script>
    
   
$(document).ready(function(){
  // Add scrollspy to <body>
  $('body').scrollspy({target: ".scroll", offset: 50});

  // Add smooth scrolling on all links inside the navbar
  $("#myscrollbar a").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    }  // End if
  });
});
</script>
    
    
  </body>
</html>