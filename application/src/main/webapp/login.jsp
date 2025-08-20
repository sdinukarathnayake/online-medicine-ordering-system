<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/login.css">
    <title>OMOS - Login</title>
</head>
<body>
   <jsp:include page="g-header.jsp"></jsp:include>
  
    <h2 class="main-text">Select your profile category</h2>

	<table class="login-area">
	<tr>
		<td>
			<div class="box">
				<h3>Customer</h3>
				<img class="user-image" src="	ROOT/user.png">
				<a class="login-btn" href="ru-login.jsp">Login</a>
			</div>			
		</td>

		<td>
			<div class="box">
			<h3>Pharmasict</h3>
    		<img class="user-image" src="	ROOT/user.png">
    		<a class="login-btn" href="ph-login.jsp">Login</a>
			</div>
		</td>

		<td>
			<div class="box">
			<h3>Delivery Manager</h3>
    		<img class="user-image" src="	ROOT/user.png">
    		<a class="login-btn" href="dm-login.jsp">Login</a>
		</div>
		</td>		

		<td>
			<div class="box">
			<h3>Support Agent</h3>
    		<img class="user-image" src="	ROOT/user.png">
    		<a class="login-btn" href="sa-login.jsp">Login</a>
		</div>
		</td>
		
		<td>
			<div class="box">
			<h3>Admin</h3>
    		<img class="user-image" src="	ROOT/user.png">
    		<a class="login-btn" href="">Login</a>
		</div>
		</td>
		</tr>
	</table>
    
    <jsp:include page="g-footer.jsp"></jsp:include>
</body>
</html>