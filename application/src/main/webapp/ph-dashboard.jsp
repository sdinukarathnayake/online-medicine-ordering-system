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
    <link rel="stylesheet" href="CSS/pharmacist/ph-dashboard.css">
    <title>OMOS - Pharmacist Dashboard</title>
</head>
<body>
    <jsp:include page="ph-header.jsp"></jsp:include>
   
   <main>
       
         <h2>Prescription Submissions</h2>
         
    	<table border = "1" id="prescription-table">
    		<tr>
    			<th style="width: 15%;">User Name</th>
    			<th style="width: 25%;">User ID</th>
    			<th style="width: 30%;">Date</th>
    			<th style="width: 10%;">Uploaded Prescription</th>
    			<th style="width: 20%;">Actions</th>
    		</tr>
    	
    	<%
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omos", "root", "Pw123");
    		Statement stmt = con.createStatement();
    		
    		String sql = "select * from prescription";
    		ResultSet rs = stmt.executeQuery(sql);

    		while(rs.next()){
    		%>    	
    			<tr>
    				<td style="text-align: center;"><%=rs.getString("UserName") %></td>
    				<td><%=rs.getString("UserId") %></td>
    				<td><%=rs.getString("Date") %></td>
    				<td><img src="<%=rs.getString("PrescriptionPath") %>"></td>
    				<td>
    					<form action="phViewPrescription" method="post">
    						<input type="hidden" name="id" value="<%=rs.getInt("Id")%>"/>
				 			<input type="submit" value= "Create Order" class="button" /> 	
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
        
        
        <section id="prescription-table">
            <h2>Orders Summary</h2>
            <table border="1">
                    <tr>
                        <th>Order ID</th>
                        <th>User Name</th>
                        <th>Medication</th>
                        <th>Dosage</th>
                        <th>Instructions</th>
						<th>Action</th>
                    </tr>

                <%
			       try{
			    		Class.forName("com.mysql.jdbc.Driver");
			    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omos", "root", "Pw123");
			    		Statement stmt = con.createStatement();
			    		
			    		String sql = "select * from orders";
			    		ResultSet rs = stmt.executeQuery(sql);
			
			    		while(rs.next()){
			    		%>    	
			    			<tr>
			    				<td style="text-align: center;"><%=rs.getString("OrderId") %></td>
			    				<td><%=rs.getString("CustomerName")%></td>
			    				<td><%=rs.getString("Medication")%></td>
			    				<td><%=rs.getString("Dosage")%></td>
			    				<td><%=rs.getString("Instructions")%></td>
			    				<td class="buttons">
			    					<form action="viewOrder" method="post">
			    						<input type="hidden" name="orderId" value="<%=rs.getString("OrderId") %>"/>
							 			<input type="submit" value= "View" class="button" /> 	
			    					</form>
			    					
			    					<form action="deleteOrder" method="post">
			    						<input type="hidden" name="orderId" value="<%=rs.getString("OrderId") %>"/>
							 			<input type="submit" value= "Delete" class="button" /> 	
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
        </section>
    </main> 
    
    <jsp:include page="ph-footer.jsp"></jsp:include>   

</body>
</html>