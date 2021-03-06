package com.hanbit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.hanbit.command.Command;
import com.hanbit.command.LoginCommand;
import com.hanbit.command.LogoutCommand;

@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("TEXT/HTML;CHARSET=UTF-8");
		String type = request.getParameter("type");
		String path = null;
		Command comm = null;
		if(type.equals("login")){
			comm = new LoginCommand();
		}else if(type.equals("logout")){
			comm = new LogoutCommand();
		}
		path = comm.exec(request, response);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
