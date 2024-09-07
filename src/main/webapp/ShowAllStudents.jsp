<%@ page import="java.util.List" %>
<%@ page import="com.project.entity.Student" %>
<%@ page import="com.project.entity.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
        }
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        h1 {
            text-align: center;
            color: #333;
        }
    </style>
</head>
<body>
    <h1>Student List</h1>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Retrieve the list of students from the request
                List<Student> students = (List<Student>) request.getAttribute("students");
                User user = null;
                // Check if students list is not null and not empty
                if (students != null && !students.isEmpty()) {
                    // Iterate through the list of students
                    for (Student student : students) {
                        user = student.getUser();
            %>
                <tr>
                    <td><%= user.getUsername() %></td>
                    <td><%= user.getEmail() %></td>
                </tr>
            <%
                    }
                } else {
            %>
                <tr>
                    <td colspan="2">No students found.</td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>
</body>
</html>
