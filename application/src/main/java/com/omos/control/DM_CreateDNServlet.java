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
 * Servlet implementation class DM_CreateDNServlet
 */
@WebServlet("/DM_CreateDNServlet")
public class DM_CreateDNServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String dnDate = request.getParameter("noteDate");
		String cusName = request.getParameter("cusName");
		String add = request.getParameter("address");
		String ph = request.getParameter("phone");
		String email = request.getParameter("email");
		String order = request.getParameter("orderNo");
		String area = request.getParameter("area");
		String fee = request.getParameter("deliveryFee");
		String partner = request.getParameter("deliveryPartner");
		String tracking = request.getParameter("tracking");
		String status = request.getParameter("status");
		
		boolean isTrue = DmUtil.createDN(dnDate, cusName, add, ph, email, order, area, fee, partner, tracking, status);		
		
		if (isTrue == true) {	
			RequestDispatcher dis = request.getRequestDispatcher("dm-dashboard.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("dm-delivery-note.jsp");
			dis2.forward(request, response);
		} 
	}

}
