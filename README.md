# 🔐 Login & Registration System

A full-stack web application for user authentication built with **Java Servlets**, **JSP**, **JDBC**, and **PostgreSQL**. Provides a clean, secure login and registration workflow with server-side processing and database persistence.

---

## 📋 Table of Contents

- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Database Setup](#database-setup)
- [Configuration](#configuration)
- [Running the Application](#running-the-application)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Contributing](#contributing)

---

## ✨ Features

- User registration with form validation
- Secure user login with credential verification
- PostgreSQL database integration via JDBC
- MVC-style separation using Servlets and JSP
- Session/result feedback pages for user actions

---

## 🛠 Tech Stack

| Layer | Technology |
|---|---|
| Language | Java |
| Web Layer | Java Servlets, JSP |
| Database | PostgreSQL |
| DB Connectivity | JDBC |
| Build Tool | Maven (`pom.xml`) |
| Server | Apache Tomcat |

---

## 📁 Project Structure

```
login-registration-servlet-jdbc/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── example/
│       │           └── loginapp/
│       │               ├── DBConnection.java       # JDBC database connection utility
│       │               ├── LoginServlet.java        # Handles login requests
│       │               └── RegisterServlet.java     # Handles registration requests
│       └── webapp/
│           ├── index.jsp                            # Login page
│           ├── register.jsp                         # Registration page
│           └── result.jsp                           # Result/feedback page
├── .gitignore
└── pom.xml                                          # Maven build configuration
```

---

## ✅ Prerequisites

Make sure you have the following installed:

- [Java JDK 11+](https://www.oracle.com/java/technologies/downloads/)
- [Apache Maven](https://maven.apache.org/)
- [Apache Tomcat 9+](https://tomcat.apache.org/)
- [PostgreSQL](https://www.postgresql.org/download/)

---

## 🗄 Database Setup

1. Open **pgAdmin** or your PostgreSQL terminal and create a new database:

```sql
CREATE DATABASE logindb;
```

2. Create the `users` table:

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);
```

---

## ⚙️ Configuration

Open `DBConnection.java` and update the connection details to match your PostgreSQL setup:

```java
private static final String URL = "jdbc:postgresql://localhost:5432/logindb";
private static final String USER = "your_postgres_username";
private static final String PASSWORD = "your_postgres_password";
```

---

## 🚀 Running the Application

1. **Clone the repository:**

```bash
git clone https://github.com/wahidali-glitch/login-registration-servlet-jdbc.git
cd login-registration-servlet-jdbc
```

2. **Build the project with Maven:**

```bash
mvn clean package
```

3. **Deploy to Tomcat:**

   - Copy the generated `.war` file from `target/` into your Tomcat `webapps/` directory.
   - Start Tomcat.

4. **Access the application in your browser:**

```
http://localhost:8080/login-registration-servlet-jdbc/
```

---

## 🖥 Usage

| Page | URL | Description |
|---|---|---|
| Login | `/index.jsp` | Enter credentials to log in |
| Register | `/register.jsp` | Create a new account |
| Result | `/result.jsp` | Feedback after login/registration |

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a new branch: `git checkout -b feature/your-feature-name`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature/your-feature-name`
5. Open a Pull Request

---

## 👤 Author

**Wahid Ali**
- GitHub: [@wahidali-glitch](https://github.com/wahidali-glitch)

---

*Built with ❤️ using Java, Servlets, JSP, JDBC and PostgreSQL*
