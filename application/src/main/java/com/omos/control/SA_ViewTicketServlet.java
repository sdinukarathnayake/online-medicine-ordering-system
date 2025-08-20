// R. U. Fernando
// IT22177414

package com.omos.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omos.models.SupportTicket;
import com.omos.util.SaUtil;

/**
 * Servlet implementation class SA_ViewTicketServlet
 */
@WebServlet("/SA_ViewTicketServlet")
public class SA_ViewTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ticket = request.getParameter("ticketID");
		
		try {
			List<SupportTicket> ticketDetails = SaUtil.viewTicket(ticket);
			request.setAttribute("ticketDetails", ticketDetails);			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("sa-support-ticket.jsp");
		dis.forward(request, response);	
	}

}
