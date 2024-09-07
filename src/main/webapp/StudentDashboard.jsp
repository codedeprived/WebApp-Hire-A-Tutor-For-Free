<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <!-- Navigation -->
    <nav class="bg-indigo-600 p-4 shadow-lg">
        <div class="container mx-auto flex justify-between items-center">
            <h1 class="text-white text-2xl font-bold">Student Dashboard</h1>
            <ul class="flex space-x-4">
                <li><a href="StudentController?action=showAllStudents" class="text-white hover:text-gray-200">Users</a></li>
                <li><a href="#" class="text-white hover:text-gray-200">Home</a></li>
                <li><a href="#" class="text-white hover:text-gray-200">Profile</a></li>
                <li><a href="#" class="text-white hover:text-gray-200">Settings</a></li>
                <li><a href="logout.jsp" class="text-white hover:text-gray-200">Logout</a></li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mx-auto mt-10">
        <!-- Welcome Section -->
        <section class="bg-white p-6 rounded-lg shadow-md mb-6">
            <h2 class="text-2xl font-semibold text-indigo-700 mb-4">Welcome to Your Dashboard</h2>
            <p class="text-gray-600">
                This is your personal space where you can manage your profile, hire tutors, and view your hiring history. Explore the sections below to navigate through the available options and make the most of your learning experience.
            </p>
        </section>

        <!-- Hire a Tutor Section -->
        <section class="bg-white p-6 rounded-lg shadow-md mb-6">
            <h2 class="text-2xl font-semibold text-indigo-700 mb-4">Hire a Tutor</h2>
            <p class="text-gray-600">
                Find and hire a tutor that fits your academic needs. You can browse through available tutors and select the one who matches your subject requirements and availability.
            </p>
            <a href="manageHire.jsp" class="mt-4 inline-block bg-green-500 text-white px-6 py-2 rounded hover:bg-green-600 transition">Manage Hiring</a>
        </section>

        <!-- Update Student Details Section -->
        <section class="bg-white p-6 rounded-lg shadow-md mb-6">
            <h2 class="text-2xl font-semibold text-indigo-700 mb-4">Update Student Details</h2>
            <p class="text-gray-600">
                Keep your profile updated by editing your personal information. Ensure that your contact details and other information are accurate to receive the best service and notifications.
            </p>
            <a href="StudentController?action=updateStudentDetails" class="mt-4 inline-block bg-yellow-500 text-white px-6 py-2 rounded hover:bg-yellow-600 transition">Update Details</a>
        </section>

        <!-- View Hire History Section -->
        <section class="bg-white p-6 rounded-lg shadow-md">
            <h2 class="text-2xl font-semibold text-indigo-700 mb-4">View Hire History</h2>
            <p class="text-gray-600">
                Review your past hiring records to see which tutors you've worked with before. This section provides a detailed log of your previous tutoring sessions, helping you to track your learning progress.
            </p>
            <a href="StudentController?action=viewHireHistory" class="mt-4 inline-block bg-blue-500 text-white px-6 py-2 rounded hover:bg-blue-600 transition">View History</a>
        </section>
    </div>

    <!-- Tailwind JS for interactions -->
    <script src="https://cdn.tailwindcss.com"></script>
</body>
</html>
