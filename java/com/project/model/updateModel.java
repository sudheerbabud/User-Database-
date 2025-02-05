package com.project.model;

public class updateModel {

		private String username;
		private String newPassword;
		private String newEmail;
		private String newPhonenumber;
		
		public updateModel() {}
		public updateModel(String username, String newPassword, String newEmail, String newPhonenumber) {
			super();
			this.username = username;
			this.newPassword = newPassword;
			this.newEmail = newEmail;
			this.newPhonenumber = newPhonenumber;
		}
		
		public String getUsername() {
			return username;
		}
	
		public void setUsername(String username) {
			this.username = username;
		}
		public String getNewPassword() {
			return newPassword;
		}
		public void setNewPassword(String newPassword) {
			this.newPassword = newPassword;
		}
		public String getNewEmail() {
			return newEmail;
		}
		public void setNewEmail(String newEmail) {
			this.newEmail = newEmail;
		}
		public String getNewPhonenumber() {
			return newPhonenumber;
		}
		public void setNewPhonenumber(String newPhonenumber) {
			this.newPhonenumber = newPhonenumber;
		}
		@Override
		public String toString() {
			return "updateModel [username=" + username + ", newPassword=" + newPassword + ", newEmail=" + newEmail
					+ ", newPhonenumber=" + newPhonenumber + "]";
		}
}
