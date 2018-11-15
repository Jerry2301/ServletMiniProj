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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/evil-icons@1.9.0/assets/evil-icons.min.css">
</head>
<body>
<section class="hero is-light is-fullheight">
<div class="container column is-4 " >
 <section>
 
    <div class="container column is-8">
      <h1 class="title"> Register Now</h1>
     </div>
     <div class="column"> 
      <h2 class="subtitle">
        Enter your information to get started
      </h2>
    </div>
 </section>
<form action="RegistrationServlet" method="post">		<!-- Registration Form -->
	<div class="field">
  	<label class="label"> <i class="fas fa-list-ol"></i> Registration Number</label>
 	 <div class="control">
   		 <input class="input" type="text" placeholder="Enter your regno" name="rno"  required>
  	</div>
	</div>
	<div class="field">
  	<label class="label"><i class="fas fa-signature"></i> First Name</label>
 	 <div class="control">
   		 <input class="input " type="text" placeholder="Enter your First Name" name="fname" required>
  	</div>
	</div>
	<div class="field">
  	<label class="label"> <i class="fas fa-unlock"></i> Password</label>
 	 <div class="control">
   		 <input class="input " type="password" placeholder="Enter your password" name="pass" required>
  	</div>
	</div>
	<div class="field">
  	<label class="label"> <i class="fas fa-money-check"></i> Account Balance</label>
 	 <div class="control">
   		 <input class="input " type="text" placeholder="Enter your balance" name="bal" required>
  	</div>
	</div>
	<div class="field">
  	<label class="label"><i class="fas fa-envelope"></i> Email Address</label>
 	 <div class="control">
   		 <input class="input " type="email" placeholder="Enter your email address" name="email" required>
  	</div>
	</div>
	<div class="field">
  	<label class="label"><i class="fas fa-signature"></i> Last Name</label>
 	 <div class="control">
   		 <input class="input " type="text" placeholder="Enter your last name" name="lname" required>
  	</div>
	</div>
	<div class="control centerRegister">
  		<button class="button is-primary is-outlined">Register</button>
	</div>


</form>
</div>
</section>
</body>
</html>