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
        	Order Creation Page
    	</h1>
    	
    	<h2 class="page-text">Prescription Submissions</h2>
    <br>
    
    <c:forEach var="prescriptions" items="${prescriptions}">
    	<img src="${prescriptions.prescriptionPath}" class="pre-image">
    </c:forEach>
    
    
    
    <div class="order-section" >
      <h2>Create Order</h2>.
      
      <form action="createOrder" method="post">.
      
	        <div class="input-field">
	          <label for="UserName">Customer Name :</label>
	          <input type="text" id="username" name="username">
	
	          <label for="User-ID">User-Id:</label>
	          <input type="text" id="userid" name="userid" >
	        </div>
	
	        <div class="input-field">
	       	 <label for="Medication">Medication:</label>
	          <input type="text" id="medi" name="medi">
		
	       	 <label for="Dosage">Dosage:</label>
	          <input type="text" id="dose" name="dose">
	        </div>
	
	        <div class="input-field">
	          <p>Instruction:</p>
	          <textarea id="review" name="instro" rows="5" cols="85"></textarea>         
	        </div>
	
	        <div class="order-form" >
	            
	            <input type="submit" value="Create Order"  name="submit" class="button">
	        </div>

	  </form>
	  </div>

    <div class="inventory-section">
      <h2>Inventory</h2>
      
      <table>
          <tr>
            <th>Medication Name</th>
            <th>Manufactured Company</th>
	          <th>Composition</th>
            <th>Storage Instructions</th>
            <th>Available Stock</th>
          </tr>
          
          <%
			       try{
			    		Class.forName("com.mysql.jdbc.Driver");
			    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omos", "root", "Pw123");
			    		Statement stmt = con.createStatement();
			    		
			    		String sql = "select * from inventory";
			    		ResultSet rs = stmt.executeQuery(sql);
			
			    		while(rs.next()){
			    		%>    	
			    			<tr>
			    				<td><%=rs.getString("MedicationName") %></td>
			    				<td><%=rs.getString("ManufacturedCompany")%></td>
			    				<td><%=rs.getString("Composition")%></td>
			    				<td><%=rs.getString("StorageInstructions")%></td>
			    				<td><%=rs.getString("AvailableStock")%></td>			    				
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


    <jsp:include page="ph-footer.jsp"></jsp:include>   
</body>
</html>