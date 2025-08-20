// D K S D Perera
// IT22128522

package com.omos.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omos.util.PhUtil;

/**
 * Servlet implementation class PH_DeleteOrderServlet
 */
@WebServlet("/PH_DeleteOrderServlet")
public class PH_DeleteOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("orderId");
		
		boolean isTrue = PhUtil.deleteOrder(id);
		
		if (isTrue == true) {	
			RequestDispatcher dis = request.getRequestDispatcher("ph-dashboard.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("ph-dashboard.jsp");
			dis2.forward(request, response);
		}
	}

}
