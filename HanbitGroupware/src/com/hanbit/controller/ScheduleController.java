package com.hanbit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.command.Command;
import com.hanbit.command.Schedule_btCommand;
import com.hanbit.command.Schedule_pCommand;
import com.hanbit.command.Schedule_vacationCommand;

@WebServlet("/Schedule")
public class ScheduleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String type = request.getParameter("type");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String id = request.getParameter("id");
		
		Command comm = null;
		String path = null;
		
		if(type.equals("personal")){
			comm = new Schedule_pCommand(id);
		}else if(type.equals("vacation")){
			comm = new Schedule_vacationCommand();
		}else if(type.equals("bt")){
			comm = new Schedule_btCommand();
		}
		
		path = comm.exec(request, response);
		request.setAttribute("year", year);
		request.setAttribute("month", month);
		request.getRequestDispatcher(path).forward(request, response);
	}
}
