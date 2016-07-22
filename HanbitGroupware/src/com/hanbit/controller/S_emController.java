package com.hanbit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.command.Command;
import com.hanbit.command.Em_oneCommand;
import com.hanbit.command.InsertPageCommand;
import com.hanbit.command.SetDeleteCommand;
import com.hanbit.command.SetInsertCommand;
import com.hanbit.command.SetUpdateCommand;
import com.hanbit.command.SetUpdateCommand2;
import com.hanbit.command.Setting_em_modifyCommand;
import com.hanbit.command.Setting_listCommand;

@WebServlet("/s_em")
public class S_emController extends HttpServlet{
	private static final long serialVersionUID=1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String type = request.getParameter("type");
		String path = null;
		Command comm = null;
		
		if(type.equals("setting_em")){
			comm = new Em_oneCommand();
		}
		if(type.equals("setUpdate")){
			comm = new SetUpdateCommand();
		}
		if(type.equals("setting_list")){
			comm = new Setting_listCommand();
		}
		if(type.equals("setting_em_modify")){
			comm = new Setting_em_modifyCommand();
		}
		if(type.equals("setUpdate2")){
			comm= new SetUpdateCommand2();
		}
		if(type.equals("setInsert")){
			comm= new SetInsertCommand();
		}
		if(type.equals("setDelete")){
			comm = new SetDeleteCommand();
		}
		if(type.equals("insertPage")){
			comm = new InsertPageCommand();
		}
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	

}