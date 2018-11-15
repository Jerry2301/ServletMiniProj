<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="css/bulma/css/bulma.min.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

<!-- Login Page -->

<section class="hero is-light is-fullheight">
<div  class="container column is-4">
<section>
 
    <div class="container column is-4">
      <h1 class="title">Login</h1>
     </div>
 </section>
	<form action="LoginServlet">
		<div class="field">
  		<label class="label">Email Address</label>
 	 	<div class="control">
   		 	<input class="input " type="email" placeholder="Enter your email address" name="email" required>
  		</div>
  		<div class="field">
  		<label class="label">Password</label>
 		 <div class="control">
   			 <input class="input " type="password" placeholder="Enter your password" name="pass" required>
  		</div>
  		<div class="loginPageButtons">
  		 <div class="control">
  			<button class="button is-primary is-outlined" type="submit">Login</button>
		 </div>
		 <div class="control">
  			<a class="button is-primary is-outlined" href="Register.jsp">
    		 <span>Register</span>
  			</a>
  	    </div>
		</div>
	</form>
	
	
</div>
</section>
</body>
</html>