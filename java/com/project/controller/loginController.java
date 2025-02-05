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
import com.project.model.Loginmodel;
import com.project.model.Model;
@WebServlet("/login")
public class loginController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
        public loginController() {}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =  response.getWriter();
		response.setContentType("text/html");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phonenumber");
		System.out.println("LoginController");
		System.out.println(username);
		System.out.println(password);
		System.out.println(email);
		System.out.println(phonenumber);
		
		Loginmodel lm = new Loginmodel();
		lm.setUsername(username);
		lm.setPassword(password);
		
		Model l = new Model();
		
		
		Dao d = new Dao();
		String status = d.selectData(lm,l);
		System.out.println(status);
		
		if(status.equals("Success")) {
			HttpSession session = request.getSession();
			session.setAttribute("us", username);
			session.setAttribute("pwd", password);
			session.setAttribute("ema", l.getEmail());
			session.setAttribute("phone", l.getPhonenumber());

			RequestDispatcher rd=request.getRequestDispatcher("home.jsp");  
	        rd.forward(request, response);  
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("errorMessage", "Invalid credentials");
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
	        rd.include(request, response);  
	        	
		}
	}

}