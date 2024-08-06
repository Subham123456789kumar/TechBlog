<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register page</title>

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

	<%@include file="normal_navbar.jsp"%>



	<main class="primary-background p-5 banner-background"
		style="padding-bottom: 80px;">
		<div class="container">
			<div class="col-md-6 offset-md-3">
				<div class="card">


					<div class="card-header text-center primary-background text-white">


						<span class=""></span> <span class=" fa fa-user-circle fa-3x"></span>

						<br> Register here

					</div>

					<div class="card-body">
					
					
					
					
					
					
					
					
					<!-- Link to Register_Servlet -->
					
					
					
					
					


						<form  id="reg-form"  action="RegisterServlet" method="POST">

							<div class="form-group">
								<label for="user_name">User Name</label> 
								<input name="user_name"  type="text"
									class="form-control" id="user_name"
									aria-describedby="emailHelp" placeholder="Enter Name ">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>



							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> 
								<input name="user_email"
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> 
								<input name="user_password"
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password">
							</div>




							<div class="form-group">
								<label for="gender">Select Gender</label> <br> <input
									type="radio" id="gender" name="gender" value="male">Male <input
									type="radio" id="gender" name="gender" value="female">Female

							</div>


							<div class="form-group">
								<textarea name="about" class="form-control"  rows="5"
									placeholder="Enter something about your self "></textarea>

							</div>







							<div class="form-check">
								<input name="check" type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">agree term and conditions</label>
							</div>

							<br>
							<div class="container text-center" id="loader" style="display:none;">
							
							<span  class="fa fa-refresh	
							fa-spin fa-3x"></span>
							
							<h3>please wait...</h3>
							</div>
							<button id="submit-btn" type="submit" class="btn btn-primary">submit</button>
							
							
						</form>



					</div>

					<div class="card-footer"></div>

				</div>



			</div>

		</div>
	</main>









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
	
	
	
	
	
	
	<!-- use sweet alert link -->
	
	
	<script  src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
	


         <!--ajax based implement-->
         
         
         
         
         
         
         
         
                            <!--    <script>
          
                                   
                                  
                               $(document).ready(function () {
                                    let editStatus = false;
                                    $('#edit-profile-button').click(function ()
                                    {
                                        if (editStatus == false)
                                        {
                                            $("#profile-details").hide()
                                            $("#profile-edit").show();
                                            editStatus = true;
                                            $(this).text("Back")
                                        } else
                                        {
                                            $("#profile-details").show()
                                            $("#profile-edit").hide();
                                            editStatus = false;
                                            $(this).text("Edit")
                                        }
                                    })
                                });
                               </script>
                                
                                --> 
                                
                                
                                
                                
      
                               <!--now add post js-->
                                <script>
                                    $(document).ready(function () {
                                    	console.log("loaded.......")
                                        //
                                       $("#reg-form").on('submit', function (event) {
                                            //this code gets called when form is submitted....
                                            event.preventDefault();
                                            //console.log("you have clicked on submit..")
                                            let form = new FormData(this);
                                            
                                            $("#sumbit-btn").hide();
                                            $("#loader").show();
                                            
                                            
                                            //now requesting to server
                                            $.ajax({
                                                url: "RegisterServlet",
                                                type: 'POST',
                                                data: form,
                                                success: function (data, textStatus, jqXHR) {
                                                    //success ..
                                                    console.log(data);
                                                    
                                                    
                                                    $("#sumbit-btn").show();
                                                    $("#loader").hide();
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
               
                                                    if (data.trim() == 'done')
                                                    {
                                                     swal("Good job!", "saved successfully", "success");
                                                     
                                                     
                                                     swal("register successfully...we are redirecting to logine page")
                                                     .then((value) => {
                                                     	window.location="login_page.jsp"
                                                     });
                                                     
                                                          
   
                                                     
                                                     
                                                    } else
                                                    {
                                                      swal(data);
                                                    	// swal("Error!!", "Something went wrong try again...", "error");
                                                    }
                                                },
                                                error: function (jqXHR, textStatus, errorThrown) {
                                                    //error..
                                                   
                                                    
                                                    
                                                    
                                                    $("#sumbit-btn").show();
                                                    $("#loader").hide();
                                                
                                                    swal("Error!!", "Something went wrong try again...", "error");
                                               
                                                    
                                                   // console.log(jqXHR)
                                                    
                                                   // $("#sumbit-btn").hide();
                                                   // $("#loader").show();
                                                
                                                
                                                },
                                                
                                                processData: false,
                                                contentType: false
                                            })
                                        })
                                    })
                                </script>

                                
                                
                                
                                
                                
                                
                                




</body>
</html>