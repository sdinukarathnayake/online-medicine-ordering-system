package com.omos.models;

public class RU_SupportTicket {
	
	private int ticketId;
	private String ticketDate;
	private String ruId;
	private String customerName;
	private String email;
	private String phone;
	private String subject;
	
	public RU_SupportTicket(int ticketId, String ticketDate, String ruId, String customerName, String email,
			String phone, String subject) {
		this.ticketId = ticketId;
		this.ticketDate = ticketDate;
		this.ruId = ruId;
		this.customerName = customerName;
		this.email = email;
		this.phone = phone;
		this.subject = subject;
	}

	public int getTicketId() {
		return ticketId;
	}

	public String getTicketDate() {
		return ticketDate;
	}

	public String getRuId() {
		return ruId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getSubject() {
		return subject;
	}
	
	
	
	
	
}
