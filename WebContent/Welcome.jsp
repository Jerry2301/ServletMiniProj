<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
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
      <a class="navbar-item" style="background-color: #DED4D2">
        <i class="fas fa-home"></i>&nbsp; Home
      </a>

      <a class="navbar-item" href="ProfileServlet">
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
<div class="container">
      <h1 class="title">Welcome <c:out value="${sessionScope.fname}"></c:out>&nbsp;<c:out value="${sessionScope.lname}"></c:out></h1>
      <h2 class="subtitle">
        Greeting from us!
      </h2>
     <div class="card">
  <div class="card-content">
    <p class="title">
	Activities	
	</p>
    <p class="subtitle">
      
    </p>
  </div>
  <footer class="card-footer">
    <p class="card-footer-item">
      <span>
        View on <a href="https://twitter.com/codinghorror/status/506010907021828096">Twitter</a>
      </span>
    </p>
    <p class="card-footer-item">
      <span>
        Share on <a href="#">Facebook</a>
      </span>
    </p>
  </footer>
</div>
    </div>
<footer class="footer">
  <div class="content has-text-centered">
    <p>
      
    </p>
  </div>
</footer>

</section>



</body>
</html>