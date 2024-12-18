package ems;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String msg =null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "root");
			PreparedStatement pstmt = con1.prepareStatement("delete from emp where id =?");
			pstmt.setInt(1, id);
			int rows = pstmt.executeUpdate();
			
			System.out.println(rows  +" rows is Deleted.......");
			if (rows > 0  ) {
				msg ="Employee with ID : "+id +" is Successfully Deleted";
			}
			else {
				msg =" Please try again ";
			}
			req.setAttribute("msg",msg);
			pstmt.close();
			con1.close();
			


		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		



		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "root");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from emp");
			req.setAttribute("rs", rs);
			RequestDispatcher rd = req.getRequestDispatcher("/allemp");
			rd.forward(req, resp);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		

	}

}
