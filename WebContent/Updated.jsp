<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Updated</title>
 <%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("fname")==null) {
			response.sendRedirect("Login.jsp");
	}

%>  
<link href="css/bulma/css/bulma.min.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

</head>
<body>
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
</nav>
</section>
<section class="hero is-light is-fullheight">
  <div class="hero-body">
    <div class="container">
      <h1 class="title fadeTitleHome">
        Your profile information was successfully updated.
        Please Logout for effects to take place.
      </h1>
       <div>
       <form action="LogoutServlet" method="post">
       <button class="button is-large" type="submit" >Logout</button>
  </form>
  </div>
     </div>
    </div>
   </section>



</body>
</html>