<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hire Status</title>
    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <!-- Navigation -->
    <nav class="bg-indigo-600 p-4 shadow-lg">
        <div class="container mx-auto flex justify-between items-center">
            <h1 class="text-white text-2xl font-bold">Hire Status</h1>
            <ul class="flex space-x-4">
                <li><a href="StudentController?action=showAllStudents" class="text-white hover:text-gray-200">Users</a></li>
                <li><a href="StudentDashboard.jsp" class="text-white hover:text-gray-200">Dashboard</a></li>
                <li><a href="logout.jsp" class="text-white hover:text-gray-200">Logout</a></li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mx-auto mt-10">
        <section class="bg-white p-6 rounded-lg shadow-md">
            <h2 class="text-2xl font-semibold text-indigo-700 mb-4">Hire Status</h2>
            <p class="text-gray-600">
                
                <div class="bg-green-200 text-green-800 p-4 rounded">
                    Pending
                </div>
            </p>
            <a href="StudentDashboard.jsp" class="mt-4 inline-block bg-blue-500 text-white px-6 py-2 rounded hover:bg-blue-600 transition">Back to Dashboard</a>
        </section>
    </div>

    <!-- Tailwind JS for interactions -->
    <script src="https://cdn.tailwindcss.com"></script>
</body>
</html>
