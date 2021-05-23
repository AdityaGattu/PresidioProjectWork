<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.heading{
	padding-top : 15px;
	padding-bottom :15px;
	padding-left : 65px;
	background-image: url("/images/heading_back.jpg");
	color : white;
	font-size : 10px;
}	

.hero-image {
  background-image: url("/images/shop.jpg");
  background-color: #cccccc;
  height: 617px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.hero-text {
  text-align: center;
  position: absolute;
  top: 50%;
  left: 35%;
  transform: translate(-50%, -50%);
  color: Black;
  
}

footer {
  text-align: center;
  padding-top: 17px;
  height : 60px;
  font-size : 17px;
  background-color: Black;
  color: white;
}
	
</style>
<body>

<div class="heading">
	<h2>Presidio Online Store
	<div style="float:right;margin-right:40px;padding-top:5px;">
	<form:form action="userlogout" method="get" modelAttribute="logout">
			<input type="submit" value="logout" class="btn btn-primary" />
	</form:form>
	</div>
	<div style="float:right;margin-right:40px;">
	<form:form action="showcart" method="get">
			<input type="submit" value="cart" class="btn btn-primary"  />		
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16" class="btn btn-primary">
  			<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
			</svg>
	</form:form></div>
	</h2>
</div>
	<div class="hero-image">
		<div class="hero-text">
			<h1 style="font-size:50px">Enjoy Deals!!</h1>
			<h3 style="color:maroon;">Select your Category</h3>
			<form:form action="shop1" method="get">
			<input type="submit" value="Vegetable Shop" class="btn btn-primary"/>
			</form:form>
			<form:form action="shop2" method="get">
		<input type="submit" value="Fruit Shop" class="btn btn-primary" />
	</form:form>
	<form:form action="shop3" method="get">
		<input type="submit" value="Grocery Shop" class="btn btn-primary"/>
	</form:form>
		</div>
	</div>
	</div>
	<footer>
		<p>PresidioOnlineStrore@shop.com</p>
	</footer>
</body>
</html>