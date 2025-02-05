package com.project.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.project.dao.Dao;
import com.project.model.Model;
@WebServlet("/register")
public class IndexController extends HttpServlet {
//	private static final long serialVersionUID = 1L;

    public IndexController() {}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out =  response.getWriter();
	response.setContentType("text/html");
	System.out.println("Controller");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	String phonenumber = request.getParameter("phonenumber");
	System.out.println("IndexController");
	System.out.println(username);
	System.out.println(password);
	System.out.println(email);
	System.out.println(phonenumber);
	
	String newPassword = request.getParameter("password");
    String newEmail = request.getParameter("email");
    String newPhoneNumber = request.getParameter("phonenumber");
	
    Model l = new Model();
	l.setUsername(username);
	l.setPassword(newPassword);
	l.setEmail(newEmail);
	l.setPhonenumber(newPhoneNumber);
	
	Dao d = new Dao();
	String status = d.insertData(l);
	
	if(status.equals("Success")) {
		RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
        rd.forward(request, response);  
	}else {
		HttpSession session = request.getSession();
		session.setAttribute("errorMessage", "Username already exists!!");
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}
}
}
