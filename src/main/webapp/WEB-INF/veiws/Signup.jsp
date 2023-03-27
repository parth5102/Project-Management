<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="AllHeader.jsp"></jsp:include>
<style type="text/css">
	.error{
		color: red;
	}

</style>
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.html" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">NiceA</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
                    <p class="text-center small">Enter your personal details to create account</p>
                  </div>

                  <form class="row g-3" action="saveuser" method="post" id="myform">
                    <div class="col-12">
                      <label for="firstName" class="form-label">First Name</label>
                      <input type="text" name="firstName" class="form-control" id="firstName" >
                      <span id="firstNameError" class="error"></span>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourName" class="form-label">Last Name</label>
                      <input type="text" name="lastName" class="form-control" id="lastName" >
                      <span id="lastNameError" class="error"></span>
                      
                    </div>

                    <div class="col-12">
                      <label for="yourEmail" class="form-label">Your Email</label>
                      <input type="email" name="email" class="form-control" id="email">
                      <span id="emailError" class="error"></span>
                      <div style="color: red">${error}</div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password" name="password" class="form-control" id="password" >
                      <span id="passwordError" class="error"></span>
                    </div>
                    
                      <div class="col-12">
                      <label for="yourPassword" class="form-label">Re-Enter Password</label>
                      <input type="password" name="conPassword" class="form-control" id="conPassword" >
                      <span id="conPasswordError" class="error"></span>
                    </div>

                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="button" onclick="validation()">Create Account</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Already have an account? <a href="login">Log in</a></p>
                    </div>
                  </form>

                </div>
              </div>

            

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  
  <script type="text/javascript">
  
  function validation(){
	  
	isError = false;
	firstName = document.getElementById("firstName");
	firstNameError = document.getElementById("firstNameError");
	firstNameRegex = /^[a-zA-Z]+$/;
	
	lastName = document.getElementById("lastName");
	lastNameError = document.getElementById("lastNameError");
	lastNameRegex = /^[a-zA-Z]+$/;
	
	email = document.getElementById("email");
	emailError = document.getElementById("emailError");
	emailRegex = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-]{2,3}$/;
	
	password = document.getElementById("password");
	passwordError = document.getElementById("passwordError");
	passwordRegex = /^[a-zA-Z0-9]+$/;
	
	conPassword = document.getElementById("conPassword");
	conPasswordError = document.getElementById("conPasswordError");
	
	if (firstName.value == '') {
        firstNameError.innerHTML = "Please Enter First Name "
        isError = true;
    } else {
        if (firstNameRegex.test(firstName.value) == false) {
            firstNameError.innerHTML = "Please Enter Valid First Name";
            isError = true;
            
        } else {
            firstNameError.innerHTML = "";

        }
    }
	
	if (lastName.value == '') {
        lastNameError.innerHTML = "Please Enter Last Name"
        	isError = true;
    } else {
        if (lastNameRegex.test(lastName.value) == false) {
            lastNameError.innerHTML = "Please Enter Valid Last Name";
            isError = true;
            
        } else {
            lastNameError.innerHTML = "";

        }
    }
	
	 if (email.value == '') {
         emailError.innerHTML = "Please Enter Email"
        	 isError = true;
	 } else {
         if (emailRegex.test(email.value) == false) {
             emailError.innerHTML = "Please Enter Valid Email"
            	 isError = true;
         } else {
             emailError.innerHTML = ""
         }
     }
	 
	 if (password.value == '') {
         passwordError.innerHTML = "Please Enter password"
        	 isError = true;
     } else {
         if (passwordRegex.test(password.value) == false) {
             passwordError.innerHTML = "Please Enter Valid Password"
            	 isError = true;
         } else {
             passwordError.innerHTML = ""
         }
     }
	 
	 if (conPassword.value == '') {
         conPasswordError.innerHTML = "Please Enter Confirm Password"
        	 isError = true;
	 } else {
         if (conPassword.value != password.value) {
             conPasswordError.innerHTML = "Please Re-Enter Confirm Password"
            	 isError = true;
         } else {
             conPasswordError.innerHTML = ""
         }
     }
	
			if(isError==false){
				myform = document.getElementById("myform");
				myform.submit();
			}
			
  }
  
  
  
  </script>
  
  

</body>

</html>