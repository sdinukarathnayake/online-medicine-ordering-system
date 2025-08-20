<!-- R. U. Fernando -->
<!-- IT22177414 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ page import = 'java.sql.Connection' %>
 <%@ page import = 'java.sql.DriverManager' %>
 <%@ page import = 'java.sql.Statement' %>
 <%@ page import = 'java.sql.ResultSet' %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/supportAgent/sa-dashboard.css">
    <title>OMOS - Support Agent Dashboard</title>
</head>
<body>
    <jsp:include page="sa-header.jsp"></jsp:include>
    
    <main>
    	<h1 class="main-text">
        	Support Agent Dashboard
    	</h1>
    	
    	<h2 class="sub-text">
        	Support Ticket Summary
    	</h2>
    	
    	<table border = "1" class="ticket-table">
    		<tr>
    			<th style="width: 10%;">Ticket Id</th>
    			<th style="width: 15%;">Ticket Date</th>
    			<th style="width: 25%;">Customer Name</th>
    			<th style="width: 30%;">Subject</th>
    			<th style="width: 20%;">Actions</th>
    		</tr>
    	
    	<%
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omos", "root", "Pw123");
    		Statement stmt = con.createStatement();
    		
    		String sql = "select * from tickets";
    		ResultSet rs = stmt.executeQuery(sql);

    		while(rs.next()){
    		%>    	
    			<tr>
    				<td style="text-align: center;"><%=rs.getInt("TicketId") %></td>
    				<td style="text-align: center;"><%=rs.getString("TicketDate") %></td>
    				<td><%=rs.getString("CustomerName") %></td>
    				<td><%=rs.getString("Subject") %></td>
    				<td>
    					<form action="saViewTicket" method="post">
    						<input type="hidden" name="ticketID" value="<%=rs.getInt("TicketId") %>"/>
				 			<input type="submit" value= "Create Reply" class="create-button" /> 	
    					</form>
    				</td>
    			</tr>
    	<%
    		}
    	}
    	
    	catch (Exception e){
    		e.printStackTrace(); 
    	}
    	%>
    	</table>
    	
    	
    	<h2 class="sub-text">
        	Support Ticket Reply Summary
    	</h2>
    	
    	<table border = "1" class="reply-table">
    		<tr>
    			<th style="width: 7%;">Reply Id</th>
    			<th style="width: 10%;">Reply Date</th>
    			<th style="width: 15%;">Customer Name</th>   			
    			<th style="width: 25%;">Reply</th>
    			<th style="width: 10%;">Status</th>
    			<th style="width: 33%;">Actions</th>
    		</tr>
    	
    	<%
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omos", "root", "Pw123");
    		Statement stmt = con.createStatement();
    		
    		String sql = "select * from reply";
    		ResultSet rs = stmt.executeQuery(sql);

    		while(rs.next()){
    		%>    	
    			<tr>
    				<td style="text-align: center;"><%=rs.getInt("ReplyId") %></td>
    				<td style="text-align: center;"><%=rs.getString("Date") %></td>
    				<td><%=rs.getString("CustomerName") %></td>
    				<td><%=rs.getString("Reply") %></td>
    				<td style="text-align: center;"><%=rs.getString("Status") %></td>
    				<td>
    				<div class="buttons">
    					<form action="viewReply" method="post">
    						<input type="hidden" name="replyId" value="<%=rs.getInt("ReplyId") %>"/>
				 			<input type="submit" value= "View" class="view-button" /> 	
    					</form>
    					<form action="viewUpdateReply" method="post">
    						<input type="hidden" name="replyId" value="<%=rs.getInt("ReplyId") %>"/>
				 			<input type="submit" value= "Update" class="update-button" /> 	
    					</form>
    					<form action="deleteReply" method="post">
    						<input type="hidden" name="replyId" value="<%=rs.getInt("ReplyId") %>"/>
				 			<input type="submit" value= "Delete" class="delete-button" /> 	
    					</form>
    				</div>    					
    				</td>
    			</tr>
    	<%
    		}
    	}
    	
    	catch (Exception e){
    		e.printStackTrace(); 
    	}
    	%>
    	</table>
    	
    </main>

    <jsp:include page="sa-footer.jsp"></jsp:include>   
</body>
</html>