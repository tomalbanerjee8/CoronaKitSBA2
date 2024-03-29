<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Menu Page</title>
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


<!--  
<spring-form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout">
</spring-form:form>
<hr/>
-->
<c:choose>
      	<c:when test="${unm!=null && role=='ADMIN' }">
      	<h1><center>Corona Kit Admin Dashboard</center></h1>
      	</c:when>
      	
      	<c:when test="${unm!=null && role=='USER' }">
      	<h1><center>Corona Kit User Dashboard</center></h1>
      	</c:when>
      	</c:choose>

<nav class="navbar navbar-expand-md bg-dark navbar">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		 <div class="collapse navbar-collapse" id="collapsibleNavbar">

 <c:choose>
      	<c:when test="${unm!=null && role=='ADMIN' }">
      	<ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link" href="${pageContext.request.contextPath }/admin/home">ADMIN DASHBOARD</a>
	      </li>   
	      <li class="nav-item">
	      	  <a class="nav-link" href="${pageContext.request.contextPath }/logout">SIGN OUT</a>
	      </li>
	      </ul>
	      </c:when>
	     
      	<c:when test="${unm!=null && role=='USER' }">
      	<ul class="navbar-nav"> 
	      <li class="nav-item">
		       <a class="nav-link" href="${pageContext.request.contextPath }/user/home">USER DASHBOARD</a>
		    </li> 
		    <li class="nav-item">
	      	  <a class="nav-link" href="${pageContext.request.contextPath }/logout">SIGN OUT</a>
	      	</li>
	      </ul>	
      	</c:when>
      	
      	
      </c:choose>
      </div>
      </nav>
</body>
</br>
</br>
</br>
</br>
</br>
</br>
<h2 align="center" color="blue">Welcome To Corona Prevention Kit Application</h1>
<h3 align="center">This an online portal for you where you can order COVID-19 related product 24/7 because your health is our concern please stay indoor and enjoy ordering.</h3>
 	
</html>