package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();

        String myEmail = req.getParameter("email1");
        String myPassword = req.getParameter("pass1");

        try {
            // Database Connection
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reg_db", "root", "Deba@2000");

            // SQL Query to Check Login Credentials
            String sql = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, myEmail);
            ps.setString(2, myPassword);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Creating Session
                HttpSession session = req.getSession();
                session.setAttribute("user", myEmail);

                resp.sendRedirect("welcome.jsp");
            } else {
                // Invalid Credentials
                resp.setContentType("text/html");
                out.println("<h3 style='color:red'> Invalid email or password. Try again.</h3>");
                RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
                rd.include(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.setContentType("text/html");
            out.println("<h3 style='color:red'> Error: " + e.getMessage() + "</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
            rd.include(req, resp);
        }
    }
}

