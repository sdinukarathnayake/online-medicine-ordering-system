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
 * Servlet implementation class RU_DeleteSupportTicket
 */
@WebServlet("/RU_DeleteSupportTicket")
public class RU_DeleteSupportTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("ticket_id");
		
		boolean isTrue = RuUtil.deleteTicket(id);
		
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
