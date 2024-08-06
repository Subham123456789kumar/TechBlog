<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- sql connection -->

<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jsp page</title>

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

	<!-- Nav bar -->

	<%@include file="normal_navbar.jsp"%>




	<!-- banner -->





	<div class="container-fluid p-0 m-0">


		<div class="jumbotron primary-background text-white banner-background">
			<div class="container">
				<h3 class="display-3">Welcome to TechBlog</h3>
				<p>A programming language is a system of notation for writing
					computer programs.[1] Most programming languages are text-based
					formal languages, but they may also be graphical. They are a kind
					of computer language. The description of a programming language is
					usually split into the two components of syntax (form) and
					semantics (meaning), which are usually defined by a formal
					language. Some languages are defined by a specification document
					(for example, the C programming language is specified by an ISO
					Standard) while other languages (such as Perl) have a dominant
					implementation that is treated as a reference. Some languages have
					both, with the basic language defined by a standard and extensions
					taken from the dominant implementation being common.</p>

				<button class="btn btn-outline-light btn-lg">
					<span class="fa fa-external-link"></span>Start ! its free
				</button>
				<a href="login_page.jsp" class="btn btn-outline-light btn-lg"> <span
					class=" fa fa-user-circle fa-spin"></span>Login
				</a>


			</div>

		</div>



	</div>



	<br>


	<!-- card -->


	<div class="container">
		<div class=row style="margin-bottom: 4px;">
			<div class="col-md-4">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Java programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>


			</div>


			<div class="col-md-4">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Java programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>


			</div>

			<div class="col-md-4">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Java programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>


			</div>

		</div>

		<div class=row>
			<div class="col-md-4">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Java programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>


			</div>


			<div class="col-md-4">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Java programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>


			</div>

			<div class="col-md-4">

				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Java programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn primary-background text-white">Read
							more</a>
					</div>
				</div>


			</div>

		</div>



	</div>






	<!-- jquery -->

	<script src="https://code.jquery.com/jquery-3.7.0.min.js"
		integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
		crossorigin="anonymous"></script>

	<!-- java script -->

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>


	<!--  javascript link -->

	<script type="text/javascript" src="js/myjs.js"></script>



	<script>
		
	</script>



</body>
</html>