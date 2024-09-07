
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>User Dashboard</title>


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .dashboard-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .card {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px; 
        }
        .btn-dashboard {
            width: 100%;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="dashboard-header">Welcome User</h1>
    
    <div class="row justify-content-center">
        
        <div class="col-md-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Student Dashboard</h5>
                    <p class="card-text">Access the student dashboard to manage student-specific options.</p>
                 
                    <a href="StudentDashboard.jsp" class="btn btn-primary btn-dashboard">Go to Student Dashboard</a>
                </div>
            </div>
        </div>

        
        <div class="col-md-6">
            <div class="card text-center">
                <div class="card-body">
                    <h5 class="card-title">Tutor Dashboard</h5>
                    <p class="card-text">Access the tutor dashboard to manage tutor-specific activities.</p>
                   
                    <a href="TutorServlet" class="btn btn-success btn-dashboard">Go to Tutor Dashboard</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
