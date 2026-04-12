<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .box {
            background: white;
            padding: 30px;
            border-radius: 10px;
            width: 300px;
            text-align: center;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
        }

        button {
            width: 100%;
            padding: 10px;
            background: blue;
            color: white;
            border: none;
        }

        a {
            display: block;
            margin-top: 10px;
        }
    </style>
</head>

<body>

<div class="box">

    <h2>Login</h2>

    <!-- ✅ SUCCESS MESSAGE -->
    <%
        String success = request.getParameter("success");
        if ("1".equals(success)) {
    %>
    <p style="color: green;">Registration Successful! Please login.</p>
    <%
        }
    %>

    <form method="post" action="login">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>

    <a href="register.jsp">Create Account</a>

</div>

</body>
</html>