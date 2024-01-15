<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome To Dashboard</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link
	href="https://cdn.datatables.net/v/dt/dt-1.13.8/datatables.min.css"
	rel="stylesheet">

<script
	src="https://cdn.datatables.net/v/dt/dt-1.13.8/datatables.min.js"></script>

<script>
	new DataTable('table.display');
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<a href="logout">logout</a>
				<a href="dashboard">dashboard</a>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<table id=""
						class="table.display table table-striped table-bordered"
						style="width: 100%">
						<thead>
						   <tr>
							   <th>id</th>
								<th>Name</th>
								<th>department</th>
								<th>address</th>
								<th>mobile</th>
								<th>city</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
				
						 <c:forEach items="${employeelist }" var="employee">                          
                             <tr>
                                 <th scope="row">${employee.id }</th>
                                 <td>${employee.empName}</td>
                                 <td>${employee.department}</td>
                                 <td>${employee.address}</td>
                                 <td>${employee.mobileNo}</td>
                                 <td>${employee.city}</td>
                                 <td><a href="addemployee">Add Employee</a>
                                     <a>Edit</a>
                                     <a>Delete</a>
                                 </td>
                            </tr>
                           </c:forEach>
						</tbody>
					
					</table>
				</div>
				<div class="col-md-1"></div>
			</div>
		</div>
	</div>
</body>
</html>
