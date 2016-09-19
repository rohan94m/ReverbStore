
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
   <style>
   
   #zoomimg{
  width:150px;
  height:150px;
  background:#48e;
  transition: 0.5s;
}

#zoomimg:hover{
  background:#59f;
  -webkit-transform: scale(1.1);
          transform: scale(1.1);
}
   
   </style>
  </head>
  <body>
    <!-- Navigation -->
<%@ include file="header1.jsp" %>
 
 


    <!-- /.carousel -->

	<div class="container">
		<div id="carousel-example" class="carousel slide" data-ride="carousel">
	  	<ol class="carousel-indicators">
	    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
	    <li data-target="#carousel-example" data-slide-to="1"></li>
	    <li data-target="#carousel-example" data-slide-to="2"></li>
	  </ol>
	
	  <div class="carousel-inner">
	    <div class="item active">
	      <a href="#"><img src="<c:url value="/resources/img/Carousel/cover1.jpg"/>" /></a>
	      <div class="carousel-caption">
	       
	      </div>
	    </div>
	    <div class="item">
	      <a href="#"><img src="<c:url value="/resources/img/Carousel/cover2.jpg"/>" /></a>
	      <div class="carousel-caption">
	        
	      </div>
	    </div>
	    <div class="item">
	      <a href="#"><img src="<c:url value="/resources/img/Carousel/active.jpg"/>" /></a>
	      <div class="carousel-caption">
	        
	      </div>
	    </div>
	  </div>
	
	  <a class="left carousel-control" href="#carousel-example" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left"></span>
	  </a>
	  <a class="right carousel-control" href="#carousel-example" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right"></span>
	  </a>
	</div>
    
    </div>
    
    <!-- Images -->

    <div class="container-fluid" >
    <br>
    <br>
    <br>

    <div class="row"><div class="col-sm-2 col-xs-5"></div><div class="col-xs-12 col-md-3 " ><h5 style="color:black"><em><strong>Featured Brands</strong></em></h5></div>
    
    <br>
    <br>
    <br>
    </div>
    
      <div class="row" >
           
           <div class="col-xs-12 col-md-2"></div>
          <div class="col-xs-12 col-md-3">
            <a href="#"><img id="zoomimg" src="<c:url value="/resources/img/featured/gibson.jpg"/>" alt="fender" class="img-circle img-fluid "/></a>
         
          </div>
          
          <div class="col-xs-12 col-md-3">
           <a href="#"><img id="zoomimg" src="<c:url value="/resources/img/featured/fender.png"/>" alt="epiphone" class="img-circle img-fluid"/></a>
          
          </div>
          
          
          <div class="col-xs-12 col-md-3">
            <a href="#"><img id="zoomimg" src="<c:url value="/resources/img/featured/marshall.jpg"/>" alt="marshall" class="img-circle img-fluid"/></a>
          
          </div>
      </div>
    </div>
   
    <!--Images-->
    
    <!-- Latest Products -->
    
    
    
    
    
    

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
  	  <script>
   		
    		
  	  
  	  
  	  
    	    	    	 // Activate Carousel
    	    	    	    $("#myCarousel").carousel();

    	    	    	    // Enable Carousel Indicators
    	    	    	    $(".item").click(function(){
    	    	    	        $("#myCarousel").carousel(1);
    	    	    	    });

    	    	    	    // Enable Carousel Controls
    	    	    	    $(".left").click(function(){
    	    	    	        $("#myCarousel").carousel("prev");
    	    	    	    });
    </script>
  
  </body>
</html>