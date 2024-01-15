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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<!-- <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
<script type="text/javascript">
    $(document).ready(function () {
        $('#table_id').dataTable();
    });
</script> -->


<script 
src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

<script 
src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
<script 
src="https://cdn.datatables.net/plug-ins/9dcbecd42ad/integration/jqueryui/dataTables.jqueryui.js">
</script>
<link rel="stylesheet" 
href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" 
href="https://cdn.datatables.net/plug-ins/9dcbecd42ad/integration/jqueryui/dataTables.jqueryui.css">

<script type="text/javascript">
    $(document).ready(function () {
        $('#table_id').dataTable({
           "pagingType": "full_numbers",
         });
    });
</script>
</head>
<body>
	<div class="container">
		<div class="row mt-5">
			<div class="col-md-9 mt-5 pull-right">
				<!-- <button class="btn btn-success"><a href="employees">check report</a></button> -->
				
				
			</div>
			<div class="col-md-3 pull-right">
			<button class="btn btn-success"><a href="student"class="text-light">student</a></button>
				<a href="logout"><i class="fa fa-sign-out fa-lg" style="font-size: 30px; aria-hidden="true"></i></a>
			
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<table id="table_id"
						class="table.display table table-striped table-bordered"
						style="width: 100%">
						<thead>
						   <tr>
							   <th>Id</th>
								<th>Name</th>
								<th>Department</th>
								<th>Address</th>
								<th>Mobile</th>
								<th>City</th>
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
                                 <td><a href="addemployee"><i class="fa fa-plus" aria-hidden="true"></i></a>
                                     <a><i class="fa fa-edit"></i></a>
                                     <a><i class="fa fa-trash"></i></a>
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
