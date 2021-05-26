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
  margin-top : 950px;
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
	<h2>Fruit Store
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
<img class="card-img-top" src="https://i5.walmartimages.com/asr/b3873509-e1e1-431b-9a98-9bd12d59bd72_1.3109eaf9d125b1b19ab961b4f6afe2b9.jpeg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">Apple</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.70/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "21" />
        <div class="space"><form:label path="qty"> Quantity : </form:label>
        <form:input type="number" path="qty" value="0" style="width:20%" min="1" required="true"/><br/></div>
		<div class="space"><input type="submit" value="Add To Cart" class="btn btn-primary"/></div>
		</h5>
	</form:form>
</div>
</div>

</div><div class="setposition">
<div class="card" style="height:27rem;width: 18rem;">
<img class="card-img-top" src="https://www.aishcart.in/1240-large_default/alphonso-mango-delicious-hapus-mango-king-size-1-dozen.jpg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">Mango</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.80/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "22" />
        <div class="space"><form:label path="qty"> Quantity : </form:label>
        <form:input type="number" path="qty" value="0" style="width:20%" min="1" required="true"/><br/></div>
		<div class="space"><input type="submit" value="Add To Cart" class="btn btn-primary"/></div>
		</h5>
	</form:form>
</div>
</div>

</div><div class="setposition">
<div class="card" style="height:27rem;width: 18rem;">
<img class="card-img-top" style="margin-top:35px;margin-bottom:55px" src="https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">Banana</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.40/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "23" />
        <div class="space"><form:label path="qty"> Quantity : </form:label>
        <form:input type="number" path="qty" value="0" style="width:20%" min="1" required="true"/><br/></div>
		<div class="space"><input type="submit" value="Add To Cart" class="btn btn-primary"/></div>
		</h5>
	</form:form>
</div>
</div>

</div><div class="setposition">
<div class="card" style="height:27rem;width: 18rem;">
<img class="card-img-top" style="margin-top:30px;margin-bottom:45px" src="https://www.aicr.org/wp-content/uploads/2020/01/shutterstock_533487490-640x462.jpg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">Grapes</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.50/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "24" />
        <div class="space"><form:label path="qty"> Quantity : </form:label>
        <form:input type="number" path="qty" value="0" style="width:20%" min="1" required="true"/><br/></div>
		<div class="space"><input type="submit" value="Add To Cart" class="btn btn-primary"/></div>
		</h5>
	</form:form>
</div>
</div>

	<div class="setposition" >
<div class="card" style="width: 18rem;">
<img class="card-img-top" src="https://5.imimg.com/data5/BM/MR/MY-41533060/watermelon-fruit-500x500.jpg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">Watermelon</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.45/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "25" />
        <div class="space"><form:label path="qty"> Quantity : </form:label>
        <form:input type="number" path="qty" value="0" style="width:20%" min="1" required="true"/><br/></div>
		<div class="space"><input type="submit" value="Add To Cart" class="btn btn-primary"/></div>
		</h5>
	</form:form>
</div>
</div>

	<div class="setposition" >
<div class="card" style="height:27rem;width: 18rem;">
<img class="card-img-top" src="https://5.imimg.com/data5/HM/KG/MY-42588315/fresh-orange-500x500.jpg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">Orange</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.35/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "26" />
        <div class="space"><form:label path="qty"> Quantity : </form:label>
        <form:input type="number" path="qty" value="0" style="width:20%" min="1" required="true"/><br/></div>
		<div class="space"><input type="submit" value="Add To Cart" class="btn btn-primary"/></div>
		</h5>
	</form:form>
</div>
</div>


<div class="setposition">
<div class="card" style="width: 18rem;">
<img class="card-img-top" src="https://5.imimg.com/data5/WT/GN/ZH/SELLER-3722283/pineapple-500x500.jpg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">Pineapple</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.45/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "27" />
        <div class="space"><form:label path="qty"> Quantity : </form:label>
        <form:input type="number" path="qty" value="0" style="width:20%" min="1" required="true"/><br/></div>
		<div class="space"><input type="submit" value="Add To Cart" class="btn btn-primary"/></div>
		</h5>
	</form:form>
</div>
</div>

<div class="setposition">
<div class="card" style="height : 27rem;width: 18rem;">
<img class="card-img-top" style="margin-bottom:2px" src="https://5.imimg.com/data5/VX/YO/MY-26728858/fresh-chiku-500x500.jpg" alt="Card image cap">
	<form:form action="addtocart" method="post" modelAttribute="additem">
		<h5 class="cardfont">
		<form:label path="itemname">Sapota</form:label><br/>
		<div class="space"><form:label path="cost"> Rs.35/-</form:label><br/></div>
        <form:hidden path = "itemid" value = "28" />
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