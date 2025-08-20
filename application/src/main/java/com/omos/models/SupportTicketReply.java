// R. U. Fernando
// IT22177414

package com.omos.models;

public class SupportTicketReply {
	
	private int replyId;
	private String date;
	private String customerName;
	private String subject;
	private String reply;
	private String status;
	private String ticketId;
	private String agentName;
	
		public SupportTicketReply(int replyId, String date, String customerName, String subject, String reply, String status, String ticketId, String agentName) {
		this.replyId = replyId;
		this.date = date;
		this.customerName = customerName;
		this.subject = subject;
		this.reply = reply;
		this.status = status;
		this.ticketId = ticketId;
		this.agentName = agentName;
	}


	public int getReplyId() {
		return replyId;
	}


	public String getDate() {
		return date;
	}


	public String getCustomerName() {
		return customerName;
	}


	public String getSubject() {
		return subject;
	}


	public String getReply() {
		return reply;
	}


	public String getStatus() {
		return status;
	}


	public String getTicketId() {
		return ticketId;
	}


	public String getAgentName() {
		return agentName;
	}

}
