package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/register")
public class Register extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out=resp.getWriter();
		
	String myName=req.getParameter("name1");
	String myEmail=req.getParameter("email1");
	String myPassword=req.getParameter("pass1");
	String myGender=req.getParameter("gender1");
	String myCity=req.getParameter("city1");
	
	try {
		//database connectio
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg_db","root","Deba@2000");
	PreparedStatement ps=con.prepareStatement("INSERT INTO users  VALUES (?, ?, ?, ?, ?)");
		ps.setString(1, myName);
		ps.setString(2, myEmail);
		ps.setString(3, myPassword);
		ps.setString(4, myGender);
		ps.setString(5, myCity);
		int count=ps.executeUpdate();
		if(count>0) {
			resp.setContentType("text/html");
			out.println("<h3 style='color:green'> User registerd successfully</h3>");
			RequestDispatcher rd=req.getRequestDispatcher("/register.jsp");
			rd.include(req, resp);
		}
		else {
			resp.setContentType("text/html");
			out.println("<h3 style='color:red'> User not  registerd  due to some error</h3>");
			RequestDispatcher rd=req.getRequestDispatcher("/register.jsp");
			rd.include(req, resp);
			
		}
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		resp.setContentType("text/html");
		out.println("<h3 style='color:red'> User not  registerd  due to" +e.getMessage()+ "error </h3>");
		RequestDispatcher rd=req.getRequestDispatcher("/register.jsp");
		rd.include(req, resp);
	}
	
	
	
	}

}
