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
	<%@ include file="header1.jsp" %>
 	<div class="container">
 		<br>
 		<div class=" row jumbotron">
 		
 		<h3>Manage Products</h3>
 		</div>
 		<br>
 		<div class="row">
 		<a href="newproduct" class="btn btn-primary btn-lg" role="button">Add New Product</a>
 	
 		</div>
 	</div>
 	
<div class="container">
<br>
<br>
<div class="table-responsive">
<table class="table">
    <thead>
      <tr>
        <th>Product Id</th>
        <th>Model Name</th>
        <th>Brand</th>
        <th>Category</th>
        <th>Price</th>
        <th>Remaining pieces</th>
      </tr>
    </thead>
    <tbody id="dynamicTable">   
    
    </tbody>
</table>
</div>
 </div>
 
 <script>	
 var json ='${products}';
 var products=JSON.parse(json);
 var table="";
 
 $.each(products,function(i,item){
	 table+="<tr>";
	 table+="<td>";
	 table+=item.product_id;
	 table+="</td>";

	 table+="<td>";
	 table+=item.name;
	 table+="</td>";
	 
	 table+="<td>";
	 table+=item.brand;
	 table+="</td>";
	 
	 table+="<td>";
	 table+=item.category;
	 table+="</td>";

	 table+="<td>";
	 table+=item.price;
	 table+="</td>";

	 table+="<td>";
	 table+=item.qty;
	 table+="</td>";

	 
	 table+="</tr>";
	 
	 
 });
	 
 
 document.getElementById("dynamicTable").innerHTML=table;
 
	
		
</script>
 	   
 	
 	
   
 	
<!-- jQuery and JS included from header.jsp (necessary for Bootstrap's JavaScript plugins) -->
  	
  </body>
</html>