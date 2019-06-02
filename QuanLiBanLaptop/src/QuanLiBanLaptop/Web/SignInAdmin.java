package QuanLiBanLaptop.Web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignInAdmin
 */
@WebServlet("/SignInAdmin")
public class SignInAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private NguoiDungDAO nddao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			checkLogin(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void checkLogin(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException
	{
		String tennd = request.getParameter("Username");
		String matkhau = request.getParameter("Password");
		
		NguoiDung nd = new NguoiDung(tennd, matkhau);
		
		if(nddao.checkUser(nd))
		{
//			HttpSession ss = request.getSession();
//			ss.setAttribute("username", nd.getTennd());
			//response.sendRedirect("Admin");
		}
		else {
			//response.sendRedirect("SignIn_Admin.jsp?err=1");
		}
	}
}
