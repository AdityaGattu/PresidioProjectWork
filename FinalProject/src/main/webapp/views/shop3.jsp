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
  background-image: url("shop.jpg");
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

.cardfont{
  text-align: center;
  font-weight : bold 700px;
  
  
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

.setposition{
 margin-top : 25px;
 margin-left : 75px;
 display:flex;
 float:left;
}

.space{
margin-top  : 6px;
margin-bottom : 7px;
}

</style>

</head>
<body>
<div class="heading">
	<h2>Grocery Store
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

<div class="setposition" >
<div class="card" style="height:27rem;width: 18rem;">
<img class="card-img-top" src="https://images-na.ssl-images-amazon.com/images/I/51ye7gOYXcL._SL1100_.jpg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">Horlicks</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.150/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "51" />
        <div class="space"><form:label path="qty"> Quantity : </form:label>
        <form:input type="number" path="qty" value="0" style="width:20%" min="1" required="true"/><br/></div>
		<div class="space"><input type="submit" value="Add To Cart" class="btn btn-primary"/></div>
		</h5>
	</form:form>
</div>
</div>

</div><div class="setposition">
<div class="card" style="height:27rem;width: 18rem;">
<img class="card-img-top" style="margin-bottom:3px;" src="https://5.imimg.com/data5/AO/SM/MY-9921506/500ml-gaia-extra-virgin-olive-oil-500x500.jpg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">Olive Oil</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.200/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "52" />
        <div class="space"><form:label path="qty"> Quantity : </form:label>
        <form:input type="number" path="qty" value="0" style="width:20%" min="1" required="true"/><br/></div>
		<div class="space"><input type="submit" value="Add To Cart" class="btn btn-primary"/></div>
		</h5>
	</form:form>
</div>
</div>

</div><div class="setposition">
<div class="card" style="height:27rem;width: 18rem;">
<img class="card-img-top" style="margin-bottom:3px;"src="https://www.bigbasket.com/media/uploads/p/xxl/251018_6-kelloggs-corn-flakes.jpg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">CornFlakes</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.170/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "53" />
        <div class="space"><form:label path="qty"> Quantity : </form:label>
        <form:input type="number" path="qty" value="0" style="width:20%" min="1" required="true"/><br/></div>
		<div class="space"><input type="submit" value="Add To Cart" class="btn btn-primary"/></div>
		</h5>
	</form:form>
</div>
</div>

</div><div class="setposition">
<div class="card" style="height:27rem;width: 18rem;">
<img class="card-img-top" src="https://sc01.alicdn.com/kf/UTB88B6Wp22JXKJkSanrxh53lVXa1.jpeg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">Rice</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.60/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "54" />
        <div class="space"><form:label path="qty"> Quantity : </form:label>
        <form:input type="number" path="qty" value="0" style="width:20%" min="1" required="true"/><br/></div>
		<div class="space"><input type="submit" value="Add To Cart" class="btn btn-primary"/></div>
		</h5>
	</form:form>
</div>
</div>

</div><div class="setpositionfooter">
	<footer>
		<p>PresidioOnlineStrore@shop.com</p>
	</footer>
</div>
</body>
</html>