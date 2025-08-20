package com.omos.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omos.util.RuUtil;

/**
 * Servlet implementation class RU_CreateSupportTicket
 */
@WebServlet("/RU_CreateSupportTicket")
public class RU_CreateSupportTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tdate = request.getParameter("ticketDate");
		String ruId = request.getParameter("userId");
		String ruName = request.getParameter("userName");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String subject = request.getParameter("problem");			
		
		boolean isTrue = RuUtil.createST(tdate, ruId, ruName, email, phone, subject);
		
		if (isTrue == true) {	
			RequestDispatcher dis = request.getRequestDispatcher("RegUserSupTicketPage.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("RegUserSupTicketPage.jsp");
			dis2.forward(request, response);
		} 
	}
}