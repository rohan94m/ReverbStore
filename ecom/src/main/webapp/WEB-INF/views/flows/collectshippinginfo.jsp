<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

    
  </head>
  <body>

  <!-- Navigation -->
  <%@ include file="../header1.jsp" %>
  
  
  
  <div class="container">
        <div class="page-header">
            <h1>Customer</h1>


            <p class="lead">Customer Details:</p>
        </div>

    

        <br/>
        
         <div class="page-header">
            <h1>Customer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="shippingAddress" class="form-horizontal">

        <h3>Shipping Address:</h3>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <form:input path="streetName" id="shippingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="apartmentNumber" id="shippingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCity">City</label>
            <form:input path="city" id="shippingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingState">State</label>
            <form:input path="state" id="shippingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label>
            <form:input path="country" id="shippingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label>
            <form:input path="zipCode" id="shippingZip" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_shippingDetailCollected" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>
        </div>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <!--Footer-->
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <%@ include file="../footer.jsp" %>
    <!--Footer -->














<!-- jQuery and js included from header.jsp (necessary for Bootstrap's JavaScript plugins) -->
    
   
    
  </body>
</html>
  