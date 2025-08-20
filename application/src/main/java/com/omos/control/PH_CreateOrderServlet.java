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
 * Servlet implementation class PH_CreateOrderServlet
 */
@WebServlet("/PH_CreateOrderServlet")
public class PH_CreateOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("username");
		String uid = request.getParameter("userid");
		String medi = request.getParameter("medi");
		String dose = request.getParameter("dose");
		String intro =	request.getParameter("instro");
		String status =	"Created";
		String blank =	"";
		
		boolean isTrue = PhUtil.createOrder(uname, blank, status, 0, uid, medi, dose, intro, blank, blank);

			if (isTrue == true) {	
			RequestDispatcher dis = request.getRequestDispatcher("ph-dashboard.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("ph-create-order.jsp");
			dis2.forward(request, response);
		} 
		
	}

}
