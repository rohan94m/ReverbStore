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

    <!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">    


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
   <script src="<c:url value="/resources/js/angular.min.js" />"></script>
  </head>
 <body ng-app ="mainApp">
    <!-- Navigation -->
<%@ include file="header1.jsp" %>
 
 <!-- Section 1 -->
 <div class="container" id="section1" >
<br>
        <div class="row" >

            <div class="col-md-3 scrollable" id="myscrollbar"  >
                <p class="lead text-uppercase"><strong>Amplifiers</strong></p>
                <div class="list-group">
                    <a href="#section1" class="list-group-item" style="background:#DCDCDC">Amplifiers</a>
                    <a href="#section2" class="list-group-item">Processors</a>
                    <a href="#section3" class="list-group-item">Pedals</a>
                    
                </div>
            </div>
        
       
		
            <div class="col-md-9">

                <div class="row jumbotron acoustic">

                     <img class="img-responsive" src="<c:url value="/resources/img/amps/ampcover.jpg"/>" alt="">
              
              </div>
              
		</div>
		</div>
		<br>
                <div class="row"  ng-controller="productController">

                    <div class="col-sm-4 col-lg-4 col-md-4" ng-repeat="p in ampslist">
                        <div class="thumbnail">
                            <img width="320px" height="240px" class="img-responsive" src="<c:url value="/resources/img/uploads/{{p.imgname}}"/>" alt="">
                            <div class="caption">
                                <h4 class="pull-right">{{p.price}}</h4>
                                <h4><a href="product?productid={{p.product_id}}">{{p.name}}</a>
                                </h4>
                                <p>{{p.description}}</p>
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
        <div class="row">

            <div class="col-md-3 scrollable" id="myscrollbar">
                <p class="lead text-uppercase"><strong>Pedals</strong></p>
                <div class="list-group">
                    <a href="#section1" class="list-group-item">Amps</a>
                    <a href="#section2" class="list-group-item" style="background:#DCDCDC">Pedals </a>
                    <a href="#section3" class="list-group-item">Proccessor</a>
                    
                </div>
            </div>
        
       
		
            <div class="col-md-9">

                <div class="row jumbotron">

                     <img class="img-responsive" src="<c:url value="/resources/img/amps/pedalcover.jpg"/>" alt="">
                          
                </div>
              </div>
              
		</div>
		<br>
               <div class="row"  ng-controller="productController2">

                    <div class="col-sm-4 col-lg-4 col-md-4" ng-repeat="p in pedalslist">
                        <div class="thumbnail">
                            <img width="320px" height="240px" class="img-responsive" src="<c:url value="/resources/img/uploads/{{p.imgname}}"/>" alt="">
                            <div class="caption">
                                <h4 class="pull-right">{{p.price}}</h4>
                                <h4><a href="product?productid={{p.product_id}}">{{p.name}}</a>
                                </h4>
                                <p>{{p.description}}</p>
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
        	
        	<div class="row">

	            <div class="col-md-3 scrollable" id="myscrollbar">
	                <p class="lead"><strong>Processors</strong></p>
	                <div class="list-group">
	                    <a href="#section1" class="list-group-item" >Amps</a>
	                    <a href="#section2" class="list-group-item">Pedals</a>
	                    <a href="#section3" class="list-group-item" style="background:#DCDCDC">Processors</a>
	                    
	                </div>
	            </div>
	        
       
		
	            <div class="col-md-9">
	
	                <div class="row jumbotron">
	
	                     <img class="img-responsive" src="<c:url value="/resources/img/amps/processorcover.jpg"/>" alt="">
	                          
	                </div>
	              </div>
	              
				</div>
				<br>
				<div class="row"  ng-controller="productController3">

                    <div class="col-sm-4 col-lg-4 col-md-4" ng-repeat="b in processorslist">
                        <div class="thumbnail">
                             <img width="320px" height="240px" class="img-responsive" src="<c:url value="/resources/img/uploads/{{b.imgname}}"/>" alt="">
                            <div class="caption">
                                <h4 class="pull-right">{{b.price}}</h4>
                                <h4><a href="product?productid={{p.product_id}}">{{b.name}}</a>
                                </h4>
                                <p>{{b.description}}</p>
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
	 
	 var jsonamps ='${amps}';
	 var amps=JSON.parse(jsonamps); 
	 $scope.ampslist=amps;

	 
	
	 
 });
 
 
 
 mainApp.controller("productController2", function($scope){
	 
	

	 
	 var jsonpedals ='${pedals}';
	 var pedals=JSON.parse(jsonpedals); 
	 $scope.pedalslist=pedals;
	 
	 
	
 });
 
 

 mainApp.controller("productController3", function($scope){
	 

	 
	 var jsonprocessors ='${processors}';
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