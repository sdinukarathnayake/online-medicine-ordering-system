// R. U. Fernando
// IT22177414

package com.omos.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omos.util.SaUtil;


/**
 * Servlet implementation class SA_UpdateReplyServlet
 */
@WebServlet("/SA_UpdateReplyServlet")
public class SA_UpdateReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("replyId");
		String date = request.getParameter("replyDate");
		String customerName = request.getParameter("cusName");
		String subject = request.getParameter("subject");
		String reply = request.getParameter("reply");
		String status =	request.getParameter("status");
		String ticketId = request.getParameter("ticketId");
		String agentName = request.getParameter("agent");
		
		boolean isTrue = SaUtil.updateReply(id, date, customerName, subject, reply, status, ticketId, agentName);
		
		if (isTrue == true) {	
			RequestDispatcher dis = request.getRequestDispatcher("sa-dashboard.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("sa-dashboard.jsp");
			dis2.forward(request, response);
		}
		
	}

}
