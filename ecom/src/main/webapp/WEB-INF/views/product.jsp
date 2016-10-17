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
  	<br>
  	<br>
  	
  	</div>
  	
  	<div class="container">
  	
  	<div class="row">
  	
  		<div class="col-md-6 col-xs-10">
  	
  			<img class="img-responsive" src="<c:url value="/resources/img/uploads/${imgname}"/>" alt="" width=800px height=300px style=" margin-left:-20px;">
    	</div>
   	 	
   	 	<div class="col-xs-4"></div>
  	
  		<div class="col-md-5 col-xs-12">
  			<div class="row">
  				<h3 class="text-muted" ><em><c:out value="${prodbrand}"></c:out></em></h3>
  			</div>
  			<div class="row">
  				<h3 class=" text-uppercase" ><strong><c:out value="${prodname}"></c:out></strong></h3>
  			</div>
  			<div class="row">
  				<p class="text-muted" style="text-align: justify;"><em><c:out value="${proddescription}"></c:out></em></p>
  			</div>
  			<div class="row">
  			<c:if test="${availability=='yes'}"><h4 class="text-muted" ><em>Status: Available</em> <c:out value="${prodqty}"></c:out> Pieces Left </h4></c:if>
  			<c:if test="${availability=='no'}"><h4 class="text-muted" ><em>Status: Out Of Stock</em></h4></c:if>
  			</div>
  			<div class="row">
  				<div class=" lead " ><strong>Rs. <c:out value="${prodprice}"></c:out>/-</strong></div>
  			</div>
  			<div class="row">
  			<c:if test="${availability=='yes'}"><a href="additemtocart?productid=${prodid}" class="btn btn-primary btn-lg outline">Add to Cart <span class="glyphicon glyphicon-shopping-cart"></span></a>
  			</c:if>
  			</div>
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
  
   <c:if test="${not empty related1 }">
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
   		 
   		 
          <div class="col-md-4 col-sm-4">
            <a href="product?productid=${related1.product_id}">
            <img src="<c:url value="/resources/img/uploads/${related1.imgname}"/>" alt="fender" width=200px height=200px class="img-circle"/>
            </a>
            <h2><c:out value="${related1.brand}"></c:out> <c:out value="${related1.name}"></c:out></h2>
           
            
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12">
           <a href="product?productid=${related2.product_id}">
           <img src="<c:url value="/resources/img/uploads/${related2.imgname}"/>" alt="epiphone"  width=200px height=200px class="img-circle"/>
           </a>
           <h2><c:out value="${related2.brand}"></c:out> <c:out value="${related2.name}"></c:out></h2>
           
           
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12">
            <a href="product?productid=${related3.product_id}">
            <img src="<c:url value="/resources/img/uploads/${related3.imgname}"/>" alt="marshall"   width=200px height=200px class="img-circle"/>
 			</a>           
            <h2><c:out value="${related3.brand}"></c:out> <c:out value="${related3.name}"></c:out></h2>
            
           
          </div>
      </div>
    
                        
                    
 </div>                       
                    
                </c:if> 

                

  
 
  
  
  
  
  
  
  
  
  
  
  
  
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