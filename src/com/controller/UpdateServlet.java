package com.controller;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DBApplication;
import com.model.Register;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(false); //Session Created
		String s1 = request.getParameter("fname");
		String s2 = request.getParameter("lname");
		String s3 = request.getParameter("email");
		double s4 = Double.parseDouble(request.getParameter("bal"));
		int s5 = (int) session.getAttribute("rno"); 
		
		Register r=new Register();
		r.setRno(s5);
		r.setFname(s1);
		r.setBal(s4);
		r.setEmail(s3);
		r.setLname(s2);
		
		DBApplication db=new DBApplication();
		LinkedList<Register> lr = new LinkedList<Register>();
		lr.add(r);
		int j=db.updateData(lr);
		if(j>0)
		{
			session = request.getSession(true);
			session.getAttribute("details");
			response.sendRedirect("Updated.jsp");

		}
		doGet(request, response);
	}

}
