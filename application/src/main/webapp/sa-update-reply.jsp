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
    <link rel="stylesheet" href="CSS/supportAgent/sa-update-reply.css">
    <title>OMOS - Delivery Note</title>
</head>
<body>
    <jsp:include page="sa-header.jsp"></jsp:include>

    <main>
    	<h1 class="main-text">
        	Support Ticket Reply Edit Page
    	</h1>
    	
    	<form action="updateReply" method="post">
    	
    	<c:forEach var="reply" items="${replyDetails}">
    	    			
		<table class="reply-table">	    		
    	
	    	<tr>
	    		<td class="left-side">Reply ID</td>
	    		<td class="right-side"><input type="text" name="replyId" value="${reply.replyId}"></td>
	    	</tr>	
	    	
 	    	<tr>
	    		<td class="left-side">Reply Date</td>
	    		<td class="right-side"><input type="text" name="replyDate" value="${reply.date}"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Customer Name</td>
	    		<td class="right-side"><input type="text" name="cusName" value="${reply.customerName}"></td>
	    	</tr>
	    	
 	    	<tr>
	    		<td class="left-side">Subject</td>
	    		<td class="right-side"><input type="text" name="subject" value="${reply.subject}"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Reply Message</td>
	    		<td class="right-side"><textarea rows="3" cols="80" name="reply">${reply.reply}</textarea></td>
	    	</tr>
	    	
 	    	<tr>
	    		<td class="left-side">Reply Status</td>
	    		<td class="right-side"><input type="text" name="status" value="${reply.status}"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Ticket Id</td>
	    		<td class="right-side"><input type="text" name="ticketId" value="${reply.ticketId}"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Agent Name</td>
	    		<td class="right-side"><input type="text" name="agent" value="${reply.agentName}"></td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side"></td>
	    		<td><input type="submit" name="submit" value="Update Reply"></td>
	    	</tr>
    	
    	</table>
    	
		</c:forEach>
	    	
    	</form>    	
    </main>

    <jsp:include page="sa-footer.jsp"></jsp:include>   
</body>
</html>