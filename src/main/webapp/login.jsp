<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 400px;
            margin-top: 50px;
        }
        .form-container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            width: 100%;
        }
        .form-title {
            text-align: center;
            margin-bottom: 20px;
        }
        .role-select {
            margin-bottom: 15px;
        }
        #login-error {
            color: red; /* Corrected from 'text-color' */
            text-align: center;
            margin-top: 10px;
            font-size: 14px; /* Adjust font size as needed */
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <h2 class="form-title">Login Page</h2>
        <form id="loginForm" action="dologin" method="post">
            <!-- Email -->
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
            </div>

            <!-- Password -->
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
            </div>

            <!-- Role selection -->
            <div class="role-select">
                <label for="role" class="form-label">Role:</label>
                <select id="role" name="role" class="form-select" required>
                    <option value="">Select Role</option>
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                </select>
            </div>

            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-custom">Login</button>
        </form>
        
        <!-- Error message -->
        <% String message = (String) request.getAttribute("errorMessage");
            if (message != null) {
        %>
        <p id="login-error"><%= message %></p>
        <% 
            } 
        %>
    </div>
</div>

<!-- Bootstrap JS (for interactive elements) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
