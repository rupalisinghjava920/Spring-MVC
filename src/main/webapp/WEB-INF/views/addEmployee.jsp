<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="jquery-3.7.1.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			
			<div class="col-md-12">
				<section class="vh-100" style="background-color: ;">
					<div class="container py-5 h-100">
						<div
							class="row d-flex justify-content-center align-items-center h-100">
							<div class="col col-xl-10">
								<div class="card" style="border-radius: 1rem;">
									<div class="row g-0">
										<div class="col-md-6 col-lg-5 d-none d-md-block">
											<img
												src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
												alt="login form" class="img-fluid"
												style="border-radius: 1rem 0 0 1rem;" />
										</div>
										<div class="col-md-6 col-lg-7 d-flex align-items-center">
											<div class="card-body p-4 p-lg-5 text-black">

												<form action="addEmployee" method="POST">

													<div class="d-flex align-items-center mb-3 pb-1">
														<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
														<span class="h1 fw-bold mb-0">Add Employee</span>
													</div>

													

													<div class="form-outline mb-4">
														<input type="text" name="empName" id="empName"
															class="form-control form-control-lg" />
													<label class="form-label" for="empName"> Employee Name</label>
													</div>

													<div class="form-outline mb-4">
														<input type="text" name="department" id="department"
															class="form-control form-control-lg" /> <label
															class="form-label" for="department">Department</label>
													</div>
													
													<div class="form-outline mb-4">
														<input type="text" name="address" id="address"
															class="form-control form-control-lg" /> <label
															class="form-label" for="address">Address</label>
													</div>
													
													<div class="form-outline mb-4">
														<input type="text" name="mobileNo" id="mobileNo"
															class="form-control form-control-lg" /> <label
															class="form-label" for="mobileNo">Mobile No</label>
													</div>
													<div class="form-outline mb-4">
														<input type="text" name="city" id="city"
															class="form-control form-control-lg" /> <label
															class="form-label" for="city">City</label>
													</div>

													<div class="pt-1 mb-4">
														<button  class="btn btn-dark btn-lg btn-block"
															type="submit">Add Employee</button>
													</div>

													<a class="small text-muted" href="#!">Forgot password?</a>
													<p class="mb-5 pb-lg-2" style="color: #393f81;">
														Don't have an account? <a href="login"
															style="color: #393f81;">Login here</a>
													</p>
													<a href="#!" class="small text-muted">Terms of use.</a> <a
														href="#!" class="small text-muted">Privacy policy</a>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				</section>
			</div>
			<script>
				
			</script>
			
			<!-- Section: Design Block -->
		</div>
	</div>
	</div>


</body>
</html>