package com.project.model;

public class Model {
	
	private String username;
	private String password;
	private String email;
	private String phonenumber;
	
	
	public Model(){}
	
	
	public Model(String username, String password, String email, String phonenumber) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.phonenumber = phonenumber;
	}

	
	@Override
	public String toString() {
		return "Model [username=" + username + ", password=" + password + ", email=" + email + ", phonenumber="
				+ phonenumber + "]";
	}


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
}