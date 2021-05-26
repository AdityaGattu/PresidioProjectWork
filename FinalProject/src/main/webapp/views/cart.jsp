<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.heading{
	padding-top : 15px;
	padding-bottom :15px;
	padding-left : 65px;
	background-image: url("/images/heading_back.jpg");
	color : white;
	font-size : 10px;
}	

.my-image {
  background-image: url("/images/heading_back.jpg");
  background-color: #cccccc;
  height: 617px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

.my-text {
  text-align: center;
  position: absolute;
  top: 40%;
  left: 35%;
  transform: translate(-50%, -50%);
  color: Black;
  
}

footer {
    position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   text-align: center;
   padding-top: 17px;
  height : 60px;
  font-size : 17px;
  background-color: Black;
  color: white;
}
	
.space{
margin-bottom : 7px;
}
</style>

</head>
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
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16" class="btn btn-primary">
  			<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
			</svg>
	</form:form></div>
	</h2>
	</div>
	
	<h1 style="margin:50px; margin-left:100px;">
	<svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16" class="btn btn-primary">
  			<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
	</svg>
	 My Cart</h1>
	

<div style="margin-left:150px;margin-right:150px;">
<table class="table" >
  <thead>
    <tr>
      <th scope="col" class="table-success">Item id</th>
      <th scope="col" class="table-success">Item name</th>
      <th scope="col" class="table-success">Quantity</th>
      <th scope="col" class="table-success">Delete</th>
	  <th scope="col" class="table-success">Cost</th>
	  <th scope="col" class="table-success">Total</th>	  
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${allitems}" var="item">
    <tr class="table-primary">
      <th scope="row" ><c:out value="${item.itemid}" /></th>
      <td style="font-weight:bold;margin-left:5px;"><c:out value="${item.itemname}"/></td>
	  <c:set var="cartvalue" value="${cartvalue + (item.cost*item.qty)}" />
      <td><form:form action="updatecart" method="post" modelAttribute="updatecartitem">
			<form:hidden path = "itemid" value="${item.itemid}" />
			<div class="space">
			<form:input path="qty" value="${item.qty}" style="width:20%"/>
			<input type="submit" value="update" class="btn btn-primary" />
			</div>
			</form:form>
	  </td>
      <td><form:form action="deletecart" method="post" modelAttribute="deletecartitem">
			<form:hidden path = "itemid" value = "${item.itemid}"/>
			<input type="submit" value="delete" class="btn btn-primary" />
		</form:form>
	  </td>
      <td style="font-weight:bold;margin-left:5px;"><c:out value="${item.cost}" /></td>
      <td style="font-weight:bold;margin-left:5px;"><c:out value="${item.total}" /></td>
    </tr>
    </c:forEach>	 
    <tr class="table-danger">
      <td colspan="5"  style="font-weight:bold;">Total Cart Value : </td>
      <td style="font-weight:bold;margin-left:5px;">${cartvalue}</td>
    </tr>
  </tbody>
</table>
</div>
	<form:form action="gotobilling" method="get">
			<input type="submit" value="BuyNow"  class="btn btn-danger" style="float:right; margin-right:180px;"/>
	</form:form>

	<footer>
		<p>PresidioOnlineStore@Shop.com</p>
	</footer>
</body>
</html>