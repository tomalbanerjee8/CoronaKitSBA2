<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Displays added products</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
 <div class="collapse navbar-collapse" id="collapsibleNavbar">
 	<ul class="navbar-nav">
 		<!-- <li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath }/user/home">USER DASHBOARD</a>
	      </li> --> 
		<li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath }/user/show-list">PRODUCTS LIST</a>
	     </li>
	     <li class="nav-item">
	      	  <a class="nav-link" href="${pageContext.request.contextPath }/logout">SIGN OUT</a>
	      	</li>		 
	 </ul> 
	 </div>
	 </nav>
	<c:if test="${mssg != null }">  
 	<div class="container-fluid">			
		<div class="alert alert-success"> 
        <Strong>${mssg }</Strong> 
        </div>             
     </div>   	
        <br/> 
 </c:if> 
	<br> 
<c:choose>  
        <c:when test="${cartaddedproduct == null || cartaddedproduct.isEmpty() }">  
            <p><Center><b>No Products has been added to Cart</b></Center></p>  
        </c:when>  
        <c:otherwise>  
        <p><Strong>Below listed Products are added to cart click on Check out button to enter Address </Strong></p> 
          <p style="color:red;"><Strong>*If you go back to products list page then your choose products will be deleted. Please choose again</Strong></p> 
            <table class="table table-striped table-hover"> 
                <tr>  
                    <th>Product id#</th>  
                    <th>Product Name</th>  
                    <th>Product Cost</th>  
                    <th>Product Description</th>         
                    <th>Product Quantity</th>     
                    <th>Action</th>                             
                </tr>  
                <c:forEach items="${cartaddedproduct}" var="product">  
                    <tr>  
                        <td>${product.id }</td>  
                        <td>${product.productName }</td>  
                        <td>${product.cost }</td>  
                        <td>${product.productDescription}</td>               
                        <td>${Qtymap.get(product.id)}</td>    
                        <td> <a class="btn btn-sm btn-danger" href="${pageContext.request.contextPath }/user/delete?productId=${product.id}">DELETE</a> </td> 
                    </tr>  
                </c:forEach>  
            </table>  
            
            <nav>
            <Hr/>
		   		<br/>          
		        <a class="btn btn-sm btn-primary"href="${pageContext.request.contextPath }/user/checkout" style="margin-left: 620px;">CHECKOUT</a>               
   			 </nav>   
        </c:otherwise>  
    </c:choose> 
    
    

</body>
</html>