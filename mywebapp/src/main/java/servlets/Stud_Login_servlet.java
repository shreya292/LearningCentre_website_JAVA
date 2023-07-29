package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Customer;
import dao.DataAccessObject;

/**
 * Servlet implementation class Stud_Login_servlet
 */
@WebServlet("/Stud_Login_servlet")
public class Stud_Login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Stud_Login_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String eid =request.getParameter("eid");
		String name= request.getParameter("name");
		String gender =request.getParameter("gender");
		
		PrintWriter out= response.getWriter();
		
		if(c!=null) {
			// out.print("WELCOME SHREYA");
			RequestDispatcher rd= request.getRequestDispatcher("/home.jsp");
			request.getSession().setAttribute("customer",c);
			rd.forward(request, response);
		}	
		else
			// out.print("Invalid User id or pwd");
			response.sendRedirect("error.jsp");
	}

}
