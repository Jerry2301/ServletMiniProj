<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link href="css/bulma/css/bulma.min.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

</head>
<body>

<!-- Session -->
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("fname")==null) {
			response.sendRedirect("Login.jsp");
	}

%> 
<section>
<!-- Navbar -->
<nav class="navbar" role="navigation" aria-label="main navigation">
  
  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item" href="Welcome.jsp">
        <i class="fas fa-home"></i>&nbsp; Home
      </a>

      <a class="navbar-item" style="background-color: #DED4D2">
       <i class="fas fa-user-circle"></i>&nbsp;My Profile
      </a>
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
          <form action="LogoutServlet" method="post">
	      <button type="submit" class="button is-primary"><i class="fas fa-sign-out-alt"></i>&nbsp; Logout</button>
          </form> 
       </div>
    </div>
  </div>
</nav>	<!-- Navbar Ends -->
</section>	<!-- Session Ends -->

<div class="container column is-4">
 <section>
 
    <div class="container column is-8">
      <h1 class="title">Update Profile</h1>
     </div>
     <div class="column" style="padding-left: 80px"> 
      <h2 class="subtitle">
        Start editing the values
      </h2>
      
    </div>
    <hr>
 </section>
<form action="UpdateServlet" method="post">
	<div class="field">
  	<label class="label">First Name</label>
 	 <div class="control">
   		 <input class="input " type="text" placeholder="Enter another name" name="fname" value="<c:out value="${sessionScope.first}"></c:out>" required>
  	</div>
	</div>
	<div class="field">
  	<label class="label">Last Name</label>
 	 <div class="control">
   		 <input class="input " type="text" placeholder="Enter your last name" name="lname" value="<c:out value="${sessionScope.last}"></c:out>"required>
  	</div>
	</div>
	<div class="field">
  	<label class="label">Email Address</label>
 	 <div class="control">
   		 <input class="input " type="email" placeholder="Enter your email address" name="email" value="<c:out value="${sessionScope.address}"></c:out>" required>
  	</div>
	</div>
	<div class="field">
  	<label class="label">Account Balance</label>
 	 <div class="control">
   		 <input class="input " type="text" placeholder="Enter your balance" name="bal" value="<c:out value="${sessionScope.balance}"></c:out>"required>
  	</div>
	</div>
	
	
	<div class="control centerRegister">
  		<button class="button is-primary is-outlined">Update</button>
	</div>


</form>
</div>

</body>
</html>