package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Student;
import dao.DAO_STUDENT;

@WebServlet("/LogSer1")
public class LogSer1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogSer1() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String eid =request.getParameter("eid");
		String pwd=request.getParameter("pwd");
		
		PrintWriter out= response.getWriter();
	    Student s = DAO_STUDENT.authenticated(eid, pwd);
		
		if(s != null) {
			RequestDispatcher rd= request.getRequestDispatcher("/Welcome.jsp");
			request.getSession().setAttribute("student",s);
			rd.forward(request, response);
		}	
		else
			
			response.sendRedirect("InvalidUser.jsp");
	}

}
