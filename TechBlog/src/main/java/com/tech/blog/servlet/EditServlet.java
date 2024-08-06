package com.tech.blog.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;

/**
 * Servlet implementation class EditServlet
 */
@MultipartConfig
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
	/*	response.setContentType("text/html");
	    PrintWriter out=response.getWriter();
	    
	    
	    
	    // featch all data from profile
	    
	    
	 String userEmail=  request.getParameter("user_email");
		
	 String userName=  request.getParameter("user_name");
	 String userPassword=  request.getParameter("user_password");
	 String userAbout=  request.getParameter("user_about");

	 
	// Part part=request.getPart("image");
	 
	// String imageName=part.getSubmittedFileName();
	 
	 
	 //get the user from the session
	 
	 HttpSession s=request.getSession();
	User user=(User)s.getAttribute("currentUser");
	
	 user.setEmail(userEmail);
	 user.setName(userName);
	 user.setPassword(userPassword);
	 user.setAbout(userAbout);
	// user.setProfile(imageName);
	 
	 
	 // update databases
	 
	 
	 UserDao userDao=new UserDao(ConnectionProvider.getConnection());
	boolean  ans=userDao.updateUser(user);
	 
	
	if (ans) {
		System.out.println("updated");
		
	} else {
		
		
		System.out.println("not updated");

	}
	 

		
		*/
		
		
		
	 
	 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		
		
		
		
		response.setContentType("text/html");
	    PrintWriter out=response.getWriter();
	    
	    
	    
	    // featch all data from profile
	    
	    
	 String userEmail=  request.getParameter("user_email");
		
	 String userName=  request.getParameter("user_name");
	 String userPassword=  request.getParameter("user_password");
	 String userAbout=  request.getParameter("user_about");

	 
	 Part part=request.getPart("image");
	String imageName=part.getSubmittedFileName();
	 
	 
	 //get the user from the session
	 
	 HttpSession s=request.getSession();
	User user=(User)s.getAttribute("currentUser");
	
	 user.setEmail(userEmail);
	 user.setName(userName);
	 user.setPassword(userPassword);
	 user.setAbout(userAbout);
	 user.setProfile(imageName);
	 
	 
	 // update databases
	 
	 
	 UserDao userDao=new UserDao(ConnectionProvider.getConnection());
	boolean  ans=userDao.updateUser(user);
	 
	
	if (ans) {
		
		
		String path = getServletContext().getRealPath("/") + "pick" + File.separator + user.getProfile();

		Helper.deleteFile(path);
			
			if (Helper.saveFile(part.getInputStream(), path)) {
				
				out.println(" profile updated");

				
			}
			
		
		
	} else {
		
		
		out.println("not updated");

	}
	 
		
	 
		
	}

}
