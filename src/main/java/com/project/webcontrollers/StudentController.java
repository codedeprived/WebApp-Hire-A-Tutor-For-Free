package com.project.webcontrollers;

import java.io.IOException;
import java.util.List;

import com.project.entity.Student;
import com.project.entity.Tutor;
import com.project.service.StudentService;
import com.project.service.TutorService;
import com.project.service.UserService;
import com.project.serviceImpl.StudentServiceImpl;
import com.project.serviceImpl.TutorServiceImpl;
import com.project.serviceImpl.UserServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private StudentService studentService;
	private TutorService tutorService;
	private UserService userService;

	@Override
	public void init() throws ServletException {

		this.studentService = new StudentServiceImpl();
		this.tutorService = new TutorServiceImpl();
		this.userService = new UserServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		try {
			switch (action) {
			case "showAllStudents":
				showAllStudents(request, response);
				break;
			case "HireTutor":
				hireTutor(request, response);
				break;
			case "updateStudentDetails":
				showUpdateStudentForm(request, response);
				break;
			case "viewHireHistory":
				viewHireHistory(request, response);
				break;
			default:
				response.sendRedirect("studentDashboard.jsp");
				break;
			}
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private void showAllStudents(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Student> students = studentService.showAllStudent();
		request.setAttribute("students", students);
		request.getRequestDispatcher("ShowAllStudents.jsp").forward(request, response);
	}

	private void hireTutor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Assuming there's a way to hire a tutor; here we will redirect to the hire
		// page
		List<Tutor> tutors = tutorService.showallTutors();
		request.setAttribute("tutors", tutors);
		request.getRequestDispatcher("HireTutor.jsp").forward(request, response);
	}

	private void showUpdateStudentForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int studentId = Integer.parseInt(request.getParameter("studentId"));
		Student student = studentService.getStudent(studentId);
		request.setAttribute("student", student);
		request.getRequestDispatcher("updateStudentDetails.jsp").forward(request, response);
	}

	private void viewHireHistory(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer.parseInt(request.getParameter("studentId"));
		// Fetch hire history based on studentId (Not implemented here, needs backend
		// support)
		// Set hire history list to request attribute
		// Example: request.setAttribute("hireHistory", hireHistoryList);
		request.getRequestDispatcher("viewHireHistory.jsp").forward(request, response);
	}
}
