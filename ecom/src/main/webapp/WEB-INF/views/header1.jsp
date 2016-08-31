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
      .navbar {
      margin-bottom: 0;
      }
      .navbar-nav {
    margin: 0;
    
}
    </style>
  </head>
  <body>
    <!-- Navigation -->
    
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle " data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" >
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                <a class="navbar-brand " href="welcome" style="color:white"><span class="glyphicon glyphicon-cd"></span> ReverbStore</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse"  id="bs-example-navbar-collapse-1" >
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:white">Shop by Category <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li class="dropdown-header" style="font-size:18px"><strong>Guitars</strong></li>
                          <li><a href="guitars">Acoustic</a></li>
                          <li><a href="guitars">Electric</a></li>
                          <li><a href="guitars">Semi-Acoustic</a></li>
                          <li class="dropdown-header" style="font-size:18px"><strong>Amplifiers/Pedals</strong></li>
                          <li><a href="ampsandpedals">Amps</a></li>
                          <li><a href="ampsandpedals">Effect Pedals</a></li>
                          <li><a href="ampsandpedals">Processors</a></li>
                          <li class="dropdown-header" style="font-size:18px"><strong>Accesories</strong></li>
                          <li><a href="accesories">Capo</a></li>
                          <li><a href="accesories">Picks</a></li><li><a href="#">Amps</a></li>
                          <li><a href="accesories">Cables</a></li><li><a href="#">Amps</a></li>
                          <li><a href="accesories">Guitar Covers</a></li>
                        </ul>

                    </li> 
                    <li>
                        <form class="navbar-form navbar-left" role="search">
                          <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                          
                          <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                          </div>
                        </form>
                    </li>
                    
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="login" style="color:white"><span class="glyphicon glyphicon-log-in"></span> Login</a>
                    </li>
                    <li>
                        <a href="signup" style="color:white"><span class="glyphicon glyphicon-user"></span> Signup</a>
                    </li>
                 </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
    
   




    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    
  </body>
</html>