<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="com.mie.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<!-- Check to see if the user is logged in. Otherwise, redirect back to the login page.-->
<%
	session = request.getSession();
	System.out.println(session);
	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
%>

<head>
<title>NeXtmeal Owners Home Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Date Picker Javascript -->
<!-- https://jqueryui.com/datepicker/ -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" type="text/css" href="css/mystyle2.css">
</head>
<body>

	<%@ include file="navbar_loggedin.jsp"%>

	<%
		Member member = (Member) session.getAttribute("currentSessionUser");

		String username = (String) session.getAttribute("username");
		String firstname = (String) session.getAttribute("firstname");
		String lastname = (String) session.getAttribute("lastname");
	%>
	
	
<header class="intro-loggedInHome">
	<div class="container-fluid text-center">
	
		<div class="row content">
<%-- 		<%@ include file="sidebar_loggedin.jsp"%> --%>
			<div class="col-sm-8 text-left">

				<h1 style="color:black; font-size: 45px;">
					Welcome back, <%=firstname%>. </h1>
					
				<p style="color:black;"> You are now logged in with administrative privileges.</p>

				<h3 style="color:black;">Feel free to</h3>
				<ul style="color:black;">
					<li><b>Add</b> items to a current menu</li>
					<li><b>Delete</b> items from a menu</li>
					<li><b>Modify</b> menu item information</li>
				</ul>
				<input type="button" 
						class="btn btn-info" value="Account Settings" style="font-size: 18px;" >
						<br>
						<br>
				<input type="button" 
						class="btn btn-info" value="My Menu" style="font-size: 18px;" >
				
<br>
<br>
<br>
<br>
<br>
<br>


			</div>
			<div class="col-sm-2 sidenav">
				<!-- You can put right sidebar links here if you want to. -->
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>

</header>

</body>
</html>