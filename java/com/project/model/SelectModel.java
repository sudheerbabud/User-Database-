package com.project.model;

public class SelectModel {
	
	private String username;
	private String NewPassword;
	private String NewEmaill;
    private String NewPhoneNumber;
	
    public SelectModel() {}
    
    public SelectModel(String username, String newPassword, String newEmaill, String newPhoneNumber) {
		super();
		this.username = username;
		NewPassword = newPassword;
		this.NewEmaill = newEmaill;
		this.NewPhoneNumber = newPhoneNumber;
	}


	@Override
	public String toString() {
		return "SelectModel [username=" + username + ", NewPassword=" + NewPassword + ", newEmaill=" + NewEmaill
				+ ", newPhoneNumber=" + NewPhoneNumber + "]";
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNewPassword() {
		return NewPassword;
	}
	public void setNewPassword(String NewPassword) {
		this.NewPassword = NewPassword;
	}
	public String getNewEmaill() {
		return NewEmaill;
	}
	public void setNewEmaill(String NewEmaill) {
		this.NewEmaill = NewEmaill;
	}
	public String getNewPhoneNumber() {
		return NewPhoneNumber;
	}
	public void setNewPhoneNumber(String NewPhoneNumber) {
		this.NewPhoneNumber = NewPhoneNumber;
	}
    
    
}
