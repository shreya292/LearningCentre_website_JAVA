package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Driver;

import beans.Contact;
import beans.Student;

public class DAO_Contact {
	static  String url       = "jdbc:mysql://localhost:3306/mydb";
	 static   String user      = "root";
	 static   String password  = "";
	 static {
		 try {
			DriverManager.registerDriver(new Driver());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
	 
	 public static boolean register(Contact c) {
		try {
			Connection con= DriverManager.getConnection(url,user,password);
				
			String sql = "insert into contact values (?,?,?,?)";
				
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,c.getName());
			ps.setString(2,c.getEid());
			ps.setString(3,c.getMob());
			ps.setString(4,c.getMsg());
				
			int  result = ps.executeUpdate();
			if(result > 0) {
				//con.commit();
				return true;
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
