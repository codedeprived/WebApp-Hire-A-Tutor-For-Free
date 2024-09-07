<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tutor Hire</title>
    <!-- Tailwind CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
    <!-- Navigation -->
    <header class="bg-white shadow-md p-4">
        <div class="container mx-auto flex justify-between items-center">
            <h1 class="text-2xl font-bold text-indigo-600">Tutor Hire</h1>
            <nav>
                <ul class="flex space-x-4">
                    <li><a href="#" class="text-gray-600 hover:text-indigo-600">Home</a></li>
                    <li><a href="#" class="text-gray-600 hover:text-indigo-600">About</a></li>
                    <li><a href="#" class="text-gray-600 hover:text-indigo-600">Services</a></li>
                    <li><a href="#" class="text-gray-600 hover:text-indigo-600">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-indigo-500 to-purple-600 text-white py-20">
        <div class="container mx-auto flex flex-col lg:flex-row items-center">
            <div class="lg:w-1/2 mb-10 lg:mb-0">
                <h2 class="text-4xl font-bold mb-4">Find the Perfect Tutor for Your Needs</h2>
                <p class="mb-6">Explore our extensive network of professional tutors across various domains.</p>
                <a href="#" class="bg-white text-indigo-600 px-6 py-3 rounded-full hover:bg-gray-200 transition">Get Started</a>
            </div>
            <div class="lg:w-1/2 flex justify-center">
                <!-- Placeholder for animations or graphics -->
                <img src="your-graphic-path.svg" alt="Tutoring" class="w-3/4">
            </div>
        </div>
    </section>

    <!-- Tabs and Explanations Section -->
    <section class="py-16">
        <div class="container mx-auto">
            <h3 class="text-3xl font-bold text-center mb-8">Our Features</h3>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h4 class="text-xl font-semibold mb-3">Personalized Matching</h4>
                    <p>Get matched with tutors who best fit your learning style and schedule.</p>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h4 class="text-xl font-semibold mb-3">Verified Professionals</h4>
                    <p>All our tutors are thoroughly vetted and have proven expertise in their subjects.</p>
                </div>
                <div class="bg-white p-6 rounded-lg shadow-md">
                    <h4 class="text-xl font-semibold mb-3">Flexible Scheduling</h4>
                    <p>Learn at your own pace with flexible scheduling options available 24/7.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Updated Login/Register Card -->
    <section class="py-16 bg-gray-200">
        <div class="container mx-auto flex justify-center">
            <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md">
                <h2 class="text-2xl font-bold text-center mb-6">Login Page</h2>
                <form id="loginForm" action="login" method="post">
                    <!-- Email -->
                    <div class="mb-4">
                        <label for="email" class="block text-gray-700">Email:</label>
                        <input type="email" id="email" name="email" class="w-full px-3 py-2 border border-gray-300 rounded-md" placeholder="Enter your email" required>
                    </div>

                    <!-- Password -->
                    <div class="mb-4">
                        <label for="password" class="block text-gray-700">Password:</label>
                        <input type="password" id="password" name="password" class="w-full px-3 py-2 border border-gray-300 rounded-md" placeholder="Enter your password" required>
                    </div>

                    <!-- Role selection -->
                    <div class="mb-4">
                        <label for="role" class="block text-gray-700">Role:</label>
                        <select id="role" name="role" class="w-full px-3 py-2 border border-gray-300 rounded-md" required>
                            <option value="">Select Role</option>
                            <option value="user">User</option>
                            <option value="admin">Admin</option>
                        </select>
                    </div>

                    <!-- Submit button -->
                    <button type="submit" class="bg-indigo-600 text-white px-4 py-2 rounded-md hover:bg-indigo-700 transition w-full">Login</button>
                </form>

                <!-- Error message -->
                <% String message = (String) request.getAttribute("errorMessage");
                   if (message != null) {
                %>
                <p id="login-error" class="text-red-500 mt-4 text-center"><%= message %></p>
                <% 
                   } 
                %>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-800 text-white py-4">
        <div class="container mx-auto text-center">
            <p>&copy; 2024 Tutor Hire. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
