package xiao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class dbhelper {
	private String dburl = "jdbc:mysql://localhost:3306/usertest?user=root&password=zhangtianxiao";
	Connection con;
	Statement state;
	ResultSet result;
	public dbhelper()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(dburl);
			System.out.println("连接成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean insert(String url)
	{
		try {
			state = con.createStatement();
			System.out.println(url);
			state.execute(url);
			System.out.println("添加成功");
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	
	public boolean chekuser(String username,String password)
	{
		try {
			state = con.createStatement();
			String url = "select password from user where username = '" + username + "';";
			System.out.println(url);
			result = state.executeQuery(url);
			String passworddb = "";
			System.out.println(password);
			
			while(result.next())
			{
				passworddb = result.getString("password");
				System.out.println(passworddb);
			}
			if(passworddb.equals(password))
			{
				return true;
			}
			else
			{
				return false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
		
	}
	
	public user getUserInfo(String username)
	{
		user userinfo = new user();
		try {
			state = con.createStatement();
			String url = "select * from user where username = '" + username + "';";
			result = state.executeQuery(url);
			while(result.next())
			{
				userinfo.setUsername(result.getString("username"));
				userinfo.setGender(result.getString("gender"));
				userinfo.setEmail(result.getString("email"));
				userinfo.setPhonenumber(result.getString("phonenumber"));
				userinfo.setImg(result.getString("img"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userinfo;
	}
	
	public void recoverySource()
	{
		if(result != null)
		{
			try {
				result.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(state != null)
		{
			try {
				state.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(con != null)
		{
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
