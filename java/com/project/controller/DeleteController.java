package com.project.controller;

import java.io.IOException;

import com.project.dao.Dao;
import com.project.model.Model;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/delete")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		System.out.println(username);
		Model m = new Model();
		m.setUsername(username);
		Dao d = new Dao();
		String status = d.deleteData(m);
		System.out.println(status);
		if(status.equals("Success")) {
			RequestDispatcher rd = request.getRequestDispatcher("deleted.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
	}

}
