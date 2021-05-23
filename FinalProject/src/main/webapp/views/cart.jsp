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
</head>
<body>
	<h1>Welcome to Shopping Cart....</h1>
	List of items in cart:
    <br />
     <ul>
 <table>
  <c:forEach items="${allitems}" var="item">
    <tr>
      <td><c:out value="${item.itemid}" /></td>
      <td><c:out value="${item.itemname}" /></td>
      <c:set var="cartvalue" value="${cartvalue + (item.cost*item.qty)}" />
      <td> Qty : </td>
      <td><form:form action="updatecart" method="post" modelAttribute="updatecartitem">
			<form:hidden path = "itemid" value="${item.itemid}" />
			<form:input path="qty" value="${item.qty}"/><br/>
			<td><input type="submit" value="update" /></td>
		</form:form>
		</td>
		<td>
		<form:form action="deletecart" method="post" modelAttribute="deletecartitem">
			<form:hidden path = "itemid" value = "${item.itemid}"/>
			<input type="submit" value="delete" />
		</form:form>
		</td>
      <td><c:out value="${item.cost}" /></td>
      <td><c:out value="${item.total}" /></td>
    </tr>
  </c:forEach>	
</table>

		TOTAL CART VALUE : ${cartvalue}
	<form:form action="generateinvoice" method="get">
			<input type="submit" value="BuyNow" />
	</form:form>
    </ul>
</body>
</html>