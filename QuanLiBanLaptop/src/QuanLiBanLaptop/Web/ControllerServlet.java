package QuanLiBanLaptop.Web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.NhanVien;

import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;

public class ControllerServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	private NguoiDungDAO nguoidungDAO;
	
	public void init()
	{
		String jdbcURL = getServletContext().getInitParameter("jdbcURL");
		String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
		
		nguoidungDAO = new NguoiDungDAO(jdbcURL, jdbcUsername, jdbcPassword);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String action = request.getServletPath();
		
		try
		{
			switch(action)
			{
				case "/ThemND":
					insertNguoiDung(request, response);
					break;
				case "/XoaND":
					deleteNguoiDung(request, response);
					break;
				case "/SuaND":
					showEditFormNguoiDung(request, response);
					break;
				case "/CapNhatND":
					updateNguoiDung(request, response);
					break;
				case "/TimKiem":
					search(request, response);
					break;
				case "/SignIn_Admin":
					checkLogin(request, response);
					break;
				case "/Admin_ND":
					listNguoiDung(request, response);
				default:
					loadIndexAdmin(request, response);
					break;
			}
		}
		catch(SQLException ect)
		{
			throw new ServletException(ect);
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}
	
	private void loadIndexAdmin(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException
	{
		RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
		rd.forward(request, response);
	}
	
	private void listNguoiDung(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException
	{
		List<NguoiDung> listNguoiDung = nguoidungDAO.listAllNguoiDung();
		request.setAttribute("listNguoiDung", listNguoiDung);
		RequestDispatcher rd = request.getRequestDispatcher("Admin_ND.jsp");
		rd.forward(request, response);
	}
	
	private void search(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException
	{
		List<NguoiDung> lr = nguoidungDAO.listResults(request.getParameter("keyword"));
		
		request.setAttribute("listResults", lr);
		RequestDispatcher rd = request.getRequestDispatcher("SearchEngine.jsp");
		rd.forward(request, response);
	}
	
	private void insertNguoiDung(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException
	{
		String tennd = request.getParameter("tennd");
		String matkhau = request.getParameter("matkhau");
		int cap = Integer.parseInt(request.getParameter("cap"));
		
		NguoiDung nd = new NguoiDung(tennd, matkhau, cap);
		nguoidungDAO.insertNguoiDung(nd);
		
		response.sendRedirect("Admin_ND");
	}
	
	private void deleteNguoiDung(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException
	{
		int mand = Integer.parseInt(request.getParameter("mand"));
		
		NguoiDung nd = new NguoiDung(mand);
		nguoidungDAO.deleteNguoiDung(nd);
		
		response.sendRedirect("Admin_ND");
	}
	
	private void showEditFormNguoiDung(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException
	{
		List<NguoiDung> listNguoiDung = nguoidungDAO.listAllNguoiDung();
		request.setAttribute("listNguoiDung", listNguoiDung);
		
		int mand = Integer.parseInt(request.getParameter("mand"));
		NguoiDung existingNguoiDung = nguoidungDAO.getNguoiDung(mand);
		
		RequestDispatcher rd = request.getRequestDispatcher("Admin_ND_Form.jsp");
		request.setAttribute("nguoidung", existingNguoiDung);
		rd.forward(request, response);
	}
	
	private void updateNguoiDung(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException
	{
		int mand = Integer.parseInt(request.getParameter("mand"));
		String tennd = request.getParameter("tennd");
		String matkhau = request.getParameter("matkhau");
		int cap = Integer.parseInt(request.getParameter("cap"));
		
		NguoiDung nd = new NguoiDung(mand, tennd, matkhau, cap);
		nguoidungDAO.updateNguoiDung(nd);
		
		response.sendRedirect("Admin_ND");
	}
	
	private void checkLogin(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException
	{
		String tennd = request.getParameter("Username");
		String matkhau = request.getParameter("Password");
		
		NguoiDung nd = new NguoiDung(tennd, matkhau);
		
		if(nguoidungDAO.checkUser(nd))
		{
			HttpSession ss = request.getSession();
			ss.setAttribute("username", nd.getTennd());
			response.sendRedirect("Admin");
		}
		else {
			response.sendRedirect("SignIn_Admin.jsp?err=1");
		}
	}
}