


<%@page import="com.tech.blog.entities.User"%>

<%@page errorPage="error_page.jsp"%>
<%

User user=(User)session.getAttribute("currentUser");
if(user==null)
{
	response.sendRedirect("login_page.jsp");
	
}


%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


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
<!-- navbar -->



<nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <a class="navbar-brand" href="Index.jsp"> <span class="fa fa-asterisk"></span>  Tech Blog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="fa fa-bell-o"></span>LearnCode with Subham <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <span class="fa fa-check-square-o"></span>  Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Programming Language</a>
          <a class="dropdown-item" href="#">Project Implemention</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Data Structure</a>
        </div>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#"><span class="fa fa-address-book-o"></span>Contact</a>
      </li>
      
      
      
      
      
    </ul>
    
    
    
      
     <ul class="navbar-nav mr-right">
     
     
     
      <li class="nav-item">
     
    <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle"></span><%=user.getName() %></a>
     
    </li>
     
     
     
     
     <li class="nav-item">
     
    <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-plus"></span>Log out</a>
     
    </li>
     
     
     
     </ul>
   
  </div>
</nav>

<!-- end navbar -->


<!-- Start profile model -->




<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white text-center">
        <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <div class="container text-center">
      
      
      
      
      
      
      <!-- profile detail -->
      
      
      
      
      
      <img src=" pick/<%=user.getProfile() %>" class="img-fluid" style="border-radius:50%;max-width:100px;">
      
            <h5 class="modal-title" id="exampleModalLabel"><%=user.getName() %></h5>
      
      
      
      <!-- user detail -->
      
      <div id="profile-details">
      
      <table class="table">
  
  <tbody>
    <tr>
      <th scope="row">id</th>
      <td><%=user.getId()%></td>
     
    </tr>
    <tr>
      <th scope="row">Email:</th>
      <td><%=user.getEmail()%></td>
      
    </tr>
    
    
        <tr>
      <th scope="row">Gender:</th>
      
      <td><%=user.getGender()%></td>
      
    </tr>
    
    
    
    
      <tr>
      <th scope="row">Status:</th>
      
      <td><%=user.getAbout()%></td>
      
    </tr>
    
        
    
    <tr>
      <th scope="row">Register on:</th>
      
      <td><%=user.getDateTime().toString()%></td>
      
    </tr>
    
    
    
    
    
    
    
  </tbody>
</table>
            
            
  </div> 
  
  
  
  <!-- profile edit -->
  
  
  
  
  
  <div id="profile-edit" style="display: none">
  
  <h3> please Edit carefully</h3>
  
  <form action="EditServlet"   method="post"   enctype="multipart/form-data">
  

  
  
  
  <table class="table">
  
  <tr>
  <td>ID :</td>
  <td><%=user.getId()%></td>
  </tr>
  
  
  
  <tr>
  <td>Email :</td>
  <td><input type="email" class="form-control" name="user_email" value="<%=user.getEmail() %>"></td>
  </tr>
  
  
  
  
  
  <tr>
  <td>Name :</td>
  <td><input type="text" class="form-control" name="user_name" value="<%=user.getName() %>"></td>
  </tr>
  
  
    
  
  <tr>
  <td>Password :</td>
  <td><input type="Password" class="form-control" name="user_password" value="<%=user.getPassword() %>"></td>
  </tr>
  
    
  <tr>
  <td>Gender:</td>
  <td><%=user.getGender().toUpperCase()%></td>
  </tr>
  
  
  
  
  <tr>
  <td>About :</td>
  <td>
  <textarea rows="3" cols="" class="form-control" name="user_about"><%=user.getAbout() %></textarea>
  </td>
  </tr>
  
  
   <tr>
  <td>profile pic:</td>
  <td>
  <input type="file" name="image" class="form-control">
  
  </td>
  </tr>
  
  
   
  
  
  
  </table>
  
  
  
  
  
  
  <div class="container">


<button type="submit" class="btn btn-outline-primary">Save</button>  
 
 
  </div>
  
  </form>
  
  
  </div>
  
  
  
  
      
      
      </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="edit-profile-button" type="button" class="btn btn-primary">Edit</button>
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

$(document).ready(function()
		
		{
	
	
	
	let editStatus=false;
	
	
$('#edit-profile-button').click(function()
		{
	
	
	if(editStatus==false)
		{
		
		$('#profile-details').hide()
		$('#profile-edit').show();
		
		editStatus=true;
		$(this).text("Back")
		
		}
	else
		{
		
		$('#profile-details').show()
		$('#profile-edit').hide();
		
		editStatus=false;
		$(this).text("Edit")

		
		
		}
	
		})	
	
	
		});

</script>







</body>
</html>