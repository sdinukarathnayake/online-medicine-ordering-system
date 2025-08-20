// R. U. Fernando
// IT22177414


package com.omos.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.omos.models.SupportTicket;
import com.omos.models.SupportTicketReply;


public class SaUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
// -------------  Support agent view ticket on reply page ---------------
	
	public static List<SupportTicket> viewTicket(String ticketNo){
			
		ArrayList<SupportTicket> tickets = new ArrayList<>();
				
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from tickets where TicketId = '"+ ticketNo +"'";
			rs = stmt.executeQuery(sql);
			
			//if user name and password match
			if(rs.next()) {
				
				int ticketId = rs.getInt(1);
				String ticketDate  = rs.getString(2);
				String customerName = rs.getString(3);
				String subject = rs.getString(4);
				String message = rs.getString(5);
				String status = rs.getString(6);
				
				
				//assign to customer object
				SupportTicket ticket = new SupportTicket(ticketId, ticketDate, customerName, subject, message, status);
				tickets.add(ticket);
			}			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}		
				
		return tickets;	
	}
	
	
	
// ----------------  Support agent view reply   ----------------------------
	
	public static List<SupportTicketReply> viewReply(String replyNo){
		
		ArrayList<SupportTicketReply> replys = new ArrayList<>();
				
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from reply where ReplyId = '"+ replyNo +"'";
			rs = stmt.executeQuery(sql);
			
			//if user name and password match
			if(rs.next()) {
				
				int replyId = rs.getInt(1);
				String date = rs.getString(2);				
				String customerName = rs.getString(3);
				String subject = rs.getString(6);
				String reply = rs.getString(4);
				String status = rs.getString(5);				
				String ticketId = rs.getString(7);
				String agentName = rs.getString(8);
				  
				//assign to customer object
				SupportTicketReply replyTicket =  new SupportTicketReply(replyId, date, customerName, subject, reply, status, ticketId, agentName);
				replys.add(replyTicket);				
			}
		} 
		catch (Exception e) {
			e.printStackTrace();
		}		
				
		return replys;	
	}
	
// ----------------  Support agent create reply (insert)   ----------------------------
	
	public static boolean createReply(int replyId, String date, String customerName, String subject, String reply, String status, String ticketId, String agentName){
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into reply values (0,'"+ date +"','"+ customerName +"','"+ reply +"','"+ status +"','"+ subject +"','"+ ticketId +"','"+ agentName +"')";
			
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
	
	
	
// ----------------  Support agent update reply   ----------------------------
	
	public static boolean updateReply(String replyId, String date, String customerName, String subject, String reply, String status, String ticketId, String agentName){
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE reply SET ReplyId = '"+ replyId +"', 	Date = '"+ date +"', CustomerName = '"+ customerName +"', Reply = '"+ reply +"', Status = '"+ status +"', Subject = '"+ subject +"', TicketId = '"+ ticketId +"', AgentName = '"+ agentName +"' WHERE ReplyId = '"+ replyId +"'"; 
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
	
	
// ----------------  Support agent reply delete   ----------------------------
	
	public static boolean deleteReply(String replyId){
		
		boolean isSuccess = false;
			
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();		
			
			String sql = "DELETE FROM reply WHERE ReplyId='"+ replyId +"'"; 
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
