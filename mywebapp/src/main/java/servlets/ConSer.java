package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Contact;
import beans.Student;
import dao.DAO_Contact;
import dao.DAO_STUDENT;

@WebServlet("/ConSer")
public class ConSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ConSer() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eid =request.getParameter("eid");
		
		System.out.println(eid);
		
		Contact c = new Contact();
		c.setName(request.getParameter("name"));
		c.setEid(request.getParameter("eid"));
		c.setMob(request.getParameter("mob"));
		c.setMsg(request.getParameter("msg"));
		 
		if(DAO_Contact.register(c)) {
			 RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			 rd.forward(request, response);
		 }
		 else {
			 RequestDispatcher rd = request.getRequestDispatcher("/error.jsp");
			 PrintWriter out = response.getWriter();
			 out.print("user id or password already existing");
			 rd.forward(request,response);
		 }
	}
}
