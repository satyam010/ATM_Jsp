package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





import dao.LoginInfo;

import dbutil.DBUtil;

public class LoginDAO {
	
	public static List<mini> getAllProducts(String username)
	{

	List<mini> productList = new ArrayList<mini>();
	try
	{
		Connection conn = DBUtil.getConnection();
		Statement st= conn.createStatement();
		PreparedStatement ps= conn.prepareStatement("SELECT * FROM mini WHERE username = ?");
		ps.setString(1, username);
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			mini product = new mini(rs.getInt("amount"),rs.getString("type"),rs.getString("username"),rs.getInt("abalance"),rs.getString("tdate"));
			
			productList.add(product);
		}
		
		DBUtil.closeConnection(conn);
		
	}
	
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return productList;
}
	
	public static void main(String[]args)
	{
		getAllProducts("satyam");
	}

	public static boolean isUserValid(LoginInfo userDetails)
	{
		boolean validStatus = false;
		try
		{
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM login_info WHERE user_name = '"+userDetails.getUserName()+"' AND password = '"+userDetails.getPassword()+"'");
			while(rs.next())
			{
				validStatus = true;
			}
			
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return validStatus;
	}
	
	public static int getBalance(String username)
	{
		
		int balance = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("SELECT balance FROM login_info WHERE user_name = ?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				balance = (rs.getInt("balance"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return balance;
	}
	
	
	public static String getPaswword(String username)
	{
		String cpswd = "";
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("SELECT password FROM login_info WHERE user_name = ?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				cpswd = (rs.getString("balance"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return cpswd;
	}
	
	
	public static void updateBalance(String username,int balance)
	{
		
		
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("UPDATE login_info SET  balance=? WHERE user_name=?");
			ps.setInt(1, balance);
			ps.setString(2, username);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	public static void updatePassword(String username,String password)
	{
		
		
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("UPDATE login_info SET  password=? WHERE user_name=?");
			ps.setString(1, password);
			ps.setString(2, username);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	public static void addStatement(int amount,String type, String userName, int abalance,String tdate)
	{
		
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("INSERT INTO mini VALUES(?,?,?,?,?)");
			ps.setInt(1,amount);
			ps.setString(2, type);
			ps.setString(3,userName);
			ps.setInt(4, abalance);
			ps.setString(5, tdate);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	
	}
	
	
}



