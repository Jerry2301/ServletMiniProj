package com.controller;

import java.io.IOException;
import java.util.LinkedList;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBApplication;
import com.model.Login;

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
		
		String s1=request.getParameter("email");
		String s2=request.getParameter("pass");
		LinkedList<String> lst =new LinkedList<String>();
		lst.add(s1);
		Login l=new Login();
		l.setEmail(s1);
		l.setPass(s2);
		DBApplication db=new DBApplication();
		LinkedList<Object> info = db.getObject(lst);
		boolean b=db.validateUser(l);
		if(b)
		{
			HttpSession session = request.getSession();
			//Session Sets attributes
			session.setAttribute("fname",info.get(0));
			session.setAttribute("rno", info.get(4));
			session.setAttribute("details", info);
			response.sendRedirect("Welcome.jsp");
			
		}
		else
		{
			
			response.sendRedirect("Login.jsp");
		}
		
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
