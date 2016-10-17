<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
 
    
  </head>
  <body>
  
  	<%@ include file="header1.jsp" %>
   
    <br>
    <br>
    <!--JUMBOTRON-->

    <div class="container">
      <div class="jumbotron">
        <h1>Edit Product</h1> 
        <p>Insert all required details </p> 
      </div>
    </div>
    
    <div class="container">
    
    <img class="img-responsive" src="<c:url value="/resources/img/uploads/${imgname}"/>" alt="" width=800px height=300px>
    <br>
    <div class="panel panel-default">
      <div class="panel-heading" style="background-color:#C0C0C0;"><strong>Add a new product</strong></div>
      <div class="panel-body">
        <form:form id="editproduct" enctype="multipart/form-data" method="post" class="form-horizontal" action="editandsaveproduct" commandName="productedit" >
          <div class="form-group">
            <label class="col-md-2 control-label" for="productid">Product Id</label>
            <div class="col-md-4">
              <form:input type="text" value="${prodid}" path="product_id" id="id" Class="form-control"/>
            </div>
          </div>
          
          
          
          <div class="form-group">
            <label class="col-md-2 control-label" for="productname">Product Name</label>
            <div class="col-md-4">
              <form:input type="text" value="${prodname}" path="name" id="name" Class="form-control"/>
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-2 control-label" for="brand">Product Brand</label>
            <div class="col-md-4">
            <form:input type="text" value="${prodbrand}" path="brand" class="form-control"  id="brand" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" for="price">Price</label>
            <div class="col-md-4">
            <form:input path="price" value="${prodprice}" type="text" class="form-control"  id="price" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" for="category">Category</label>
            <div class="col-md-4">
            <form:select name="category"  path="category"  class="form-control" id="city">
              <option value="${prodcategory}">${prodcategory}</option>
              <option value="Acoustic Guitar">Acoustic Guitar</option>
              <option value="Electric Guitar">Electric Guitar</option>
              <option value="Bass Guitar">Bass Guitar</option>
 			  
              <option value="Amplifiers">Amplifiers</option>
              <option value="Pedals">Pedals</option>
              <option value="Processors">Processors</option>
              <option value="Accesories">Accesories</option>
            </form:select>
            </div>
        </div>
         <div class="form-group">
            <label class="col-md-2 control-label" for="description">Description</label>
            <div class="col-md-4">
            <form:input type="text" value="${proddescription}" path="description" class="form-control"  id="description"/>
            </div>
        </div>
         <div class="form-group">
            <label class="col-md-2 control-label" for="suppliername">Supplier Name</label>
            <div class="col-md-4">
            <form:input type="text" value="${prodsupplier}" path="suppliername" class="form-control"  id="suppliername" />
            </div>
        </div>
         <div class="form-group">
            <label class="col-md-2 control-label" for="qty">Quantity</label>
            <div class="col-md-4">
            <form:input type="text" value="${prodqty}" path="qty" class="form-control"  id="qty" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2 control-label" for="imgfile">New Image</label>
            <div class="col-md-4">
            <form:input path="imgfile" type="file" name="file" />
            </div>
        </div>
         <div class="form-group">
            <div class="col-md-6 col-md-offset-2">
            <button type="submit" class="btn btn-success">Save details</button>
            </div>
        </div>
      </form:form>
    </div>
    </div>
    <c:if test="${successmg=='Details Saved'}">
    <h2><c:out value="${successmg }"></c:out></h2>
   	</c:if> 
    
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