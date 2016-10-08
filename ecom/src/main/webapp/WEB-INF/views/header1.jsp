<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<link href="<c:url value="/resources/css/reverb.css" />" rel="stylesheet">
 <style>
   .bgimg{
    
    background: url('<c:url value="/resources/img/header/bg.jpg" />') no-repeat center center fixed ;
    background-size: cover;
    
}
 
   
   </style>

<div class="bgimg">

<c:if test="${empty personObj}">
	<div class="container-fluid">
 
  
  
  <ul class="nav nav-pills">
    
    <c:if test="${empty cartObj }">
    <li><a href="viewcart"><h6><strong><span class="glyphicon glyphicon-shopping-cart"></span>Cart(0)</strong></h6></a></li>
    </c:if>
    
    <c:if test="${not empty cartObj }">
    <li><a href="viewcart"><h6><strong><span class="glyphicon glyphicon-shopping-cart"></span>Cart(<c:out value="${cartObj.cartCount}"></c:out>)</strong></h6></a></li>
    </c:if>
    
    <li style="float:right" ><a  href="signup"><h6><strong><span class="glyphicon glyphicon-user"></span> Register &nbsp;</strong></h6></a></li>
    <li style="float:right"><a href="login"><h6><strong><span class="glyphicon glyphicon-log-in"></span> Login &nbsp;</strong></h6></a></li>
    
    
  </ul>
</div>
</c:if>


<c:if test="${not empty personObj}">
	<div class="container-fluid">
 
  
  
  	<ul class="nav nav-pills">
    
    <c:if test="${empty cartObj }">
    <li><a href="viewcart"><h5><strong><span class="glyphicon glyphicon-shopping-cart"></span>Cart(0)</strong></h5></a></li>
    </c:if>
    
    <c:if test="${not empty cartObj }">
    <li><a href="viewcart"><h5><strong><span class="glyphicon glyphicon-shopping-cart"></span>Cart(<c:out value="${cartObj.cartCount}"></c:out>)</strong></h5></a></li>
    </c:if>
    <li style="float:right" ><a  href="#"><h5><strong><span class="glyphicon glyphicon-user"></span> ${personObj} &nbsp;</strong></h5></a></li>
    <li style="float:right"><a href="<c:url value="j_spring_security_logout" />" ><h5><strong><span class="glyphicon glyphicon-log-out"></span> Logout &nbsp;</strong></h5></a></li>
    
    
  </ul>
</div>
</c:if>



    <div><a href="welcome" class="brand">Reverb Store</a></div>
    <div class="address-bar">Online Guitar Store</div>

    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand" href="welcome">Reverb Store</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                 <ul class="nav  navbar-nav">
          <li class="dropdown">
              <a href="#" class="dropdown-toggle"  data-toggle="dropdown" >Guitars<b class="caret"></b></a>
              <ul class="dropdown-menu">
            <li><a  href="guitars#section1" ><em>Acoustic</em></a></li>
              <li><a href="guitars#section1"><em>Electric</em></a></li>
              <li><a href="guitars#section1" ><em>Bass</em></a></li>
              </ul>
            </li>
          <li><a  href="ampsandpedals#section1" >Amplifiers</a></li>
          <li><a href="ampsandpedals#section2" >Pedals</a></li>
          <li><a href="accesories" >Accessories</a></li>
          
          
        </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
       
        <!-- /.container -->
    </nav>




    <!-- Carousel -->

    <div class="container">
    	

    	<br>
    	<br>
    </div>

    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    
    
    
    
