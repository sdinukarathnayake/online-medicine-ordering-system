<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/deliveryManager/dm-delivery-note.css">
    <title>OMOS - Delivery Note</title>
</head>
<body>
    <jsp:include page="dm-header.jsp"></jsp:include>
    
    <main>
    	<h1 class="main-text">
        	Delivery Note Creation Page
    	</h1>
    	
    	<form action="createDN" method="post">
    	
    	<c:forEach var="order" items="${orderDetails}">
    			
		<table class="note-table">	    		
 	    	<tr>
	    		<td class="left-side">Delivery Note Date</td>
	    		<td><input type="text" name="noteDate"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Customer Name</td>
	    		<td><input type="text" name="cusName" value="${order.customerName}"></td>
	    	</tr>
	    	
 	    	<tr>
	    		<td class="left-side">Delivery Address</td>
	    		<td><input type="text" name="address" value="${order.address}"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Phone Number</td>
	    		<td><input type="text" name="phone" value="${order.phoneNumber}"></td>
	    	</tr>
	    	
 	    	<tr>
	    		<td class="left-side">Email</td>
	    		<td><input type="text" name="email" value="${order.email}"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Order Number</td>
	    		<td><input type="text" name="orderNo" value="${order.orderId}"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Area</td>
	    		<td><input type="text" name="area"></td>
	    	</tr>
      	
    	   <tr>
	    		<td class="left-side">Delivery Fee</td>
	    		<td><input type="text" name="deliveryFee"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Delivery Partner</td>
	    		<td><input type="text" name="deliveryPartner"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Tracking Number</td>
	    		<td><input type="text" name="tracking"></td>
	    	</tr>
	    
 	    	<tr>
	    		<td class="left-side">Delivery Note Status</td>
	    		<td><input type="text" name="status"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side"></td>
	    		<td><input type="submit" name="submit" value="Create Delivery Note"></td>
	    	</tr>
    	
    	</table>
    	
	</c:forEach>
	    	
    	</form>    	
    </main>

    <jsp:include page="dm-footer.jsp"></jsp:include>   
</body>
</html>