package com.project.controller;

import java.io.IOException;

import com.project.dao.Dao;
import com.project.model.Model;
import com.project.model.SelectModel;
import com.project.model.updateModel;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/update")
public class UpdateController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UpdateController() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        System.out.println("Reached UpdateCOntroller");
//        int n=Integer.parseInt(request.getParameter("username"));
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phonenumber");

        Model la = new Model();
        la.setUsername(username);
        la.setPassword(password);
        la.setEmail(email);
        la.setPhonenumber(phoneNumber);

        System.out.println("Going for update details");
        Dao dao = new Dao();
        String updateStatus = dao.updateData(la);
        System.out.println(updateStatus);
        // Update the user details
       
        if (updateStatus.equals("Success")) {
                HttpSession session = request.getSession();
                session.setAttribute("us",la.getUsername());
                session.setAttribute("ema", la.getEmail());
                session.setAttribute("phone", la.getPhonenumber());
                session.setAttribute("ps", la.getPassword());
                RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
                rd.forward(request, response);
            } else {
	            RequestDispatcher rd = request.getRequestDispatcher("updated.jsp");
	            rd.include(request, response);
        }
    }
}