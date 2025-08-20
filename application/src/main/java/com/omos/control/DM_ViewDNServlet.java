package com.omos.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omos.models.DeliveryNote;
import com.omos.util.DmUtil;

/**
 * Servlet implementation class DM_ViewDNServlet
 */
@WebServlet("/DM_ViewDNServlet")
public class DM_ViewDNServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String noteId = request.getParameter("deliverynoteno");
		
		try {
			List<DeliveryNote> noteDetails = DmUtil.viewDN(noteId);
			request.setAttribute("noteDetails", noteDetails);			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("dm-view-dn.jsp");
		dis.forward(request, response);	
		
	}

}
