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

@WebServlet("/RegSer1")
public class RegSer1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegSer1() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gen = request.getParameter("gender");
		
		System.out.println("Gender = " + gen);
		
		System.out.println(request.getParameter("eid"));
		
		Student s = new Student();
		s.setCourse(request.getParameter("course"));
		s.setName(request.getParameter("name"));
		s.setAddress(request.getParameter("address"));
		s.setState(request.getParameter("state"));
		s.setGender(request.getParameter("gender"));
		s.setDob(request.getParameter("dob"));
		s.setMob(request.getParameter("mob"));
		s.setEid(request.getParameter("eid"));
		s.setPwd(request.getParameter("pwd"));
		s.setFname(request.getParameter("fname"));
		s.setMname(request.getParameter("mname"));
		s.setPmob(request.getParameter("pmob"));
		request.getSession().setAttribute("student", s);
		 
		if(DAO_STUDENT.register(s)) {
			 RequestDispatcher rd = request.getRequestDispatcher("/Sharmaclasses.jsp");
			 rd.forward(request, response);
		 }
		 else {
			 RequestDispatcher rd = request.getRequestDispatcher("/Join.jsp");
			 PrintWriter out = response.getWriter();
			 out.print("user id or password already existing");
			 rd.forward(request,response); 
		 }
	}
}


