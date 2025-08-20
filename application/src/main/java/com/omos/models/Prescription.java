package com.omos.models;

public class Prescription {
	
	private String Id;
	private String UserName;
	private String UserId;
	private String Date;
	private String Prescription;
	private String PrescriptionPath;
	
	public Prescription(String id, String userName, String userId, String date, String prescription, String prescriptionPath) {
		Id = id;
		UserName = userName;
		UserId = userId;
		Date = date;
		Prescription = prescription;
		PrescriptionPath = prescriptionPath;
	}

	public String getId() {
		return Id;
	}

	public String getUserName() {
		return UserName;
	}

	public String getUserId() {
		return UserId;
	}

	public String getDate() {
		return Date;
	}

	public String getPrescription() {
		return Prescription;
	}

	public String getPrescriptionPath() {
		return PrescriptionPath;
	}
	
}
