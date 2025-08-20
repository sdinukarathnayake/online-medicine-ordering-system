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

import com.omos.models.SupportTicketReply;
import com.omos.util.SaUtil;

/**
 * Servlet implementation class SA_ViewReplyServlet
 */
@WebServlet("/SA_ViewReplyServlet")
public class SA_ViewReplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String replyId = request.getParameter("replyId");
		
		try {
			List<SupportTicketReply> replyDetails = SaUtil.viewReply(replyId);
			request.setAttribute("replyDetails", replyDetails);			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("sa-view-reply.jsp");
		dis.forward(request, response);	
		
	}

}
