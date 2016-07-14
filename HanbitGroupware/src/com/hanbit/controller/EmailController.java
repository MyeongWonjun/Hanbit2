package com.hanbit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.command.Command;
import com.hanbit.command.GetEmailListCommand;

/**
 * Servlet implementation class EmailController
 */
@WebServlet("/Email")
public class EmailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String type = request.getParameter("type");
		
		String path = null;
		Command comm = null;
		
		if(type.equals("getEmailList")){
			comm = new GetEmailListCommand();
		}
		
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
