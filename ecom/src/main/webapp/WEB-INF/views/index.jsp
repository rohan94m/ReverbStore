
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
      .carousel-inner > .item > img,
      .carousel-inner > .item > a > img {
      
      width:45%;
      margin: auto;
      }
   
    
}
    </style>
  </head>
  <body>
    <!-- Navigation -->
<%@ include file="header1.jsp" %>
  <!--Carousel -->


    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" style="background-color:#008080;" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel"  style="background-color:#008080;" data-slide-to="1"></li>
        <li data-target="#myCarousel" style="background-color:#008080" data-slide-to="2"></li>
        <li data-target="#myCarousel" style="background-color:#008080;"  data-slide-to="3"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
    
        <div class="item active">
    
          <a href="product"><img src="<c:url value="/resources/img/slash.jpg"/>"/></a>
          
      
        </div>

        <div class="item">
          
           <a href="product"><img src="<c:url value="/resources/img/fender-malibu.jpg"/>"/></a>
           <div class="carousel-caption">
        <h3 style="color:dimgrey">Fender Malibu</h3>
        
      </div>
        </div>

        <div class="item">
           <a href="product"><img src="<c:url value="/resources/img/zvex-sonar.jpg"/>"/></a>
           <div class="carousel-caption">
        <h3 style="color:dimgrey">Zvex-Sonar Pedal</h3>
        
      </div>
        </div>

        <div class="item">
        
           <a href="product"><img src="<c:url value="/resources/img/epiphone-lp.jpg"/>"/></a>
           
        </div>
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    

    <!--Carousel-->
    
    
    <!-- Images -->

    <div class="container-fluid" >
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="row"><div class="col-md-2 col-sm-2"></div><div class="col-md-3 col-sm-3"><h4><strong>FEATURED</strong></h4></div>
    
    <br>
    <br>
    
    </div>
    
      <div class="row" >
           <div class="col-md-2 col-sm-2"></div>
          <div class="col-md-3 col-sm-3">
            <img id="zoomimg" src="<c:url value="/resources/img/fender.jpg"/>" alt="fender" class="img-circle"/>
            
            <h2>Fender Guitars</h2>
            <p>Exclusive Limited edition</p>
            <a href="#" class="btn btn-default">Shop Now</a>
          </div>
          <div class="col-md-3 col-sm-3 col-xs-12">
           <img id="zoomimg2" src="<c:url value="/resources/img/epiphone.png"/>" alt="epiphone" class="img-circle"/>
           <h2>Epiphone Guitars</h2>
            <p>15% Discount on latest Epiphone Guitar</p>
            <a href="#" class="btn btn-default">Shop Now</a>
          </div>
          <div class="col-md-3 col-sm-3 col-xs-12">
            <img id="zoomimg3" src="<c:url value="/resources/img/marshall.jpg"/>" alt="marshall" class="img-circle"/>
            <h2>Marshall Amps</h2>
            <p>Acoustic series amps from Marshall</p>
            <a href="#" class="btn btn-default">Shop Now</a>
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
    $('#zoomimg').mouseenter(function() 
    	       {
    	       
    	          $(this).css("cursor","pointer");
    	           $(this).animate({width: "50%", height: "50%"}, 'slow');


    	       });
    	    
    	    $('#zoomimg').mouseleave(function()
    	      {   
    	          $(this).animate({width: "40%"}, 'slow');
    	   });
    
    	    
    	    
    	    $('#zoomimg2').mouseenter(function() 
    	    	       {
    	    	       
    	    	          $(this).css("cursor","pointer");
    	    	           $(this).animate({width: "50%", height: "50%"}, 'slow');


    	    	       });
    	    	    
    	    	    $('#zoomimg2').mouseleave(function()
    	    	      {   
    	    	          $(this).animate({width: "40%"}, 'slow');
    	    	   });
    	    	    
    	    	    
    	    	    $('#zoomimg3').mouseenter(function() 
    	    	    	       {
    	    	    	       
    	    	    	          $(this).css("cursor","pointer");
    	    	    	           $(this).animate({width: "50%", height: "50%"}, 'slow');


    	    	    	       });
    	    	    	    
    	    	    	    $('#zoomimg3').mouseleave(function()
    	    	    	      {   
    	    	    	          $(this).animate({width: "40%"}, 'slow');
    	    	    	   });
    
    </script>
  
  </body>
</html>