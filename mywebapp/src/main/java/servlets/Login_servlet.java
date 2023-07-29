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
 * Servlet implementation class Login_servlet
 */
@WebServlet("/Login_servlet")
public class Login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uid =request.getParameter("uid");
		String pwd=request.getParameter("pwd");
		
		PrintWriter out= response.getWriter();
		Customer c = DataAccessObject.authenticated(uid, pwd);
		
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
