<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored="false"%>
<style>
   .navbar-inner{

  padding-top: 4px;
  padding-bottom: 4px;
}

.navbar .navbar-nav {
    display: inline-block;
    float: none;

}
  

.navbar .navbar-collapse {
    text-align: center;
}

.dropdown-menu {
  
  text-align: center;
  
}

.tab-content {
    
    border-right: 1px solid #ddd;
    
}

.nav-pills {
    margin-bottom: 0;
}
body {
    background-color:white;
}
    </style>
  
  
    <!-- Navigation -->
    
     <c:if test="${empty personObj}">
     
     	<ul class="nav nav-pills" style="padding-top:4px;background-color:white;">
      		<li class="tab-content" role="presentation"><a href="welcome" style="color:black"><strong>ReverbStore</strong></a></li>
      		<li class="tab-content" role="presentation"><a href="#" style="color:black"><strong><span class="glyphicon glyphicon-shopping-cart"></span></strong></a></li>
     		<li role="presentation" style="float:right;"><a href="signup" style="color:black"><span class="glyphicon glyphicon-user"></span> <strong>Signup</strong></a></li>
      		<li role="presentation" style="float:right"> <a href="login" style="color:black" ><span class="glyphicon glyphicon-log-in"></span><strong>Login</strong></a></li>
 	 	</ul>
   	</c:if>
     
     
     <c:if test="${not empty personObj}">
     	<ul class="nav nav-pills" style="padding-top:4px;background-color:white;">
      	<li class="tab-content" role="presentation"><a href="welcome" style="color:black"><strong>ReverbStore</strong></a></li>
      	<li class="tab-content" role="presentation"><a href="#" style="color:black"><strong><span class="glyphicon glyphicon-shopping-cart"></span></strong></a></li>
     	<li class="tab-content" role="presentation"><a href="#" style="color:black"><strong>Welcome ${personObj}</strong></a></li>
      	<li role="presentation" style="float:right;"><a href="<c:url value="j_spring_security_logout" />" style="color:black"><span class="glyphicon glyphicon-user"></span> <strong>Logout</strong></a></li>
      	<li role="presentation" style="float:right"> <a href="#" style="color:black" ><span class="glyphicon glyphicon-log-in"></span><strong>Account</strong></a></li>
  		</ul>

	</c:if>

    <nav class="navbar navbar-default" style="background-color:white" role="navigation">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-inner">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
         <a class="navbar-brand " href="welcome" style="color:black" ><span class="glyphicon glyphicon-cd"></span></a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
          <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:black; font-size:15px;"><em><strong>Guitars<b class="caret"></b></strong></em></a>
              <ul class="dropdown-menu">
            <li><a  href="guitars#section1" style="color:black; "><em>Acoustic</em></a></li>
              <li><a href="guitars#section1" style="color:black"><em>Electric</em></a></li>
              <li><a href="guitars#section1" style="color:black"><em>Bass</em></a></li>
              </ul>
            </li>
          <li><a href="ampsandpedals#section1" style="color:black;"><em><strong>Amplifiers</strong></em></a></li>
          <li><a href="ampsandpedals#section2" style="color:black; "><em><strong>Pedals</strong></em></a></li>
          <li><a href="ampsandpedals#section3" style="color:black; "><em><strong>Processors</strong></em></a></li>
          <li><a href="accesories" style="color:black; "><em><strong>Accessories</strong></em></a></li>
          <li>
                        <form class="navbar-form navbar-right" role="search">
                          <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                          
                          <button type="submit" class="btn btn-default" style="color:black;"><span class="glyphicon glyphicon-search"></span></button>
                          </div>
                        </form>
                    </li>
          
        </ul>
      </div><!-- /.navbar-collapse -->
      </div>
    </nav>
    
   




    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    
