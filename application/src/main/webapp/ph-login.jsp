<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/ph-login.css">
</head>
<body>
	<jsp:include page="g-header.jsp"></jsp:include>

    <main>
    	<h1 class="main-text">
        	Pharmacist Login Screen
    	</h1>

		<form action="ph-dashboard.jsp" method="post"  class="login-form">
			<table>
				<tr class="row">
					<td style="width: 35%;">User Name </td>
					<td style="width: 100%;"><input type="text" name="uid"> </td>
				</tr>

				<tr class="row">
					<td>Password </td>
					<td><input type="text" name="pass"> </td>
				</tr>
			</table>			
			<input type="submit" value="Login" name="submit" class="sub-btn">
		</form>
	</main>

	<jsp:include page="g-footer.jsp"></jsp:include>

</body>
</html>