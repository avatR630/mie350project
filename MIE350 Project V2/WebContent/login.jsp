<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>NeXtmeal - Login</title>
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
<!-- <link rel="stylesheet" -->
<!-- 	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" type="text/css" href="css/mystyle2.css">


</head>
<body>

	
<header class="intro-login">
<%@ include file="navbar.jsp"%>
	<div class="container-fluid text-center">
		<div class="row content">
				<div class="col-sm-8 text-left" style="width:100%;">
				<h1 style="font-size: 88px;">Login</h1>
				
				<form action="LoginController">
				<p style="font-size: 28px;">Username:</p>
				<input type="text" name="un" style="font-size: 34px; margin-left:inherit; width:30%" />
				<br>
				<p style="font-size: 28px;">Password: </p>
				<input	type="password" name="pw" style="font-size: 25px; margin-left:inherit; width: 30%"/>
				<br>
				<input type="submit" 
						class="btn btn-info" value="Submit" style="background-color: #a94442; border-color: rgba(0,0,0,.0001); ">
				</form>
				
				
				<br/> 
				<p style="font-size:14px";>For demonstration purposes, please use the following
				credentials:
				<br>
					Username: admin (or admin2, admin3, admin4, admin5)
				<br>
					Password: password</li>
				</p>				
			</div>
		</div>
	</div>
</header>

	<%@ include file="footer.jsp"%>

</body>
</html>