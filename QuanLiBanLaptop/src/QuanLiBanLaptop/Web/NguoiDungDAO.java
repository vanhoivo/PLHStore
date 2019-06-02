package QuanLiBanLaptop.Web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class NguoiDungDAO
{
	private String jdbcURL;
	private String jdbcUsername;
	private String jdbcPassword;
	private Connection jdbcConnection;
	
	public NguoiDungDAO(String jdbcURL, String jdbcUsername, String jdbcPassword)
	{
		this.jdbcURL = jdbcURL;
		this.jdbcUsername = jdbcUsername;
		this.jdbcPassword = jdbcPassword;
	}
	
	protected void connect() throws SQLException
	{
		if(jdbcConnection == null || jdbcConnection.isClosed())
		{
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
			}
			catch(ClassNotFoundException e)
			{
				throw new SQLException(e);
			}
			
			jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		}
	}
	
	protected void disconnect() throws SQLException
	{
		if(jdbcConnection != null && !jdbcConnection.isClosed())
		{
			jdbcConnection.close();
		}
	}
	
	public List<NguoiDung> listAllNguoiDung() throws SQLException
	{
		List<NguoiDung> listNguoiDung = new ArrayList<>();
		
		String sql = "select * from NguoiDung";
		
		connect();
		
		Statement stm = jdbcConnection.createStatement();
		ResultSet rss = stm.executeQuery(sql);
		
		while(rss.next())
		{
			int mand = rss.getInt("MaND");
			String tennd = rss.getString("TenND");
			String matkhau = rss.getString("MatKhau");
			int cap = rss.getInt("Cap");
			
			NguoiDung nguoidung = new NguoiDung(mand, tennd, matkhau, cap);
			listNguoiDung.add(nguoidung);
		}
		
		rss.close();
		stm.close();
		disconnect();
		
		return listNguoiDung;
	}
	
	public List<NguoiDung> listResults(String keyword) throws SQLException
	{
		List<NguoiDung> lr = new ArrayList<>();
		
		String sql = "select * from NguoiDung where TenND LIKE N'%" + keyword + "%'";
		
		connect();
		
		PreparedStatement ps = jdbcConnection.prepareStatement(sql);
		//ps.setString(1, keyword);
		
		ResultSet rss = ps.executeQuery();
		
		while(rss.next())
		{
			int mand = rss.getInt("MaND");
			String tennd = rss.getString("TenND");
			String matkhau = rss.getString("MatKhau");
			int cap = rss.getInt("Cap");
			
			NguoiDung nd = new NguoiDung(mand, tennd, matkhau, cap);
			lr.add(nd);
		}
		
		rss.close();
		ps.close();
		disconnect();
		
		return lr;
	}
	
	public NguoiDung getNguoiDung(int mand) throws SQLException
	{
		NguoiDung nguoidung = null;
		String sql = "select * from NguoiDung where MaND=?";
		
		connect();
		
		PreparedStatement ps = jdbcConnection.prepareStatement(sql);
		ps.setInt(1, mand);
		
		ResultSet rss = ps.executeQuery();
		
		if(rss.next())
		{
			String tennd = rss.getString("TenND");
			String matkhau = rss.getString("MatKhau");
			int cap = rss.getInt("Cap");
			
			nguoidung = new NguoiDung(mand, tennd, matkhau, cap);
		}
		
		rss.close();
		ps.close();

		disconnect();
		
		return nguoidung;
	}
	
	public boolean insertNguoiDung(NguoiDung nguoidung) throws SQLException
	{
		String sql = "insert into NguoiDung(TenND, MatKhau, Cap) values(?, ?, ?)";
		
		connect();
		
		PreparedStatement ps = jdbcConnection.prepareStatement(sql);
		ps.setString(1, nguoidung.getTennd());
		ps.setString(2, nguoidung.getMatkhau());
		ps.setInt(3, nguoidung.getCap());
		
		boolean rowInserted = ps.executeUpdate() > 0;
		
		ps.close();
		disconnect();
		
		return rowInserted;
	}
	
	public boolean deleteNguoiDung(NguoiDung nguoidung) throws SQLException
	{
		String sql = "delete from NguoiDung where MaND=?";
		
		connect();
		
		PreparedStatement ps = jdbcConnection.prepareStatement(sql);
		ps.setInt(1, nguoidung.getMand());
		
		boolean rowDeleted = ps.executeUpdate() > 0;
		
		ps.close();
		disconnect();
		
		return rowDeleted;
	}
	
	public boolean updateNguoiDung(NguoiDung nguoidung) throws SQLException
	{
		String sql = "update NguoiDung set TenND=?, MatKhau=?, Cap=? where MaND=?";
		
		connect();
		
		PreparedStatement ps = jdbcConnection.prepareStatement(sql);
		ps.setString(1, nguoidung.getTennd());
		ps.setString(2, nguoidung.getMatkhau());
		ps.setInt(3, nguoidung.getCap());
		ps.setInt(4, nguoidung.getMand());
		
		boolean rowUpdated = ps.executeUpdate() > 0;
		
		ps.close();
		disconnect();
		
		return rowUpdated;
	}
	
	public boolean checkUser(NguoiDung nd) throws SQLException
	{
		String sql = "select * from NguoiDung where TenND=? and MatKhau=?;";
		
		connect();
		
		PreparedStatement ps = jdbcConnection.prepareStatement(sql);
		ps.setString(1, nd.getTennd());
		ps.setString(2, nd.getMatkhau());
		
		ResultSet rss = ps.executeQuery();
		
		if(!rss.next())
		{
			return false;
		}
		else
		{
			return true;
		}
	}
}