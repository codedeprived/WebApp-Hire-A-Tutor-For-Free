package com.project.webcontrollers;

import java.io.IOException;

import com.project.service.AdminService;
import com.project.service.UserService;
import com.project.serviceImpl.AdminServiceImpl;
import com.project.serviceImpl.UserServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginWebController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private UserService userService;
	private AdminService adminService;

	@Override
	public void init() throws ServletException {
		super.init();
		System.out.println("Servlet initialization called.");
		adminService = new AdminServiceImpl();
		userService = new UserServiceImpl();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		System.out.println("doPost method called.");

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		System.out.println(email + "  " + password + " " + role);
		boolean authenticationStatus = false;

		if (role.equalsIgnoreCase("user")) {
			authenticationStatus = userService.userAuthentication(email, password);

		} else if (role.equalsIgnoreCase("admin")) {
			authenticationStatus = adminService.adminAuthentication(email, password);
		}
		System.out.println("status: " + authenticationStatus);
		if (authenticationStatus) {
			if (role.equalsIgnoreCase("user")) {
				response.sendRedirect("userDashboard.jsp");

			} else if (role.equalsIgnoreCase("admin")) {
				response.sendRedirect("adminDashboard.jsp");
			}
		} else {
			request.setAttribute("errorMessage", "Invalid username or password");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
}
