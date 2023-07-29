package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Driver;

import beans.Student;

public class DAO_STUDENT {
	 static  String url       = "jdbc:mysql://localhost:3306/mydb";
	 static   String user      = "root";
	 static   String password  = "";
	 static {
		 try {
			DriverManager.registerDriver(new Driver());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	 }
	 public static Student authenticated(String eid, String pwd) {
		 System.out.println(eid);
		 System.out.println(pwd);
		try {
			Connection con= DriverManager.getConnection(url,user,password);
			String sql ="select * from student where eid = ? and pwd = ? ";
				
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, eid);
			ps.setString(2, pwd);
	
			ResultSet rs = ps.executeQuery();
				
			if(rs.next()) {
				Student s = new Student();
				s.setName(rs.getString("name"));
				s.setCourse(rs.getString("course"));
				s.setAddress(rs.getString("address"));
				s.setState(rs.getString("state"));
				s.setMob(rs.getString("mob"));
				s.setGender(rs.getString("gender"));
				s.setEid(rs.getString("eid"));
				s.setPwd(rs.getString("pwd"));
				s.setFname(rs.getString("fanme"));
				s.setMname(rs.getString("mname"));
				
				return s;
					
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return null;
	}
	
	 public static boolean register(Student s) {
		 System.out.println(s.getEid());
		try {
			Connection con= DriverManager.getConnection(url,user,password);
				
			String sql = "insert into student values (?,?,?,?,?,?,?,?,?,?,?,?)";
				
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,s.getCourse());
			ps.setString(2,s.getName());
			ps.setString(3,s.getAddress());
			ps.setString(4,s.getState());
			ps.setString(5,s.getGender());
			ps.setString(6,s.getDob());
			ps.setString(7,s.getMob());
			ps.setString(8,s.getEid());
			ps.setString(9,s.getPwd());
			ps.setString(10,s.getFname());
			ps.setString(11,s.getMname());
			ps.setString(12,s.getPmob());
				
			int  result = ps.executeUpdate();
			if(result > 0) {
				return true;
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static boolean newPassword(String eid, String pwd) {
		try {
			Connection con= DriverManager.getConnection(url,user,password);
			
			String sql = "update student set pwd = ? where eid = ?";
				
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, pwd);
			ps.setString(2,eid);
			int  result = ps.executeUpdate();
			if(result > 0) {
				return true;
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
}
