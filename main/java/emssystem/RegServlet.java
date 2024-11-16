package ems;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/reg",loadOnStartup = 0)
public class RegServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String id = req.getParameter("id");
		String  fname= req.getParameter("fname");
		String email = req.getParameter("email");
		String salary = req.getParameter("salary");
		String deptno= req.getParameter("deptno");
		String  pswrd= req.getParameter("pswd");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "root");
			PreparedStatement pstmt = con.prepareStatement("insert into emp values ( ?,?,?,?,?,?)");
			
			pstmt.setInt(1, Integer.parseInt(id));
			pstmt.setString(2,fname);
			pstmt.setString(3, email);
			pstmt.setDouble(4, Double.parseDouble(salary));
			pstmt.setInt(5, Integer.parseInt(deptno));
			pstmt.setString(6, pswrd);
			int rows = pstmt.executeUpdate();
			System.out.println(rows + "  is created");
			PrintWriter pw = resp.getWriter();
			pw.write("<html><body><h1 id ='msg'  > Registration Done ......  <h1>"
					+"</body></html>");
			
			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.include(req, resp);
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}
	
}
