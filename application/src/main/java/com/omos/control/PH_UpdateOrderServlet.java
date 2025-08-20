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
 * Servlet implementation class PH_UpdateOrderServlet
 */
@WebServlet("/PH_UpdateOrderServlet")
public class PH_UpdateOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String oid = request.getParameter("orderId");		
		String uname = request.getParameter("username");
		String uid = request.getParameter("userid");
		String medi = request.getParameter("medi");
		String dose = request.getParameter("dose");
		String intro =	request.getParameter("instro");
		
		boolean isTrue = PhUtil.updateOrder(oid, uname, uid, medi, dose, intro);
		
		if (isTrue == true) {	
			RequestDispatcher dis = request.getRequestDispatcher("ph-dashboard.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("ph-viewOrder.jsp");
			dis2.forward(request, response);
		}
	}

}
