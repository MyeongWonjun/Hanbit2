package com.hanbit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.command.Command;
import com.hanbit.command.EmpSearchCommand;
import com.hanbit.command.EmpShowCommand;
import com.hanbit.command.EmployeeCommand;

@WebServlet("/Support")
public class SupportController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String type = request.getParameter("type");
		Command comm = null;
		String path = null;
		if(type.equals("employee_list")){
			comm = new EmployeeCommand();
		}else if(type.equals("search")){
			comm = new EmpSearchCommand();
		}else if(type.equals("show")){
			comm = new EmpShowCommand();
		}
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
	}
}
