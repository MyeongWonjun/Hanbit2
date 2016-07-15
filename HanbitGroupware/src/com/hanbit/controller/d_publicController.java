package com.hanbit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.command.Command;
import com.hanbit.command.GetEmailListCommand;
import com.hanbit.command.WriteEmailCommand;
import com.hanbit.command.p_DeleteCommand;
import com.hanbit.command.p_ListCommand;
import com.hanbit.command.p_ModifyCommand;
import com.hanbit.command.p_UpdateCommand;
import com.hanbit.command.p_viewCommand;
import com.hanbit.command.p_writeCommand;
import com.hanbit.command.p_writeOKCommand;

@WebServlet("/Download")
public class d_publicController extends HttpServlet{
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
	
		if(type.equals("p_list")){
			comm = new p_ListCommand();
		}
		if(type.equals("p_write")){
			comm = new p_writeCommand();
		}
		if(type.equals("p_writeOK")){
			comm = new p_writeOKCommand();
		}
		if(type.equals("p_view")){
			comm = new p_viewCommand();
		}
		if(type.equals("p_del")){
			comm = new p_DeleteCommand();
		}
		if(type.equals("p_update")){
			comm = new p_UpdateCommand();
		}
		if(type.equals("p_modify")){
			comm = new p_ModifyCommand();
		}
				
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
		

}
