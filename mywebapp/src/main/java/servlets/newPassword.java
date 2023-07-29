package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Student;
import dao.DAO_STUDENT;

@WebServlet("/newPassword")
public class newPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public newPassword() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String npwd = request.getParameter("password");
		String eid = ((Student)request.getSession().getAttribute("student")).getEid();
		DAO_STUDENT.newPassword(eid, npwd);
		response.sendRedirect("Welcome.jsp");
	}

}
