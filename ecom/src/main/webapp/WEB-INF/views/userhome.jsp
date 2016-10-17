
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
    <link href="<c:url value="/resources/css/user.css" />" rel="stylesheet">
    
  

  </head>
  <body>
    <!-- Navigation -->
<%@ include file="header1.jsp" %>
<br>
<br>

<div class="container">
	<div class="row">
		<div class="col-md-offset-2 col-md-8 col-lg-offset-3 col-lg-6">
    	 <div class="well profile">
            <div class="col-sm-12">
                <div class="col-xs-12 col-sm-8">
                    <h2><c:out value="${activeuser.fullname}"></c:out></h2>
                    <p><strong>Email: </strong> <c:out value="${activeuser.email}"></c:out></p>
                    <p><strong>Phone: </strong><c:out value="${activeuser.mobile}"></c:out></p>
                    <p><strong>City: </strong><c:out value="${activeuser.city}"></c:out></p>
                </div>             
             
            </div>            
            <div class="col-xs-12 divider text-center">
                <div class="col-xs-12 col-sm-4 emphasis">
                    <h2><strong> 0 </strong></h2>                    
                    <p><small>Orders</small></p>
                    <button class="btn btn-success btn-block"><span class="fa fa-plus-circle"></span>View All</button>
                </div>
                <div class="col-xs-12 col-sm-4 emphasis">
                    <h2><strong>Active</strong></h2>                    
                    <p><small>Status</small></p>
                    <button class="btn btn-info btn-block"><span class="fa fa-user"></span> Deactivate</button>
                </div>
                <div class="col-xs-12 col-sm-4 emphasis">
                    <h2><strong>0</strong></h2>                    
                    <p><small>Wish List</small></p>
                 <button class="btn btn-info btn-block">View List</button>
                </div>
            </div>
    	 </div>                 
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
  	

   

   
 
  
  </body>
</html>