package com.hanbit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.command.Command;
import com.hanbit.command.GetAllEmailListCommand;
import com.hanbit.command.GetAnswerCommand;
import com.hanbit.command.GetAnswerCommand2;
import com.hanbit.command.GetDeleteCommand;
import com.hanbit.command.GetDeleteCommand2;
import com.hanbit.command.GetEmailListCommand;
import com.hanbit.command.GetEmailOneListCommand;
import com.hanbit.command.GetSearchEmailListCommand;
import com.hanbit.command.GetSendEmailListCommand;
import com.hanbit.command.GetSendMEEmailListCommand;
import com.hanbit.command.WriteEmailCommand;

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
		if(type.equals("write")){
			comm = new WriteEmailCommand();
		}
		if(type.equals("email_oneList")){
			comm = new GetEmailOneListCommand();
		}
		if(type.equals("getSendEmailList")){
			comm = new GetSendEmailListCommand();
		}
		if(type.equals("getSendMEEmailList")){
			comm = new GetSendMEEmailListCommand();
		}
		if(type.equals("getAllEmailList")){
			comm = new GetAllEmailListCommand();
		}
		if(type.equals("getSearchEmailList")){
			comm = new GetSearchEmailListCommand();
		}
		if(type.equals("getDelete")){
			comm = new GetDeleteCommand();
		}
		if(type.equals("getAnswer")){
			comm = new GetAnswerCommand();
		}
		if(type.equals("getDelete2")){
			comm = new GetDeleteCommand2();
		}
		if(type.equals("getAnswer2")){
			comm = new GetAnswerCommand2();
		}
		
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
