package com.controller;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBApplication;
import com.model.Register;

public class DisplayServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
     public DisplayServlet2() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("dsplayserv1");
		DBApplication db=new DBApplication();
		List<Register> lst=db.getAllData();
		request.setAttribute("usrList",lst);
		System.out.println("test1");
		RequestDispatcher view = request.getRequestDispatcher("DisplayAll.jsp");
		System.out.println("test2");
		view.forward(request, response);
		
		
		
		
		
		/*HttpSession session=request.getSession(true);
		session.setAttribute("data",lst);
		response.sendRedirect("DisplayAll.jsp");*/
	
	
		/*request.setAttribute("empList",lst);
		RequestDispatcher view = request.getRequestDispatcher("list.jsp");
		view.forward(request, response);*/

		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
