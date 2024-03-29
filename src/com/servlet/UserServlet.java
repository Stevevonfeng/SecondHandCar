package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.model.EMail;
import com.model.Users;
import com.service.CarServiceImpl;
import com.service.Conversion;
import com.service.ICarService;
import com.service.IUserService;
import com.service.JdbcUtil;
import com.service.UserServiceImpl;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/User")
public class UserServlet extends BaseServlet {

	IUserService userService = new UserServiceImpl();

	// Sign Up
	public void adduser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String userpassword = request.getParameter("userpassword");
		String repassword = request.getParameter("repassword");
		String signname = request.getParameter("username");
		

		List<Users> list = userService.findUserEmail();
		int number = list.size();
		boolean cc = true;
		for(int i=0;i<number;i++){
			String username = list.get(i).getUsername();
			if(signname.equals(username)){
				cc=false;
				request.setAttribute("status2", "have2");
			}
		}
		
		Users user = new Users();
		Conversion.req_obj(user, request);

		if (repassword.equals(userpassword) && cc==true ) {
			userService.addUser(user);
		}

		List<Users> list2 = userService.findUserEmail();
		
		int number2 = list2.size();

		if (!repassword.equals(userpassword)) {
			request.setAttribute("statu", "eq");
			request.getRequestDispatcher("home.jsp").forward(request, response);
		} else if (number == number2) {
			
		 if(cc==true){
			 request.setAttribute("status", "have");
		 }
			request.getRequestDispatcher("home.jsp").forward(request, response);

		} else { 
			String email1 = request.getParameter("email");		
			user = userService.searchUser2(email1);
			request.getSession().setAttribute("user", user); 

			request.getRequestDispatcher("home.jsp").forward(request, response);
		}

	}

	// Login
	public void searchuser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String loginname = request.getParameter("loginname");

		String login = "";

		if (login.length() > 7) {
			login = loginname.substring(loginname.length() - 7);
		}

		String loginpassword = request.getParameter("loginpassword");

		Users user = userService.searchUser(loginname);

		String ver_username = user.getUsername();
		String ver_email = user.getEmail();
		String ver_password = user.getUserpassword();

		if (login.equals("@qq.com")) {

			if (loginname.equals(ver_email) && loginpassword.equals(ver_password)) {

				userService.UpdateStatus(ver_email);

				request.getSession().setAttribute("user", user);

				request.getRequestDispatcher("home.jsp").forward(request, response);
			}

		} else {

			if (loginname.equals(ver_username) && loginpassword.equals(ver_password)) {

				userService.UpdateStatus2(ver_username);

				request.getSession().setAttribute("user", user);

				request.getRequestDispatcher("home.jsp").forward(request, response);
			}
		}

	}

	// SendEmail
	public void SendEmail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String loginemail = request.getParameter("loginemail");

		Users user = userService.searchUser2(loginemail);
       
		int number = (int) ((Math.random() * 9 + 1) * 100000);
		
		if (user != null) {
			
			EMail.ValidationInformation(user,loginemail,number);
			
			 String ver_validatecode = String.valueOf(number);
			 userService.UpValidate(loginemail, ver_validatecode);
			 
			 
		} else {
			JOptionPane.showMessageDialog(null, "���Ƚ���ע��!");
			request.getRequestDispatcher("home.jsp").forward(request, response);

		}
	}
	
	public void ValidateCode (HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String validatecode = request.getParameter("validatecode");
		//ȡver_validatecode
		Users user = userService.searchUser3(validatecode);
		String ver_email = user.getEmail();
		if(user!=null){ 
			request.getSession().setAttribute("user", user);
			userService.UpdateStatus(ver_email);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		} else {
			JOptionPane.showMessageDialog(null, "��֤�����!");  
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}

		
	}
	

	// ToUpdate-searchUser
	public void ToUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");

		Users user = userService.searchUser(username);

		request.setAttribute("user", user);

		request.getRequestDispatcher("Update-profile-settings.jsp").forward(request, response);

	}

	// Update
	public void Update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		Users user = new Users();
		Conversion.req_obj(user, request);

		userService.Update(user);
		request.getSession().removeAttribute("user");  
		String userpassword = request.getParameter("userpassword");
		String cpassword = request.getParameter("c-password");

		if (cpassword.equals(userpassword)) {
			
			request.getSession().setAttribute("user", user);
			request.getRequestDispatcher("home.jsp").forward(request, response);

		}
	}

	// SignOut
	public void SignOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String username = request.getParameter("username");

		userService.SignOut(username);

		request.getSession().removeAttribute("user");

		Object obj = request.getSession().getAttribute("user");

		if (obj == null) {
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
	}

	// PasswordRecover
	public void PasswordRecover(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String useremail = request.getParameter("useremail");

		String npassword = request.getParameter("npassword");

		userService.PasswordRecover(useremail, npassword);

		request.getRequestDispatcher("home.jsp").forward(request, response);
	}

}
