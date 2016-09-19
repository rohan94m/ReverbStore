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
    <title>Online Guitar Store Categories</title>

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
    body {
      position: relative;
  }
   </style>
  </head>
  <body>
    <!-- Navigation -->
<%@ include file="header1.jsp" %>
 <br>
 <!-- Section 1 -->
 <div class="container" id="section1">

        <div class="row">
    		
            <div class="col-md-9">

                <div class="row jumbotron">

                     <img  src="http://placehold.it/800x300" alt="">
                          
                </div>
              </div>
              
		</div>
		<br>
                <div class="row">

                    <div class="col-sm-6 col-lg-6 col-md-6">
                        <div class="thumbnail">
                            <img src="http://placehold.it/320x150" alt="">
                            <div class="caption">
                                <h4 class="pull-right">$24.99</h4>
                                <h4><a href="product">First Product</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            
                        </div>
                    </div>

                   

                   
                </div>

            </div>
            
            <!-- section 1 -->
            <br>
            <br>
            <br>
            <br>
            
          
            


    <!--Footer-->
    <br>
    <br>
    <br>
    <br>
    <br>
  <%@ include file="footer.jsp" %>
    <!--Footer -->





    <!-- jQuery and js included from header.jsp (necessary for Bootstrap's JavaScript plugins) -->
    <script>
    
   
$(document).ready(function(){
  // Add scrollspy to <body>
  $('body').scrollspy({target: ".scroll", offset: 50});

  // Add smooth scrolling on all links inside the navbar
  $("#myscrollbar a").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 800, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    }  // End if
  });
});
</script>
    
    
  </body>
</html>