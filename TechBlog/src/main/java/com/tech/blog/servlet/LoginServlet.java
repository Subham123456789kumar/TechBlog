package com.tech.blog.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import com.mysql.cj.protocol.Message;
import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message1;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;





/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		// fetch user name and password from user db
		
		
		response.setContentType("text/html");
	    PrintWriter out=response.getWriter();
	    
	    
	    String userEmail=request.getParameter("email");
	    String userPassword=request.getParameter("password");
	    
	  
	    
	    
	   
	    UserDao dao=new UserDao(ConnectionProvider.getConnection());
	    
	    User u=dao.getUserByEmailAndPassword(userEmail, userPassword);
	    
	    
	    
	    
	    
	    
	    
	    
	    if(u==null)
	    {
	    	//error
	    	
	    	
	    	Message1 msg=new Message1("Invlid Detail ! try with another","error","alert-danger");
	    	
	    	response.sendRedirect("login_page.jsp");
	    	
	    	HttpSession s=request.getSession();
	    	s.setAttribute("msg", msg);
	    
	    	
	    }
	    else {
	    	
	    	// login success;
	    	
	    	HttpSession s=request.getSession();
	    	s.setAttribute("currentUser", u);
	    	
	    	response.sendRedirect("profile.jsp");
	    	
			
		}
	    
	    
	    
	    
	    
	    
		
		
		
		
		
		
	}

}
