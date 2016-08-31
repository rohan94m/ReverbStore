
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
    
          <img src="<c:url value="/resources/img/slash.jpg"/>"/>
      
        </div>

        <div class="item">
          
          <img src="<c:url value="/resources/img/fender-malibu.jpg"/>"/>
        </div>

        <div class="item">
          <img src="<c:url value="/resources/img/zvex-sonar.jpg"/>"/>
        </div>

        <div class="item">
          <img src="<c:url value="/resources/img/epiphone-lp.jpg"/>"/>
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
    <br>
    <br>
    <br>

    <!--Carousel-->
    
    <!-- Images -->

    <div class="container">
    
      <div class="row">
          <div class="col-md-4 col-sm-4 col-xs-12">
            <img src="<c:url value="/resources/img/fender.jpg"/>" alt="fender" class="img-circle"/>
            <h2>Fender Guitars</h2>
            <p>Exclusive Limited edition</p>
            <a href="#" class="btn btn-default">Shop Now</a>
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12">
           <img src="<c:url value="/resources/img/epiphone.png"/>" alt="epiphone" class="img-circle"/>
           <h2>Epiphone Guitars</h2>
            <p>15% Discount on latest Epiphone Guitar</p>
            <a href="#" class="btn btn-default">Shop Now</a>
          </div>
          <div class="col-md-4 col-sm-4 col-xs-12">
            <img src="<c:url value="/resources/img/marshall.jpg"/>" alt="marshall" class="img-circle"/>
            <h2>Marshall Amps</h2>
            <p>Acoustic series amps from Marshall</p>
            <a href="#" class="btn btn-default">Shop Now</a>
          </div>
      </div>
    </div>
    <!--Images-->

    <!--Footer-->
    <br>
    <br>
    <br>
    <br>
    <br>
  
    <!--Footer -->
	<%@ include file="footer.jsp" %>




    <!-- jQuery and JS included from header.jsp (necessary for Bootstrap's JavaScript plugins) -->
  	  
  
  </body>
</html>