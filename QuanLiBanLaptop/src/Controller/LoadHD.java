package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.HDDAO;
import Model.HoaDon;

/**
 * Servlet implementation class ControllerHD
 */
public class LoadHD extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HDDAO hdDAO=new HDDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadHD() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			listHoaDon(request,response);
		}catch(SQLException ex) {
			throw new ServletException(ex);
		}
	}
	
	private void listHoaDon(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, ServletException, IOException {	
		List<HoaDon> listHoaDon = hdDAO.listAllHoaDon();
		request.setAttribute("listHoaDon", listHoaDon);
		RequestDispatcher rd = request.getRequestDispatcher("Admin_HD.jsp");
		rd.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
