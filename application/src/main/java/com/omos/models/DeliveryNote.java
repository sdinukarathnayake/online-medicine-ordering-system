package com.omos.models;

public class DeliveryNote {
	
	private String DeliveryNoteNo;
	private String DeliveryNoteDate;
	private String CustomerName;
	private String DeliveryAddress;
	private String PhoneNumber;
	private String Email;
	private String OrderNo;
	private String Area;
	private String DeliveryFee;
	private String DeliveryPartner;
	private String TrackingNumber;
	private String DeliveryNoteStatus;
	
	public DeliveryNote(String deliveryNoteNo, String deliveryNoteDate, String customerName, String deliveryAddress,
			String phoneNumber, String email, String orderNo, String area, String deliveryFee, String deliveryPartner,
			String trackingNumber, String deliveryNoteStatus) {

		DeliveryNoteNo = deliveryNoteNo;
		DeliveryNoteDate = deliveryNoteDate;
		CustomerName = customerName;
		DeliveryAddress = deliveryAddress;
		PhoneNumber = phoneNumber;
		Email = email;
		OrderNo = orderNo; 		
		Area = area;
		DeliveryFee = deliveryFee;
		DeliveryPartner = deliveryPartner;
		TrackingNumber = trackingNumber;
		DeliveryNoteStatus = deliveryNoteStatus;
	}

	public String getDeliveryNoteNo() {
		return DeliveryNoteNo;
	}

	public String getDeliveryNoteDate() {
		return DeliveryNoteDate;
	}

	public String getCustomerName() {
		return CustomerName;
	}

	public String getDeliveryAddress() {
		return DeliveryAddress;
	}

	public String getPhoneNumber() {
		return PhoneNumber;
	}

	public String getEmail() {
		return Email;
	}

	public String getOrderNo() {
		return OrderNo;
	}

	public String getArea() {
		return Area;
	}

	public String getDeliveryFee() {
		return DeliveryFee;
	}

	public String getDeliveryPartner() {
		return DeliveryPartner;
	}

	public String getTrackingNumber() {
		return TrackingNumber;
	}

	public String getDeliveryNoteStatus() {
		return DeliveryNoteStatus;
	}

}
