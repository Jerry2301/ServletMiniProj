<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Profile</title>
<link href="css/bulma/css/bulma.min.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>
<body>

 <%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("fname")==null) {
			response.sendRedirect("Login.jsp");
	}

%> 
<section>
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
</nav>
</section>
<section class="hero">
  <div class="hero-body">
    <div class="container">
      <h1 class="title">
        My Profile
        <hr>
      </h1>
      
      <!-- Profile Page -->
      <div class="column is-half">
		    <h1 class="title">Registration Number: </h1><h1 class="subtitle is-3"> <c:out value="${sessionScope.rno}"></c:out> </h1>
			<h1 class="title">First Name: </h1><h1 class="subtitle is-3"> <c:out value="${sessionScope.first}"></c:out> </h1>
			<h1 class="title">Last Name: </h1><h1 class="subtitle is-3"> <c:out value="${sessionScope.last}"></c:out> </h1>
			<h1 class="title">Email Address: </h1><h1 class="subtitle is-3"> <c:out value="${sessionScope.address}"></c:out> </h1>
			<h1 class="title">Balance:</h1><h1 class="subtitle is-3"> <c:out value="${sessionScope.balance}"></c:out> </h1>
			<form action="EditServlet">
			<button type="submit" class="editButton button is-primary is-outlined is-large"><i class="fas fa-edit"></i> Edit</button>
			</form>
		
	</div>
    </div>
  </div>
</section>


	


</body>
</html>