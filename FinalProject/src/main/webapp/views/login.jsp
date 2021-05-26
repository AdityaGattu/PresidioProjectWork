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

.signup-form {
  height : 500px;
  width: 400px;
  padding: 20px;
  text-align: center;
  background: url(/images/heading_back.jpg);
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  overflow: hidden;
}

.signup-btn {
  font-weight: bold;
  margin-top: 60px;
  padding-left : 20px;
  padding-right : 20px;
  margin-bottom: 60px;
  color: url(/images/heading_back.jpg);
  border-radius: 44px;
  cursor: pointer;
  transition: 0.8s;
}

.error{
 	font-size : 10px;
 	font-style: italic;
	color: yellow !important;
}

.err{
 	font-size : 10px;
 	font-style: italic;
	color: yellow !important;
}
</style>
<body>

<div class="signup-form">
      <h1 style="color:white;margin-top:70px;margin-bottom:20px;">Login</h1>
        <form:form action="login" method="post" modelAttribute="userlogin">
	    <div style="color:white;font-size:25px;margin-top:45px;margin-bottom:20px;">
			<form:label path="uname" >Username : </form:label>
			<div style="color:white;font-size:25px;margin-top:15px;">
			<form:input path="uname" required="true"/><br/>
        </div>
        <form:label path="upass">Password :</form:label>
        <div style="color:white;font-size:25px;margin-top:15px;">
        	<form:input type="password" path="upass" required="true"/><br/>
        </div>
       </form:form>
	   
        <input type="submit" value="Login" style="margin-top:30px"class="signup-btn"/>
     </div> 
	 </div>
</body>
</html>