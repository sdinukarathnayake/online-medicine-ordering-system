package com.omos.util;

import java.sql.Connection;
import java.sql.Statement;

public class RuUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	
// delete
	public static boolean deleteTicket(String ticket){
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();		
			
			String sql = "DELETE FROM reg_user_supticket_table WHERE ticket_id='"+ ticket +"'"; 
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
	
// create
	public static boolean createST(String ticketDate, String ruId, String customerName, String email, String phone, String subject) {
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into reg_user_supticket_table values (0,'"+ ticketDate +"','"+ ruId +"','"+ customerName +"','"+ email +"','"+ phone +"','"+ subject +"')";
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

