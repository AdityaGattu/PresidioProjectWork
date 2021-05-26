<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<link href="../resources/static/css/login.css" rel="stylesheet" ></link>    
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

.imge{
	height:620px;
	width :600px;
	margin-left : 1px;
	margin-top : 20px;
	display : flex;
	align-content: flex-start;
	background-image : url("/images/shopcart1.jpg");
	background-size: contain;
	background-color: black;
}

.container{
	display:flex;
	flex-direction: row;
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
			<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16" class="btn btn-primary">
  			<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
			</svg>
	</form:form></div>
	</h2>
	</div>
	
	

	<div class="container">
      <div class="imge">
	  </div>
       
        <form:form action="fillbill" method="post" modelAttribute="bill">
			<h1 style="display:flex; flex-direction : row;margin-top:105px;margin-left:100px;font-size=20px;"> 
			<svg xmlns="http://www.w3.org/2000/svg" style="margin-right:20px;" width="45" height="45" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16" class="btn btn-primary">
  			<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
			</svg>Billing Details</h1>
			<h5 style="display:flex; flex-direction : row;margin-top:60px;margin-left:100px;font-size=20px; color:red;">
			<form:label path="bname" >Name </form:label>
			
			<form:input path="bname"  style="display:flex; margin-left:50px;"  required="true" class="form-control" placeholder="name"/><br/>
            </h5>
           
			<h5 style="display:flex;margin-top:20px;margin-left:100px;font-size=20px; color:red;">
		   <form:label path="address">Billing Address</form:label>
            <form:input path="address" style="display:flex; margin-left:20px;" required="true" class="form-control" placeholder="Shipping address"/><br/>
			</h5>
            
	   
          <input type="submit" value="Deliver Here" style="display:flex;margin-top:30px;margin-left:400px;float:left;" class="btn btn-primary"/>
      
        </form:form>
		
		</div>
	 
	 <footer>
		<p>PresidioOnlineStore@Shop.com</p>
	</footer>
</body>
</html>