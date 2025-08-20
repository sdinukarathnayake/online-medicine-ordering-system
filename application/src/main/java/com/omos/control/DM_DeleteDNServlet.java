package com.omos.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omos.util.DmUtil;

/**
 * Servlet implementation class DM_DeleteDNServlet
 */
@WebServlet("/DM_DeleteDNServlet")
public class DM_DeleteDNServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("deliverynoteno");
		
		boolean isTrue = DmUtil.deleteDN(id);
		
		if (isTrue == true) {	
			RequestDispatcher dis = request.getRequestDispatcher("dm-dashboard.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("dm-dashboard.jsp");
			dis2.forward(request, response);
		}
		
	}

}
