<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = 'java.sql.Connection' %>
 <%@ page import = 'java.sql.DriverManager' %>
 <%@ page import = 'java.sql.Statement' %>
 <%@ page import = 'java.sql.ResultSet' %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Support Ticket Page</title>

<link rel="stylesheet" href="CSS/registeredUser/rusupticketpage.css">
</head>
<body>
      <%-- <jsp:include page="#"></jsp:include> --%>   
     <h1>Support Ticket Page</h1>
     <div class="ticket-form">
        <form action="regUserSupTicketServlet" method="post">
            <label for="ticketDate">Ticket Date:</label>
            <input type="date" id="ticketDate" name="ticketDate" required><br><br>

            <label for="userId">User ID:</label>
            <input type="text" id="userId" name="userId" required><br><br>

            <label for="userName">User Name:</label>
            <input type="text" id="userName" name="userName" required><br><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" required><br><br>

            <label for="problem">Problem:</label>
            <textarea id="problem" name="problem" rows="4" required></textarea><br><br>

            <button type="submit">Submit Ticket</button>
        </form>
    </div>

    <div class="ticket-list">
        <h2>Previously Submitted Tickets</h2>
        
        <table border = "1" class="support-table">
    		<tr>
    			<th>Ticket ID</th>
    			<th>Ticket Name</th>
    			<th>User Id</th>    			
    			<th>User Name</th>    			
    			<th>Email</th>
    			<th>Phone</th>
    			<th>Subject</th>
    			<th>Actions</th>
    		</tr>
    	
    	<%
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omos", "root", "Pw123");
    		Statement stmt = con.createStatement();
    		
    		String sql = "select * from reg_user_supticket_table"; 
    		ResultSet rs = stmt.executeQuery(sql);

    		while(rs.next()){
    		%>    	
    			<tr>
    				<td><%=rs.getInt("ticket_id") %></td>
    				<td><%=rs.getString("ticket_date") %></td>
    				<td><%=rs.getInt("ru_id") %></td>
    				<td><%=rs.getString("ru_name") %></td>
    				<td><%=rs.getString("ru_email") %></td>
    				<td><%=rs.getString("ru_phone") %></td>
    				<td><%=rs.getString("subject") %></td>
    				<td>
    					<form action="deleteRUsupTicket" method="post">
    						<input type="hidden" name="ticket_id" value="<%=rs.getInt("ticket_id") %>"/>
				 			<input type="submit" value= "Delete" class="delete-button" /> 	
    					</form>
    			</tr>
    	<%
    		}
    	}
    	
    	catch (Exception e){
    		e.printStackTrace(); 
    	}
    	%>
    	</table>
        
        
    </div>
    
    <%-- <jsp:include page="#"></jsp:include> --%>
</body>
</html>