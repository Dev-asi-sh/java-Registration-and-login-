
# Registration and Login System
### java-Registration-and-login-
## 📋 Project Overview
This project is a simple **Registration and Login System** built using **JSP**, **Servlets**, and **MySQL**. It enables users to register with their credentials and log in securely.

## 🚀 Features
- User Registration with validation
- Session Management
- User-friendly Interface

## 🛠️ Tech Stack
- **Frontend:** JSP, HTML, CSS
- **Backend:** Java Servlets
- **Database:** MySQL
- **Server:** Apache Tomcat

## File Structure

📦 RegistrationSERVLETJSP
 ┣ 📂 src
 ┃ ┣ 📂 main
 ┃ ┃ ┣ 📂 java
 ┃ ┃ ┃ ┗ 📂 in.sp.backend
 ┃ ┃ ┃ ┃ ┣ 📄 Login.java
 ┃ ┃ ┃ ┃ ┣ 📄 Logout.java
 ┃ ┃ ┃ ┃ ┗ 📄 Register.java
 ┃ ┃ ┗ 📂 webapp
 ┃ ┃ ┃ ┣ 📂 META-INF
 ┃ ┃ ┃ ┣ 📂 WEB-INF
 ┃ ┃ ┃ ┃ ┗ 📂 lib
 ┃ ┃ ┃ ┃ ┃ ┗ 📄 mysql-connector.jar
 ┃ ┃ ┃ ┣ 📄 login.jsp
 ┃ ┃ ┃ ┣ 📄 register.jsp
 ┃ ┃ ┃ ┗ 📄 welcome.jsp
 ┣ 📂 Libraries
 ┣ 📂 Referenced Libraries
 ┣ 📂 build
 ┗ 📄 Deployment Descriptor: web.xml


## 💾 Database Setup
1. Install MySQL and create a database:
   ```sql
   CREATE DATABASE userdb;
   USE userdb;
   
   CREATE TABLE users (
       id INT AUTO_INCREMENT PRIMARY KEY,
       username VARCHAR(50) NOT NULL UNIQUE,
       password VARCHAR(255) NOT NULL,
       email VARCHAR(100) NOT NULL UNIQUE
   );
   ```
2. Update your database configuration in the project files (if applicable).

## ⚙️ Installation and Run
1. Clone the repository:
2. Import the project into your IDE (Eclipse/IntelliJ).
3. Configure Apache Tomcat server.
4. Deploy the project and start the server.
5. Open `http://localhost:8080/your-project-name` in your browser.

## 🖼️ Screenshots

### Register Page

<img width="960" alt="Image" src="https://github.com/user-attachments/assets/7b6e67ac-314e-4927-aefc-31308cb03364" />

### Login Page

<img width="960" alt="Image" src="https://github.com/user-attachments/assets/b1ec6a61-f412-449d-a64f-61a63220904b" />

### Profile Page

<img width="960" alt="Image" src="https://github.com/user-attachments/assets/fcd9548a-222f-4780-975d-2558d95c0399" />

## 🤝 Contributing
Contributions are welcome! Feel free to fork the repo, make changes, and submit a pull request.

## 📧 Contact
For any queries, feel free to reach out:
- **Name:** Debasish Behera
- **Email:** debasishbehera940@gmail.com



