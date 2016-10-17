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
        
        
        
     </div>
     
     <div class="container">

        <form:form commandName="billingAddress"  class="form-horizontal">

        <h3>Billing Address:</h3>

        <div class="form-group">
            <label class="col-md-2 control-label" for="billingStreet">Street Name</label>
            <div class="col-md-4">
            <form:input path="streetName" id="billingStreet" class="form-Control" />
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="billingApartmentNumber">Apartment Number</label>
            <div class="col-md-4">
            <form:input path="apartmentNumber"  id="billingApartmentNumber" class="form-Control" />
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label" for="billingCity">City</label>
            <div class="col-md-4">
            <form:input path="city" id="billingCity" class="form-Control" />
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label"  for="billingState">State</label>
            <div class="col-md-4">
            <form:input path="state" id="billingState" class="form-Control" />
            </div>
        </div>

        <div  class="form-group">
            <label class="col-md-2 control-label"  for="billingCountry">Country</label>
            <div class="col-md-4">
            <form:input path="country" id="billingCountry" class="form-Control" />
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-2 control-label"  for="billingZip">Zipcode</label>
            <div class="col-md-4">
            <form:input path="zipCode" id="billingZip" class="form-Control" />
            </div>
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>
		<input type="submit"  value="Next" class="btn btn-default" name="_eventId_billingDetailCollected" />
        
        <button class="btn btn-default" name="_eventId_backToShippingInfo">Back</button>

        

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>
        

       

        </form:form>
        </div>
  
  
<!--Footer-->
    <br>
    <br>
    <br>
    <br>
    <br>
    <%@ include file="../footer.jsp" %>
    <!--Footer -->





<!-- jQuery and js included from header.jsp(necessary for Bootstrap's JavaScript plugins) -->


    
  </body>
</html>