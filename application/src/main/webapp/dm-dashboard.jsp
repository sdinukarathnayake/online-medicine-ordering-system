<%@page import="org.eclipse.jdt.internal.compiler.ast.WhileStatement"%>
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
    <link rel="stylesheet" href="CSS/deliveryManager/dm-dashboard.css">
    <title>OMOS - Delivery Manager Dashboard</title>
</head>
<body>
    <jsp:include page="dm-header.jsp"></jsp:include>
    
    <main>
    	<h1 class="main-text">
        	Delivery Manager  Dashboard
    	</h1>
    	
    	<h2 class="sub-text">
        	Order Summary
    	</h2>
    	<p class="sub-des">Orders that are paid and need to be delivered.</p>
    	
    	<table border = "1" class="order-table">
    		<tr>
    			<th style="width: 10%;">Order Id</th>
    			<th style="width: 30%;">Customer Name</th>
    			<th style="width: 30%;">Address</th>
    			<th style="width: 10%;">Order Status</th>
    			<th style="width: 20%;">Actions</th>
    		</tr>
    	
    	<%
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omos", "root", "Pw123");
    		Statement stmt = con.createStatement();
    		
    		String sql = "select * from orders";
    		ResultSet rs = stmt.executeQuery(sql);

    		while(rs.next()){
			
    			int status = rs.getInt("ReadyToShiip");
    			
    			if(status == 1) {
    		%>    	
    			<tr>
    				<td style="text-align: center;"><%=rs.getInt("OrderId") %></td>
    				<td><%=rs.getString("CustomerName") %></td>
    				<td><%=rs.getString("Address") %></td>
    				<td style="text-align: center;"><%=rs.getString("OrderStatus") %></td>
    				<td>
    					<form action="dmViewOrder" method="post">
    						<input type="hidden" name="orderID" value="<%=rs.getInt("OrderId") %>"/>
				 			<input type="submit" value= "Create Order" class="create-button" /> 	
    					</form>
    				</td>
    			</tr>
    	<%
    			}	
    		}
    	}
    	
    	catch (Exception e){
    		e.printStackTrace(); 
    	}
    	%>
    	</table>
    	
    	
    	<h2 class="sub-text">
        	Delivery Notes Summary
    	</h2>
    	
    	<table border = "1" class="delivery-notes-table">
    		<tr>
    			<th style="width: 7%;">Note Id</th>
    			<th style="width: 10%;">Note Date</th>
    			<th style="width: 19%;">Customer Name</th>    			
    			<th style="width: 7%;">Order Id</th>    			
    			<th style="width: 10%;">Area</th>
    			<th style="width: 11%;">Status</th>
    			<th style="width: 35%;">Actions</th>
    		</tr>
    	
    	<%
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omos", "root", "Pw123");
    		Statement stmt = con.createStatement();
    		
    		String sql = "select * from deliverynotes";
    		ResultSet rs = stmt.executeQuery(sql);

    		while(rs.next()){
    		%>    	
    			<tr>
    				<td style="text-align: center;"><%=rs.getInt("DeliveryNoteNo") %></td>
    				<td style="text-align: center;"><%=rs.getString("DeliveryNoteDate") %></td>
    				<td><%=rs.getString("CustomerName") %></td>
    				<td style="text-align: center;"><%=rs.getString("OrderNo") %></td>
    				<td><%=rs.getString("Area") %></td>
    				<td style="text-align: center;"><%=rs.getString("DeliveryNoteStatus") %></td>
    				<td>
    				<div class="buttons">
    					<form action="viewDN" method="post">
    						<input type="hidden" name="deliverynoteno" value="<%=rs.getInt("DeliveryNoteNo") %>"/>
				 			<input type="submit" value= "View" class="view-button" /> 	
    					</form>
    					<form action="deleteDN" method="post">
    						<input type="hidden" name="deliverynoteno" value="<%=rs.getInt("DeliveryNoteNo") %>"/>
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

    <jsp:include page="dm-footer.jsp"></jsp:include>   
</body>
</html>