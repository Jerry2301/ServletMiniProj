<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bulma/css/bulma.min.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>
<body>

<!-- Home Page -->

<section class="hero is-light is-fullheight">
  <div class="hero-body">
    <div class="container">
      <h1 class="title fadeTitleHome">
        Welcome To The Mini Project
      </h1>
      <h2 class="subtitle fadeSubtitleHome">
        This project was created using Servlets and Oracle JDBC.
        The css framework used is Bulma.
       
      </h2>
    </div>
  </div>
  <div class="homeButtons">
  <div>
  	<a class="button is-large" href="Register.jsp">
    <span class="icon is-medium">
      <i class="fas fa-registered"></i>
    </span>
    <span>Register</span>
  </a>
  </div>
  <div>
  	<a class="button is-large" href="DisplayServlet2">
    <span class="icon is-medium">
      <i class="fas fa-registered"></i>
    </span>
    <span>Display All data</span>
  </a>
  </div>
  <div>
  <a class="button is-large" href="Login.jsp">
    <span class="icon is-medium">
      <i class="fas fa-sign-in-alt"></i>
    </span>
    <span>Login</span>
  </a>
  </div>
  </div>
</section>


</body>
</html>