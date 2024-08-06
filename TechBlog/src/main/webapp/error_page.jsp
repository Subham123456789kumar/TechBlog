<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <!-- error page -->
  <%@page isErrorPage="true" %>
  
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sorry something went worng</title>


<!-- css  include bootstrap-->

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<!-- my style sheet css link -->

<link rel="stylesheet" href="css/mystyle.css">

<!-- font css -->


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<!-- clip path -->

<style>
.banner-background {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 88%, 56% 100%, 17% 92%, 0 100%, 0 0
		);
}
</style>


</head>
<body>

<div class="container text-center">

<img alt="error" src="img/error.png" class="img-fluid">
<h3 class="display-3">Sorry ! something went wrong....</h3>


<%= exception %>


<a href="Index.jsp" class="btn primary-background btn-lg text-white mt-3">Home</a>
</div>























</body>
</html>