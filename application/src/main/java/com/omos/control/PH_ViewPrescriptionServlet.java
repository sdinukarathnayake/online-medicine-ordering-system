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

import com.omos.models.Prescription;
import com.omos.util.PhUtil;

/**
 * Servlet implementation class PH_ViewPrescriptionServlet
 */
@WebServlet("/PH_ViewPrescriptionServlet")
public class PH_ViewPrescriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
   		String id = request.getParameter("id");
		
		try {
			List<Prescription> prescriptions = PhUtil.viewPrescription(id);
			request.setAttribute("prescriptions", prescriptions);			
		} 
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("ph-create-order.jsp");
		dis.forward(request, response);	
	}

}
