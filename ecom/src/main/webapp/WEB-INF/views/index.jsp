
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
 
 <div class="container">
    	

    	<br>
    	<br>
    </div>

   

   

<div class="container">


    <br>
    <br>
		   
            	

            	<div class="row">
                <div class="col-xs-10 col-sm-6 col-md-6 ">
                	<h3><strong>Guitars</strong></h3>
                	<br>
                    <div id="carousel-example-generic" class="carousel  slide car1">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                              <a href="guitars">  <img class="img-responsive img-full" src="<c:url value="/resources/img/Carousel/1/1.jpg" />" alt="">
                            	</a>
                            </div>
                            <div class="item">
                                <a href="guitars"><img class="img-responsive img-full" src="<c:url value="/resources/img/Carousel/1/2.jpg" />" alt="">
                            </a></div>
                            <div class="item">
                              <a href="guitars">  <img class="img-responsive img-full" src="<c:url value="/resources/img/Carousel/1/3.jpg" />" alt="">
								</a>                            
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                <br>
                <br>    
                </div>

                <div class="col-xs-10 col-sm-6 col-md-6">
                	<h3><strong> Pedals</strong></h3>
                	<br>
                <div id="carousel-example-generic-1" class="carousel slide car2">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic-1" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic-1" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic-1" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                               <a href="pedals"> <img class="img-responsive img-full" src="<c:url value="/resources/img/Carousel/2/1.jpg" />" alt="">
                            </a></div>
                            <div class="item">
                                <a href="pedals"><img class="img-responsive img-full" src="<c:url value="/resources/img/Carousel/2/2.jpg" />" alt="">
                            </a></div>
                            <div class="item">
                                <a href="pedals"><img class="img-responsive img-full" src="<c:url value="/resources/img/Carousel/2/3.jpg" />" alt="">
                            </a></div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic-1" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic-1" data-slide="next">
                            <span class="icon-next"></span>
                        </a>
                    </div>
                	
				    
				</div>
				</div>
				<br>

    </div>

     <div class="container" >
    <br>
    <br>
    <br>

    <div class="row">
    <div class="col-md-1 col-xs-5"></div>
    <div class="col-xs-12 col-md-3 " ><h3><strong>Featured Brands</strong></h3></div>
    <br>
    <br>
    <br>
    <br>
    </div>
    
      <div class="row" >
     
           
           <div class="col-md-1 col-sm-1 col-xs-3"></div>
          <div class="col-md-3 col-sm-2 col-xs-8">
            <a href="featured?productbrand=Fender"><img id="zoomimg" src="<c:url value="/resources/img/featured/fender.png" />" alt="fender" class="img-circle img-fluid "/></a>
         
          </div>
          <div class="col-md-1 col-sm-1 col-xs-3"></div>
          
          <div class="col-md-3 col-sm-2 col-xs-8">
           <a href="featured?productbrand=Gibson"><img id="zoomimg" src="<c:url value="/resources/img/featured/gibson.jpg" />" alt="epiphone" class="img-circle img-fluid"/></a>
          
          </div>
          
         <div class="col-md-1 col-sm-1 col-xs-3"></div>
          <div class="col-md-3 col-sm-2 col-xs-8">
            <a href="featured?productbrand=Marshall"><img id="zoomimg" src="<c:url value="/resources/img/featured/marshall.jpg" />" alt="marshall" class="img-circle img-fluid"/></a>
          
          </div>
          
      
</div>

    </div>
   
    
   
    
    
    
    

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
  	

   

    <!-- Script to Activate the Carousel -->
    <script>
    $('.car1').carousel({
        interval: 4500 //changes the speed
    })
    
     $('.car2').carousel({
        interval: 5000 //changes the speed
    })
    </script>
  
  </body>
</html>