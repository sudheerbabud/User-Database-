package com.project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.project.model.Loginmodel;
import com.project.model.Model;
import com.project.model.SelectModel;
import com.project.utility.DBConnection;

public class Dao implements DInterface{
Connection con;
String status = "Failure";
	public String insertData(Model l) {
		try {
			con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into tab(username,pwd,email,phonenumber) values(?,?,?,?)");
			ps.setString(1, l.getUsername());
			ps.setString(2, l.getPassword());
			ps.setString(3, l.getEmail());
			ps.setString(4, l.getPhonenumber());
			int n = ps.executeUpdate();
			if(n>0) {
				status = "Success";
			}else {
				status = "Failure";
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public String selectData(Loginmodel lm, Model l) {
		try {
			con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT username, pwd, email, phonenumber FROM tab WHERE username=? AND pwd=?");
			ps.setString(1, lm.getUsername());
			ps.setString(2, lm.getPassword());
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				l.setEmail(rs.getString("email"));
		        l.setPhonenumber(rs.getString("phonenumber"));
				System.out.println(rs.getString(1)+":"+rs.getString(2));
				System.out.println("Email: " + rs.getString("email"));
		        System.out.println("Phone Number: " + rs.getString("phonenumber"));
				status = "Success";
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public String updateData(Model l) {
		try {
			System.out.println("Update Controller");
			con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("UPDATE tab SET pwd=?, email=?, phonenumber=? WHERE username=?");
			ps.setString(1, l.getPassword());
			ps.setString(2, l.getEmail());
			ps.setString(3, l.getPhonenumber());
			ps.setString(4, l.getUsername());
			int n = ps.executeUpdate();
			if(n>0) {
				status = "Success";
			}else {
				System.out.println("failure at update");
				status = "Failure";
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	 public String getUserDetails(SelectModel sm) {
	        String status = "Failure";
	        try {
	            con = DBConnection.getConnection();
	            PreparedStatement ps = con.prepareStatement("SELECT * FROM tab WHERE username = ? and pwd = ? and email = ? and phonenumber = ? ");
	            ps.setString(1, sm.getUsername());
	            ps.setString(1, sm.getNewPassword());
				ps.setString(2, sm.getNewEmaill());
				ps.setString(3, sm.getNewPhoneNumber());
	            ResultSet rs = ps.executeQuery();
	            while (rs.next()) {
	            	System.out.println(rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4));
	                status = "Success";
	            }
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	        return status;
	    }
	 
	 public String deleteData(Model m) {
			try {
				Connection con =DBConnection.getConnection();
				PreparedStatement st = con.prepareStatement("delete from tab where username=?");
				st.setString(1, m.getUsername());
				int n = st.executeUpdate();
				if (n > 0) {
					System.out.println(n + ":  row(s) Deleted successfully");
					status = "Success";
				} else {
					System.out.println("Something went Wrong!!!");
				}
				con.close();
	
			} catch (Exception e) {
				System.out.println(e);
			}
			return status;
		}
}
