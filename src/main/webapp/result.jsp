<!DOCTYPE html>
<html>
<head>
    <title>Result</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: linear-gradient(to right, #43e97b, #38f9d7);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            background: white;
            padding: 40px;
            border-radius: 12px;
            width: 350px;
            text-align: center;
            box-shadow: 0 0 25px rgba(0,0,0,0.2);
        }

        .success {
            color: green;
            font-size: 26px;
            font-weight: bold;
        }

        .error {
            color: red;
            font-size: 26px;
            font-weight: bold;
        }

        .username {
            margin-top: 10px;
            font-size: 18px;
            color: #555;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: white;
            background: #4facfe;
            padding: 10px 20px;
            border-radius: 5px;
            transition: 0.3s;
        }

        a:hover {
            background: #00c6ff;
        }
    </style>
</head>

<body>

<div class="card">

    <%
        String msg = (String) request.getAttribute("message");
        String user = (String) request.getAttribute("username");
    %>

    <% if ("Login Successful".equals(msg)) { %>
    <div class="success">✔ <%= msg %></div>
    <div class="username">Welcome, <%= user %> 👋</div>
    <% } else { %>
    <div class="error">✖ <%= msg %></div>
    <% } %>

    <a href="index.jsp">Go Back</a>

</div>

</body>
</html>