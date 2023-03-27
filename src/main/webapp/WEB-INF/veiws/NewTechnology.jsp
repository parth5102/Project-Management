<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<jsp:include page="AllHeader.jsp"></jsp:include>
</head>
<body>
<jsp:include page="AdminSideBar.jsp"></jsp:include>

 <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
           <div class="col-lg-2"></div>
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">


              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Add New Technology Name</h5>
                  </div>

                  <form class="row g-3 needs-validation" novalidate action="savetechnology" method="post">

                    
                    <div class="col-12">
                      <label for="technology" class="form-label">Technology Name</label>
                      <input type="text" name="technologyName" class="form-control" id="technology" required>
                      <div class="invalid-feedback">Please enter Technology Name!</div>
                    </div>

                    
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Add Technology</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0"><a href="listtechnology">List Technology</a></p>
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
  <jsp:include page="AllJs.jsp"></jsp:include>
	
</body>
</html>
<!-- <form action="savetechnology" method="post">

		TechnologyName : <input type="text" name="technologyName"/>
		<br><br>
		<input type="submit" value ="Add Technology">
		<br>
		<br>
</form>
	<a href="listtechnology">List Technology</a>
 -->
