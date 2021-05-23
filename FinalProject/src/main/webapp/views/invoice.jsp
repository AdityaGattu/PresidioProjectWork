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
	<h1>Your Order is Successfully Placed!!</h1>
    <br />
     <h3>User</h3>
     <c:out value="${userlogin}" />
     <ul>
 <table>
 	<tr>
      <td>ITEM ID  </td>
      <td>ITEM NAME </td>
      <td>QTY </td>
      <td>COST</td>
      <td>TOTAL</td>
    </tr>
  <c:forEach items="${allitems}" var="item">
    <tr>
      <td><c:out value="${item.itemid}" /></td>
      <td><c:out value="${item.itemname}" /></td>
      <c:set var="cartvalue" value="${cartvalue + (item.cost*item.qty)}" />
      <td><c:out value="${item.qty}" /></td>
      <td><c:out value="${item.cost}" /></td>
      <td><c:out value="${item.total}" /></td>
    </tr>
  </c:forEach>	
</table>
		TOTAL PURCHASE VALUE : ${cartvalue}
    </ul>
</body>
</html>