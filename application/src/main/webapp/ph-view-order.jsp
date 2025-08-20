<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
 <%@ page import = 'java.sql.Connection' %>
 <%@ page import = 'java.sql.DriverManager' %>
 <%@ page import = 'java.sql.Statement' %>
 <%@ page import = 'java.sql.ResultSet' %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/pharmacist/ph-create-order.css">
    <title>OMOS - Orders</title>
</head>
<body>
    <jsp:include page="ph-header.jsp"></jsp:include>
    
    	<h1 class="main-text">
        	View Order
    	</h1>
    	
    <br>
    
    <div class="order-section" >
    
      <form action="createOrder" method="post">
      
      <c:forEach var="orders" items="${orders}">
      
      		<input type="hidden" name="orderId" value="${orders.orderId}"/>
      
	        <div class="input-field">
	          <label for="UserName">User-Name:</label>
	          <input type="text" id="username" name="username" value="${orders.customerName}">
	
	          <label for="User-ID">User-Id:</label>
	          <input type="text" id="userid" name="userid" value="${orders.userName}" >
	        </div>
	
	        <div class="input-field">
	       	 <label for="Medication">Medication:</label>
	          <input type="text" id="medi" name="medi" value="${orders.medication}">
		
	       	 <label for="Dosage">Dosage:</label>
	          <input type="text" id="dose" name="dose" value="${orders.dosage}">
	        </div>
	
	        <div class="input-field">
	          <p>Instruction:</p>
	          <textarea id="review" name="instro" rows="5" cols="85">${orders.instructions}</textarea>         
	        </div>
	
	        <div class="order-form" >
	            
	            <input type="submit" value="Create Order"  name="submit" class="button">
	        </div>
	        
	        </c:forEach>
	  </form>
	  </div>

    <jsp:include page="ph-footer.jsp"></jsp:include>   
</body>
</html>