<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<mvc:resources mapping="/resources/**" location="/resources/" />
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Visitor Management</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
<!--===============================================================================================-->
</head>
<body style="max-width:100%">
<nav>
	<div id="myHeader">
		<ul>
		<ul>
						<li class="has-dropdown">
							<ul class="dropdown">
								<li><a class="active" href="/visitor">Visitor Management</a></li>
							</ul>
						</li>
						<li><a href="/reg_visitor">Register</a></li>
					</ul>
		</ul>
		<div class="vl"></div>
	</div>

</nav>
<s:url var="reg_visit" value="/reg_visitor"></s:url>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
				<button class="button button1" onclick="parent.location='${reg_visit }'">Add New Visitor</button>
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">ID</th>
								<th class="column2">First name</th>
								<th class="column3">Last name</th>
								<th class="column4">Email</th>
								<th class="column5">Company</th>
								<th class="column6">Phone no</th>
								<th class="column4">Address</th>
								<th class="column4">Status</th>
								<th class="column4">Action</th>
							</tr>
						</thead>
						<c:forEach var="u" items="${v_list }">
								<tr>
									<td class="column1">${u.vid}</td>
									<td class="column2">${u.v_firstname}</td>
									<td class="column3">${u.v_lastname}</td>
									<td class="column4">${u.v_email}</td>
									<td class="column5">${u.v_company}</td>
									<td class="column6">${u.v_phone}</td>
									<td class="column4">${u.v_address}</td>
									<td class="column4">${u.status}</td>
									<s:url var="url_del" value="/visitor/del_visitor/${u.vid }">
						</s:url>
						<s:url var="url_edit" value="/visitor/edit_visitor">
							<s:param name="vid" value="${u.vid }"></s:param>
						</s:url>
						<td><a href="${url_edit }">EDIT</a>|<a href="${url_del }">DELETE</a> </td>
								</tr>

					</c:forEach>
					</table>

				</div>
			</div>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
