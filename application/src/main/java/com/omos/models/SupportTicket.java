// R. U. Fernando
// IT22177414

package com.omos.models;

public class SupportTicket {
	
	private int ticketId;
	private String ticketDate;
	private String customerName;
	private String subject;
	private String message;
	private String status;
	
	public SupportTicket(int ticketId, String ticketDate, String customerName, String subject, String message,
			String status) {
		this.ticketId = ticketId;
		this.ticketDate = ticketDate;
		this.customerName = customerName;
		this.subject = subject;
		this.message = message;
		this.status = status;
	}

	public int getTicketId() {
		return ticketId;
	}

	public String getTicketDate() {
		return ticketDate;
	}

	public String getCustomerName() {
		return customerName;
	}

	public String getSubject() {
		return subject;
	}

	public String getMessage() {
		return message;
	}

	public String getStatus() {
		return status;
	}

	
}
