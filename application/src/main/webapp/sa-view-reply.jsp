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
    <link rel="stylesheet" href="CSS/supportAgent/sa-view-reply.css">
    <title>OMOS - Support Ticket Reply View</title>
</head>
<body>
    <jsp:include page="sa-header.jsp"></jsp:include>
    
    <main>
    	<h1 class="main-text">
        	Support Ticket Reply View Page
    	</h1>
    	   	
    	<c:forEach var="reply" items="${replyDetails}">
    			
		<table class="note-table">		
			<tr>
	    		<td class="left-side">Reply ID</td>
	    		<td class="right-side">: ${reply.replyId}</td>
	    	</tr>	
	    	
 	    	<tr>
	    		<td class="left-side">Reply Date</td>
	    		<td class="right-side">: ${reply.date}</td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Customer Name</td>
	    		<td class="right-side">: ${reply.customerName}</td>
	    	</tr>
	    	
 	    	<tr>
	    		<td class="left-side">Subject</td>
	    		<td class="right-side">: ${reply.subject}</td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Reply Message</td>
	    		<td class="right-side">: ${reply.reply}</td>
	    	</tr>
	    	
 	    	<tr>
	    		<td class="left-side">Reply Status</td>
	    		<td class="right-side">: ${reply.status}</td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Ticket Id</td>
	    		<td class="right-side">: ${reply.ticketId}</td>
	    	</tr>
	    	
	    	<tr>
	    		<td class="left-side">Agent Name</td>
	    		<td class="right-side">: ${reply.agentName}</td>
	    	</tr>
      	
    	 </table>    	
		</c:forEach>	    	
    </main>

    <jsp:include page="sa-footer.jsp"></jsp:include>   
</body>
</html>