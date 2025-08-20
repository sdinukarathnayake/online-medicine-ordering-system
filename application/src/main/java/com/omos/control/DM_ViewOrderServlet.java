package com.omos.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omos.models.Order;
import com.omos.util.PhUtil;

/**
 * Servlet implementation class DM_ViewOrderServlet
 */
@WebServlet("/DM_ViewOrderServlet")
public class DM_ViewOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String orderId = request.getParameter("orderID");
		
		try {
			List<Order> orders = PhUtil.viewOrder(orderId);
			request.setAttribute("orderDetails", orders);			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("dm-delivery-note.jsp");
		dis.forward(request, response);	
	}

}
