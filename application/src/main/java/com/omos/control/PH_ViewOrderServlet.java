// D K S D Perera
// IT22128522

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
 * Servlet implementation class PH_ViewOrderServlet
 */
@WebServlet("/PH_ViewOrderServlet")
public class PH_ViewOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String order = request.getParameter("orderId");
		
		try {
			List<Order> orders = PhUtil.viewOrder(order);
			request.setAttribute("orders", orders);			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("ph-view-order.jsp");
		dis.forward(request, response);	
	}

}
