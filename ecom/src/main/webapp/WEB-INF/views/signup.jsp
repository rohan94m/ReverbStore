<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 
    
  </head>
  <body>
	
	<%@ include file="header1.jsp" %>
   
    <br>
    <br>
    <!--JUMBOTRON-->

    <div class="container">
      <div class="jumbotron">
        <h1>Create an Account</h1> 
        <p>We Currently deliver only to Delhi, Mumbai, Bangalore and Chennai </p> 
      </div>
    </div>



  
    <!--Signup -->
    <div class="container">
    <div class="panel panel-default">
      <div class="panel-heading" style="background-color:#C0C0C0;"><strong>User Registration</strong></div>
      <div class="panel-body">
        <form id="signup" method="POST" class="form-horizontal" action="#">
          <div class="form-group">
            <label class="col-md-2 control-label" for="email">Email-Id</label>
            <div class="col-md-4">
              <input type="text" class="form-control" name="email" id="email" placeholder="johndoe@example.com"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-2 control-label" for="fullname">Full Name</label>
            <div class="col-md-4">
            <input type="text" class="form-control" name="fullname" id="fullname" placeholder="John Doe"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" for="city">City</label>
            <div class="col-md-4">
            <select name="city"  class="form-control" id="city">
              <option value="">Choose any one</option>
              <option value="1">Delhi</option>
              <option value="2">Mumbai</option>
              <option value="3">Bangalore</option>
              <option value="4">Chennai</option>
            </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" for="password">Password</label>
            <div class="col-md-4">
            <input type="password" class="form-control" name="password" id="password" placeholder="Password"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" for="repeatpassword">Repeat Password</label>
            <div class="col-md-4">
            <input type="password" class="form-control" name="repeatpassword" id="repeatpassword" placeholder="Password"/>
            </div>
        </div>
         <div class="form-group">
            <label class="col-md-2 control-label" for="address">Address</label>
            <div class="col-md-4">
            <input type="text" class="form-control" name="address" id="address" placeholder="Address"/>
            </div>
        </div>
         <div class="form-group">
            <label class="col-md-2 control-label" for="pincode">Pincode</label>
            <div class="col-md-4">
            <input type="text" class="form-control" name="pincode" id="pincode" placeholder="Pincode"/>
            </div>
        </div>
         <div class="form-group">
            <label class="col-md-2 control-label" for="mobile">Mobile</label>
            <div class="col-md-4">
            <input type="text" class="form-control" name="mobile" id="mobile" placeholder="Mobile no."/>
            </div>
        </div>
         <div class="form-group">
            <div class="col-md-6 col-md-offset-2">
            <button type="submit" class="btn btn-success">Submit</button>
            </div>
        </div>
      </form>
    </div>
    </div>
    </div>    

<!--Footer-->
    <br>
    <br>
    <br>
    <br>
    <br>
    <%@ include file="footer.jsp" %>
    <!--Footer -->





<!-- jQuery and js included from header.jsp(necessary for Bootstrap's JavaScript plugins) -->
    
  
    
  </body>
</html>