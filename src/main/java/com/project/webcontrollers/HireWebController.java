package com.project.webcontrollers;

import java.io.IOException;
import java.util.List;

import com.project.entity.Hire;
import com.project.entity.Tutor;
import com.project.service.HireService;
import com.project.service.TutorService;
import com.project.serviceImpl.HireServiceImpl;
import com.project.serviceImpl.TutorServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HireWebController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TutorService tutorService = new TutorServiceImpl();
	private HireService hireService = new HireServiceImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		if ("viewTutors".equals(action)) {
			List<Tutor> tutors = tutorService.showallTutors();
			request.setAttribute("tutors", tutors);
			request.getRequestDispatcher("manageHire.jsp").forward(request, response);
		} else if ("hireTutor".equals(action)) {
			int tutorId = Integer.parseInt(request.getParameter("tutorId"));
			// Logic to hire tutor (e.g., create Hire object, save to database)
			// You will also need to get the student information (e.g., from session or
			// another input)
			request.setAttribute("hireStatusMessage", "Tutor hired successfully!");
			request.getRequestDispatcher("manageHire.jsp").forward(request, response);
		} else if ("cancelHire".equals(action)) {
			String email = request.getParameter("email");
			// Logic to cancel hire based on student email
			request.setAttribute("hireStatusMessage", "Hire request canceled successfully!");
			request.getRequestDispatcher("manageHire.jsp").forward(request, response);
		} else if ("showHireStatus".equals(action)) {
			String email = request.getParameter("email");
			// Logic to get hire status based on student email
			// For example:
			Hire hire = hireService.getHireStatus(email);
			request.setAttribute("hireStatusMessage", hire != null ? "Status: " + hire.getStatus() + "<br/>" + "Tutor: "

					: "No hire record found.");
			request.getRequestDispatcher("manageHire.jsp").forward(request, response);
		}
	}
}
