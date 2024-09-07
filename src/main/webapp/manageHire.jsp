<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.project.entity.Tutor" %>
<%@ page import="com.project.entity.Hire" %>
<%@ page import="com.project.service.TutorService" %>
<%@ page import="com.project.service.HireService" %>
<%@ page import="com.project.serviceImpl.TutorServiceImpl" %>
<%@ page import="com.project.serviceImpl.HireServiceImpl" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Hiring</title>
    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <!-- Navigation -->
    <nav class="bg-indigo-600 p-4 shadow-lg">
        <div class="container mx-auto flex justify-between items-center">
            <h1 class="text-white text-2xl font-bold">Manage Hiring</h1>
            <ul class="flex space-x-4">
                <li><a href="StudentController?action=showAllStudents" class="text-white hover:text-gray-200">Users</a></li>
                <li><a href="StudentDashboard.jsp" class="text-white hover:text-gray-200">Dashboard</a></li>
                <li><a href="logout.jsp" class="text-white hover:text-gray-200">Logout</a></li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mx-auto mt-10">
        <!-- Hire a Tutor Section -->
        <section class="bg-white p-6 rounded-lg shadow-md mb-6">
            <h2 class="text-2xl font-semibold text-indigo-700 mb-4">Hire a Tutor</h2>
            
            <!-- Show Tutors Table -->
            <form action="hired.jsp" method="post">
                <table class="min-w-full bg-white border border-gray-300 rounded-lg shadow-sm">
                    <thead>
                        <tr class="bg-gray-100 border-b">
                            <th class="px-4 py-2 text-left">Tutor ID</th>
                            <th class="px-4 py-2 text-left">Name</th>
                            <th class="px-4 py-2 text-left">Email</th>
                            <th class="px-4 py-2 text-left">Domain</th>
                            <th class="px-4 py-2 text-left">Availability Start</th>
                            <th class="px-4 py-2 text-left">Availability End</th>
                            <th class="px-4 py-2 text-left">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% 
                            TutorService tutorService = new TutorServiceImpl();
                            List<Tutor> tutors = tutorService.showallTutors();
                            for (Tutor tutor : tutors) {
                                String tutorId = String.valueOf(tutor.getTutorId());
                                String name = tutor.getUser().getUsername(); // get the username
                                String email = tutor.getUser().getEmail(); // get the email
                                String domain = tutor.getDomain().getDomainname();
                                String availabilityStart = tutor.getAvailabilityStart().toString();
                                String availabilityEnd = tutor.getAvailabilityEnd().toString();
                        %>
                        <tr>
                            <td class="px-4 py-2"><%= tutorId %></td>
                            <td class="px-4 py-2"><%= name %></td>
                            <td class="px-4 py-2"><%= email %></td>
                            <td class="px-4 py-2"><%= domain %></td>
                            <td class="px-4 py-2"><%= availabilityStart %></td>
                            <td class="px-4 py-2"><%= availabilityEnd %></td>
                            <td class="px-4 py-2">
                                <input type="radio" name="selectedTutorId" value="<%= tutorId %>" class="mr-2">
                                <label class="bg-green-500 text-white px-4 py-2 rounded hover:bg-green-600 cursor-pointer">
                                    Select
                                </label>
                            </td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
                <input type="submit" value="Hire Selected Tutor" class="mt-4 bg-blue-500 text-white px-6 py-2 rounded hover:bg-blue-600 transition">
            </form>
        </section>

        <!-- Previous Hire Section -->
        <section class="bg-white p-6 rounded-lg shadow-md">
            <h2 class="text-2xl font-semibold text-indigo-700 mb-4">Previous Hire</h2>
            
            <!-- Show Previous Hire Table -->
            <form action="StudentController?action=cancelHire" method="post">
                <table class="min-w-full bg-white border border-gray-300 rounded-lg shadow-sm">
                    <thead>
                        <tr class="bg-gray-100 border-b">
                            <th class="px-4 py-2 text-left">Tutor Name</th>
                            <th class="px-4 py-2 text-left">Tutor Email</th>
                            <th class="px-4 py-2 text-left">Hire Status</th>
                            <th class="px-4 py-2 text-left">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                       
                     
                    </tbody>
                </table>
            </form>
        </section>
    </div>

    <!-- Tailwind JS for interactions -->
    <script src="https://cdn.tailwindcss.com"></script>
</body>
</html>
