package com.SHC.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.SHC.model.GoodOrder;

/**
 * Servlet implementation class GoodOrderServlet
 */
@WebServlet("/goodorder")
public class GoodOrderServlet extends HttpServlet {
	static String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	static String user = "scott";
	static String password = "admin";
	static Connection conn = null;
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoodOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodOrder go =new GoodOrder();
		
		
		try {
			
			String ordernum = request.getParameter("billnum");
			String vid = request.getParameter("vid");
			String price = request.getParameter("price");
			String des = request.getParameter("des");
			String userid = request.getParameter("nowuserid");
			
			go.setOrdernum(ordernum);
			go.setVid(Long.parseLong(vid));
			go.setPrice(Integer.parseInt(price));
			go.setDes(des);
			go.setBillstatus("待支付");
			go.setUserid(userid);
			
			String sql="insert into goodorder(ordernum, vid, price, des, status, userid) "
					+ "values(?, ?, ?, ?, ?, ?)";
			PreparedStatement psmt = conn.prepareStatement(sql);
			psmt.setString(1, go.getOrdernum());
			psmt.setObject(2, go.getVid());
			psmt.setObject(3, go.getPrice());
			psmt.setObject(4, go.getDes());
			psmt.setObject(5, go.getBillstatus());
			psmt.setObject(6, go.getUserid());
			psmt.execute();
			response.sendRedirect("dealers?act=searchOrderByOrdernum&ordernum="+ordernum+"&userid="+userid+"");
			//request.getRequestDispatcher("dealers?act=searchOrderByOrdernum").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
