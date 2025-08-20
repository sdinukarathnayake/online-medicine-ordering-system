<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/deliveryManager/dm-view-dn.css">
    <title>OMOS - Delivery Note</title>
</head>
<body>
    <jsp:include page="dm-header.jsp"></jsp:include>
    
    <main>
    	<h1 class="main-text">
        	Delivery Note Creation Page
    	</h1>
    	   	
    	<c:forEach var="note" items="${noteDetails}">
    	
    	<form action="updateDN" method="post">
    	
		<table class="note-table">		
			<tr>
	    		<td class="left-side">Delivery ID</td>
	    		<td class="right-side"><input type="text" name="noteId" value="${note.deliveryNoteNo}"/></td>
	    	</tr>	
	    	
 	    	<tr>
	    		<td class="left-side">Delivery Note Date</td>
	    		<td class="right-side"><input type="text" name="noteDate" value="${note.deliveryNoteDate}"/></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Customer Name</td>
	    		<td class="right-side"><input type="text" name="cusName" value="${note.customerName}"/></td>
	    	</tr>
	    	
 	    	<tr>
	    		<td class="left-side">Delivery Address</td>
	    		<td class="right-side"><input type="text" name="address" value="${note.deliveryAddress}"/></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Phone Number</td>
	    		<td class="right-side"><input type="text" name="phone" value="${note.phoneNumber}"/></td>
	    	</tr>
	    	
 	    	<tr>
	    		<td class="left-side">Email</td>
	    		<td class="right-side"><input type="text" name="email" value="${note.email}"/></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Order Number</td>
	    		<td class="right-side"><input type="text" name="orderNo" value="${note.orderNo}"/></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Area</td>
	    		<td class="right-side"><input type="text" name="area" value="${note.area}"/></td>
	    	</tr>
      	
    	   <tr>
	    		<td class="left-side">Delivery Fee</td>
	    		<td class="right-side"><input type="text" name="deliveryFee" value="${note.deliveryFee}"/></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Delivery Partner</td>
	    		<td class="right-side"><input type="text" name="deliveryPartner" value="${note.deliveryPartner}"/></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Tracking Number</td>
	    		<td class="right-side"><input type="text" name="tracking" value="${note.trackingNumber}"/></td>
	    	</tr>
	    
 	    	<tr>
	    		<td class="left-side">Delivery Note Status</td>
	    		<td class="right-side"><input type="text" name="status" value="${note.deliveryNoteStatus}"/></td>
	    	</tr>    	
	    	
	    	<tr>
	    		<td class="left-side"></td>
	    		<td class="right-side"><input type="submit" name="submit" value="Update Delivery Note"></td>
	    	</tr>
    	</table>    
    	</form>	
		</c:forEach>	    	
    </main>

    <jsp:include page="dm-footer.jsp"></jsp:include>   
</body>
</html>