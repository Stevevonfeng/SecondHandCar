package com.servlet;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.SHC.servlet.BaseServlet;
import com.model.Car2;
import com.model.Comments;
import com.model.Users;
import com.service.CarServiceImpl;
import com.service.CommentService;
import com.service.ICarService;
import com.service.ICommentService;
import com.service.IListService;
import com.service.ListServiceImpl;
import com.service.Utils;

/**
 * Servlet implementation class CarServlet
 */
@WebServlet("/list")
public class ListServlet extends BaseServlet {

	private static final long serialVersionUID = 1L;

	public void ListShow(HttpServletRequest request, HttpServletResponse response) {
		try {
			
			int pz = 3;// 姣忛〉鏄剧ず鏁�
			int cp = 1;// 褰撳墠椤甸潰
			String currentPage = request.getParameter("cp");
			if (currentPage != null) {
				cp = Integer.parseInt(currentPage);
			}

			IListService ics = new ListServiceImpl();
			List<Car2> cars = ics.ListShow(cp);

			// 璁＄畻鎬昏褰曟暟
			int count = ics.carsNum();
			int totalPage = count % pz == 0 ? count / pz : count / pz + 1;

			request.setAttribute("totalPage", totalPage);
			request.setAttribute("cp", cp);
			request.setAttribute("cars", cars);
			request.getRequestDispatcher("listing-classic.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void CarShow(HttpServletRequest request, HttpServletResponse response) throws Exception {
		long vid = Long.parseLong(request.getParameter("vid"));
		String brand = request.getParameter("brand");
		String userid = request.getParameter("userid");
		
		
		ICarService ics = new CarServiceImpl();
		ArrayList<Car2> carss = ics.findObject(Car2.class, vid);
		Car2 car1 = carss.get(0);
		int count = car1.getClickcount();
		count++;
		car1.setClickcount(count);
		ics.upCar(car1, vid);
		
		IListService ils = new ListServiceImpl();	
		Car2 car = ils.CarShow(vid);
		List<Car2> cars = ils.SimilarCar(brand,vid);
		Users user = ils.UserShow(userid);
		List<String>  fileNames = Utils.findCarImgs("C:/dbimgs/"+vid);
		
		List<Comments> list = ics.findObject(Comments.class, vid);
		
		System.out.println("CarShow--comment--"+list);
		
		request.setAttribute("comments", list);
		request.setAttribute("car", car);
		request.setAttribute("cars", cars);
		request.setAttribute("seller", user);
		request.setAttribute("fileNames", fileNames);
		request.getRequestDispatcher("listing-detail-2.jsp").forward(request, response);
	}
	
	public void NewListShow(HttpServletRequest request, HttpServletResponse response){
		try {
			int pz = 3;
			int cp = 1;
			String currentPage = request.getParameter("cp");
			if (currentPage != null) {
				cp = Integer.parseInt(currentPage);
			}
			IListService ils = new ListServiceImpl();
			List<Car2> cars = ils.NewListShow(cp);
			
			int count = ils.carsNum2("newcar");
			int totalPage = count % pz == 0 ? count / pz : count / pz + 1;

			request.setAttribute("totalPage", totalPage);
			request.setAttribute("cp", cp);
			request.setAttribute("cars", cars);
			request.getRequestDispatcher("listing-classic.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void UsedListShow(HttpServletRequest request, HttpServletResponse response){
		try {
			int pz = 3;
			int cp = 1;
			String currentPage = request.getParameter("cp");
			if (currentPage != null) {
				cp = Integer.parseInt(currentPage);
			}
			IListService ils = new ListServiceImpl();
			List<Car2> cars = ils.UsedListShow(cp);
			
			int count = ils.carsNum2("usedcar");
			int totalPage = count % pz == 0 ? count / pz : count / pz + 1;

			request.setAttribute("totalPage", totalPage);
			request.setAttribute("cp", cp);
			request.setAttribute("cars", cars);
			request.getRequestDispatcher("listing-classic.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
}
