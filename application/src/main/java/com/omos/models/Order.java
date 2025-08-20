package com.omos.models;

public class Order {
	private int OrderId;	
	private String CustomerName;	
	private String Address;
	private String OrderStatus;
	private int ReadyToShip;
	private String UserName;
	private String Medication;
	private String Dosage;
	private String Instructions;
	private String PhoneNumber;
	private String Email;
	
	
	public Order(int orderId, String customerName, String address, String orderStatus, int readyToShip, String userName,
			String medication, String dosage, String instructions, String phoneNumber, String email) {
		OrderId = orderId;
		CustomerName = customerName;
		Address = address;
		OrderStatus = orderStatus;
		ReadyToShip = readyToShip;
		UserName = userName;
		Medication = medication;
		Dosage = dosage;
		Instructions = instructions;
		PhoneNumber = phoneNumber;
		Email = email;
	}

	public String getUserName() {
		return UserName;
	}

	public String getMedication() {
		return Medication;
	}

	public String getDosage() {
		return Dosage;
	}

	public String getInstructions() {
		return Instructions;
	}

	public String getPhoneNumber() {
		return PhoneNumber;
	}

	public String getEmail() {
		return Email;
	}

	public int getOrderId() {
		return OrderId;
	}

	public String getCustomerName() {
		return CustomerName;
	}

	public String getAddress() {
		return Address;
	}

	public String getOrderStatus() {
		return OrderStatus;
	}

	public int getReadyToShip() {
		return ReadyToShip;
	}
	
	
	
}
