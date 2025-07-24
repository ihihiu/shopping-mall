package com.dev.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dev.vo.MemberVO;

public class MemberDAO {

	private static MemberDAO dao = new MemberDAO();
	
	private MemberDAO() {}
	
	public static MemberDAO getInstance()
	{
		return dao;
	}
	private Connection connect()
	{
		Connection conn = null;
		
		try
		{
			//1. JDBC Driver ·Îµù
			Class.forName("com.mysql.jdbc.Driver");
	
			//2. Server Connection
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/normcore?serverTimezone=Asia/Seoul", "root", "1234");
		}
		catch(Exception e)
		{
			System.out.println("Conn error!!!!");
		}
		return conn;
	}
	
	private void close(Connection conn, PreparedStatement ps)
	{
		if(ps != null)
		{
			try
			{
				ps.close();
			}catch(Exception e) {}
		}
		if(conn != null)
		{
			try
			{
				conn.close();
			}catch(Exception e) {}
		}	
	}
	
	private void close(Connection conn, PreparedStatement ps, ResultSet rs)
	{
		if(ps != null)
		{
			try
			{
				ps.close();
			}catch(Exception e) {}
		}
		if(conn != null)
		{
			try
			{
				conn.close();
			}catch(Exception e) {}
		}
		if(rs != null)
		{
			try
			{
				rs.close();
			}catch(Exception e) {}
		}
	}
	
	public void memberInsert(MemberVO member)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("insert into member values(?,?,?,?,?,?,?);");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getMail());
			pstmt.setString(5, member.getPhone());
			pstmt.setString(6, member.getZip());
			pstmt.setString(7, member.getAdd());
			
			pstmt.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("mInsert error!!!!" + e);
		}
		finally
		{
			close(conn, pstmt);
		}
	}

	public boolean memberLogin(MemberVO acc) {
		Connection con = null;
		PreparedStatement psmt = null;
		boolean existAvail = false;
		ResultSet rs = null;
		try
		{
			con = connect();
			psmt = con.prepareStatement("select id from member where id = ? and password = ?;");
			psmt.setString(1, acc.getId());
			psmt.setString(2, acc.getPasswd());			
			rs = psmt.executeQuery();
			
			if(rs.next()) existAvail = true;
			else existAvail= false;
			
		}catch(Exception e)
		{
			System.out.print("accountLogin Error!!!");
		}
		finally
		{
			close(con,psmt);
		}
		
		return existAvail;
	}

}
