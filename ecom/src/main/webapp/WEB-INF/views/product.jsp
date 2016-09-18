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
    
    .btn.outline {
    background: none;
    padding: 12px 22px;
}
.btn-primary.outline {
    border: 2px solid black;
    color: dimgrey;
}
.btn-primary.outline:hover, .btn-primary.outline:focus, .btn-primary.outline:active, .btn-primary.outline.active, .open > .dropdown-toggle.btn-primary {
    color: dimgrey;
    border-color: black;
}
.btn-primary.outline:active, .btn-primary.outline.active {
    border-color: black;
    color: dimgrey;
    box-shadow: none;
}

hr {
    border: none;
    height: 1px;
    /* Set the hr color */
    color: #333; /* old IE */
    background-color: #333; /* Modern Browsers */
}


    </style>
   
  </head>
  <body>
  <%@ include file="header1.jsp" %>
  <br>
  <br>
  <br>
  <br>
 <div  id="section1" class="container">
  	
  	<div class="row">
  		
  		<div class="col-sm-5 col-md-5"><hr></div>
  		<div align="center" class="col-sm-2 col-md-2">
  <span style="font-size: 20px;">
    <c:out value="${prodbrand} ${prodname}"></c:out>
  </span>
 
</div>
 		<div class="col-sm-5 col-md-5"><hr></div>
  	</div>
  	
  	<div class="row">
  	<div class="col-md-3"></div>
  	<div class="col-md-6">
  	<img class="img-responsive" src="<c:url value="/resources/img/fender-malibu.jpg"/>" alt="" width=800px height=300px>
    </div>
    <div class="col-md-3"></div>
  	</div>
  	<div class="row">
  	<h4 class="text-muted" align="center"><c:out value="${prodbrand}"></c:out></h4>
   </div>
    <div class="row">
  	<h3 class=" text-uppercase" align="center"><strong><c:out value="${prodname}"></c:out></strong></h3>
   </div>
   
   <br>
    <div class="row">
    <div class="col-sm-2 col-md-2"></div>
    <div class="col-sm-8 col-md-8">
  	<p class="text-muted text-uppercase" align="center"><c:out value="${proddescription}"></c:out></p>
   	</div>
   <div class="col-sm-2 col-md-2"></div>
   
   </div>
   <br>
   <div class="row">
                        
    <div class="col-sm-2 col-md-2"> </div>
    <div class="col-sm-8 col-md-8">
  	<div class=" lead " align="center"><strong>$<c:out value="${prodprice}"></c:out></strong></div>
   </div>
   <div class="col-sm-2 col-md-2"></div>
   </div>
   <div class="row">
   
   <div align="center"><button type="button" class="btn btn-primary btn-lg outline">Add to Cart <span class="glyphicon glyphicon-shopping-cart"></span></button>
   </div>
   </div>
   <br>
   <br>
   <br>
   <br>
   <br>
   
   </div>

	<br>
   <br>
  
   
  <div class="container"  id="section3">
   <div class="row">
  		
  		<div class="col-sm-4 col-md-4"><hr></div>
  		<div  align="center" class="col-sm-4 col-md-4">
  <span style="font-size: 20px;">
    You may also be interested in
  </span>
 
</div>
 		<div class="col-sm-4 col-md-4"><hr></div>
  	</div>
   <br>
    <div class="row">
   		 <div class="col-md-2 col-sm-2"></div>
          <div class="col-md-3 col-sm-3">
            <img src="<c:url value="/resources/img/fender.jpg"/>" alt="fender" class="img-circle"/>
            <h2>Fender Guitars</h2>
            <p>Exclusive Limited edition</p>
            <a href="#" class="btn btn-default">Shop Now</a>
          </div>
          <div class="col-md-3 col-sm-3 col-xs-12">
           <img src="<c:url value="/resources/img/epiphone.png"/>" alt="epiphone" class="img-circle"/>
           <h2>Epiphone Guitars</h2>
            <p>15% Discount on latest Epiphone Guitar</p>
            <a href="#" class="btn btn-default">Shop Now</a>
          </div>
          <div class="col-md-3 col-sm-3 col-xs-12">
            <img src="<c:url value="/resources/img/marshall.jpg"/>" alt="marshall" class="img-circle"/>
            <h2>Marshall Amps</h2>
            <p>Acoustic series amps from Marshall</p>
            <a href="#" class="btn btn-default">Shop Now</a>
          </div>
      </div>
                        
                    
 </div>                       
                    
               

                

  
 
  
  
  
  
  
  
  
  
  
  
  
  
   <!--Footer-->
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