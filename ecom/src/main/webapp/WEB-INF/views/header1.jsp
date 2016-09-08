<style>
      .navbar {
      margin-bottom: 0;
      }
      .navbar-nav {
    margin: 0;
    
    
}
body {
    background-color:#F5F5F5;
}
    </style>
  
  
    <!-- Navigation -->
    
    <nav class="navbar navbar-inverse navbar-fixed-top" style="background-color:black;" role="navigation">
        <div class="container">
        <div class="row">
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:white; ">Shop by Category <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li class="dropdown-header" style="font-size:18px"><strong>Guitars</strong></li>
                          <li><a href="guitars#section1">Acoustic</a></li>
                          <li><a href="guitars#section2">Electric</a></li>
                          <li><a href="guitars#section3">Bass</a></li>
                          <li class="dropdown-header" style="font-size:18px"><strong>Amplifiers/Pedals</strong></li>
                          <li><a href="ampsandpedals#section1">Amps</a></li>
                          <li><a href="ampsandpedals#section2">Effect Pedals</a></li>
                          <li><a href="ampsandpedals#section3">Processors</a></li>
                          <li class="dropdown-header" style="font-size:18px"><strong>Accesories</strong></li>
                          <li><a href="accesories#section1">Capo</a></li>
                          <li><a href="accesories#section2">Picks</a></li>
                          <li><a href="accesories#section3">Cables</a></li>
                          <li><a href="accesories#section4">Guitar Covers</a></li>
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
        
        </div>
        
    </nav>
    <div class="container">
    <br>
        <br>
        
    </div>
    
    
   




    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    
