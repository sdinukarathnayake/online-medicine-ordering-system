// D K S D Perera
// IT22128522

package com.omos.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.omos.models.Order;
import com.omos.models.Prescription;

public class PhUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
// -------------  Pharmacist view prescription submission  ---------------
	
	public static List<Prescription> viewPrescription(String prestNo){
		
		ArrayList<Prescription> prescriptions = new ArrayList<>();
				
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from prescription where Id = '"+ prestNo +"'";
			rs = stmt.executeQuery(sql);
			
			//if user name and password match
			if(rs.next()) {	
				
				String id = rs.getString(1);
				String username  = rs.getString(2);
				String userid = rs.getString(3);
				String date = rs.getString(4);
				String Prescription = rs.getString(5);
				String Prescriptionpath = rs.getString(6);
				
				
				//assign to customer object
				Prescription prescription = new Prescription(id, username, userid, date, Prescription, Prescriptionpath);
				prescriptions.add(prescription);
			}			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}		
				
		return prescriptions;	
	}
	
	
	
// -------------  Pharmacist create order  ---------------
	
	public static boolean createOrder(String customerName, String address, String status, int readyToShip, String userName, String medication, String dosage, String instruction, String phone, String email){
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into orders values (0,'"+ customerName +"','"+ address +"','"+ address +"','"+ readyToShip +"','"+ userName +"','"+ medication +"','"+ dosage +"','"+ instruction +"','"+ phone +"','"+ email +"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	
// -------------  Pharmacist view order in update form  ---------------
	
	public static List<Order> viewOrder(String orderId){
		
		ArrayList<Order> oreders = new ArrayList<>();
				
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from orders where OrderId = '"+ orderId +"'";
			rs = stmt.executeQuery(sql);
			
			//if user name and password match
			if(rs.next()) {				
				int order = rs.getInt(1);
				String cusName = rs.getString(2);
				String address = rs.getString(3);
				String status = rs.getString(4);
				int ready = rs.getInt(5);
				String userName = rs.getString(6);
				String medi = rs.getString(7);
				String dose = rs.getString(8);
				String instructions = rs.getString(9);
				String phone = rs.getString(10);
				String email = rs.getString(11);
				
				 //assign to customer object
				Order oreder = new Order(order, cusName, address, status, ready, userName, medi, dose, instructions, phone, email);
				oreders.add(oreder);				
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}		
				
		return oreders;	
	}
	
		
	
// -------------  Pharmacist update order  ---------------
	
	public static boolean updateOrder(String orderId, String customerName, String userName, String medication, String dosage, String instruction){
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE orders SET CustomerName  = '"+ customerName +"', UserName  = '"+ userName +"', Medication  = '"+ medication +"',	Dosage  = '"+ dosage +"', Instructions  = '"+ instruction +"' WHERE OrderId = '"+ orderId +"'"; 
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}	
	
	
	
// -------------  Pharmacist delete order  ---------------
	
	public static boolean deleteOrder(String orderId){
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();		
			
			String sql = "DELETE FROM orders WHERE OrderId='"+ orderId +"'"; 
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
