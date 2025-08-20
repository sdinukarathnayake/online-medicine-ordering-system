<!-- R. U. Fernando -->
<!-- IT22177414 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/supportAgent/sa-support-ticket.css">
    <title>OMOS - Delivery Note</title>
</head>
<body>
    <jsp:include page="sa-header.jsp"></jsp:include>
    
    <main>
    	<h1 class="main-text">
        	Support Ticket Creation Page
    	</h1>
    	
    	<c:forEach var="ticket" items="${ticketDetails}">
    	
 <!------------ support ticket view ------------------>  
  				
		<table class="note-table">		
			<tr>
	    		<td class="left-side">Ticket ID</td>
	    		<td class="right-side">: ${ticket.ticketId}</td>
	    	</tr>	
	    	
 	    	<tr>
	    		<td class="left-side">Ticket Date</td>
	    		<td class="right-side">: ${ticket.ticketDate}</td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Customer Name</td>
	    		<td class="right-side">: ${ticket.customerName}</td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Subject</td>
	    		<td class="right-side">: ${ticket.subject}</td>
	    	</tr>
	    	
 	    	<tr>
	    		<td class="left-side">Message</td>
	    		<td class="right-side">: ${ticket.message}</td>
	    	</tr>  	
	    
 	    	<tr>
	    		<td class="left-side">Ticket Status</td>
	    		<td class="right-side">: ${ticket.status}</td>
	    	</tr>    	
    	</table>    	
		</c:forEach>
		
		<hr>
		
<!------------ reply form ------------------> 

		<form action="createReply" method="post">
    	
    	<c:forEach var="ticket" items="${ticketDetails}">
    			
		<table class="note-table">	    		
 	    	<tr>
	    		<td class="left-side">Ticket Date</td>
	    		<td><input type="text" name="replyDate"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Customer Name</td>
	    		<td><input type="text" name="cusName" value="${ticket.customerName}"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Ticket ID</td>
	    		<td><input type="text" name="ticketId" value="${ticket.ticketId}"></td>
	    	</tr>
	    	
 	    	<tr>
	    		<td class="left-side">Subject</td>
	    		<td><input type="text" name="subject" value="${ticket.subject}"></td>
	    	</tr>
	    	
 	    	<tr>
	    		<td class="left-side">Reply</td>
	    		<td><textarea rows="5" cols="30" name="reply"></textarea></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Agent Name</td>
	    		<td><input type="text" name="agent"></td>
	    	</tr>
	    
 	    	<tr>
	    		<td class="left-side">Reply Status</td>
	    		<td><input type="text" name="status"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side"></td>
	    		<td><input type="submit" name="submit" value="Create Reply" class="sub-btn"></td>
	    	</tr>
    	</table>
	</c:forEach>
    </form>

    </main>

    <jsp:include page="sa-footer.jsp"></jsp:include>   
</body>
</html>