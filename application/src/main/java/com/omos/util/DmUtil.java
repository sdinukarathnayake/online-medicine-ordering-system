// R M S D Rathnayake
// IT22140616

package com.omos.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.omos.models.DeliveryNote;

public class DmUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// ------------- create delivery note ------------
		public static boolean createDN(String deliveryNoteDate, String customerName, String deliveryAddress, String phoneNumber, String email, String orderNo, String area, String deliveryFee, String deliveryPartner, String trackingNumber, String deliveryNoteStatus){
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into deliverynotes values (0,'"+ deliveryNoteDate +"','"+ customerName +"', '"+ deliveryAddress +"','"+ phoneNumber +"','"+ email +"','"+ orderNo +"','"+ area +"','"+ deliveryFee +"','"+ deliveryPartner +"','"+ trackingNumber +"','"+ deliveryNoteStatus +"')";
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
	
	
	// ------------- view delivery note ------------
public static List<DeliveryNote> viewDN(String noteId){
		
		ArrayList<DeliveryNote> notes = new ArrayList<>();
				
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from deliverynotes where DeliveryNoteNo = '"+ noteId +"'";
			rs = stmt.executeQuery(sql);
			
			//if user name and password match
			if(rs.next()) {				
				
				String DeliveryNoteNo = rs.getString(1);
				String DeliveryNoteDate = rs.getString(2);
				String CustomerName = rs.getString(3);
				String DeliveryAddress = rs.getString(4);
				String PhoneNumber = rs.getString(5);
				String Email = rs.getString(6);
				String OrderNo = rs.getString(7);
				String Area = rs.getString(8);
				String DeliveryFee = rs.getString(9);
				String DeliveryPartner = rs.getString(10);
				String TrackingNumber = rs.getString(11);
				String DeliveryNoteStatus = rs.getString(12);
				
				 //assign to customer object
				DeliveryNote note = new DeliveryNote(DeliveryNoteNo, DeliveryNoteDate, CustomerName, DeliveryAddress, PhoneNumber, Email, OrderNo, Area, DeliveryFee, DeliveryPartner, TrackingNumber, DeliveryNoteStatus);
				notes.add(note);				
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}		
				
		return notes;	
	}
	
	
	
	// ------------- update delivery note ------------
	public static boolean updateDN(String deliveryNoteNo, String deliveryNoteDate, String customerName, String deliveryAddress,
			String phoneNumber, String email, String orderNo, String area, String deliveryFee, String deliveryPartner,
			String trackingNumber, String deliveryNoteStatus){
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE deliverynotes SET DeliveryNoteNo = '"+ deliveryNoteNo +"', DeliveryNoteDate = '"+ deliveryNoteDate +"', CustomerName = '"+ customerName +"', DeliveryAddress = '"+ deliveryAddress +"', PhoneNumber = '"+ phoneNumber +"', Email = '"+ email +"', OrderNo = '"+ orderNo +"',  Area = '"+ area +"', DeliveryFee = '"+ deliveryFee +"', DeliveryPartner = '"+ deliveryPartner +"', TrackingNumber = '"+ trackingNumber +"', DeliveryNoteStatus = '"+ deliveryNoteStatus +"' WHERE DeliveryNoteNo = '"+ deliveryNoteNo +"'";              
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
	
	
	
	// ------------- delete delivery note ------------
	public static boolean deleteDN(String noteID){
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();		
			
			String sql = "DELETE FROM deliverynotes WHERE DeliveryNoteNo='"+ noteID +"'"; 
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
