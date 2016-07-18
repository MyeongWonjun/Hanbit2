package com.hanbit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.command.Board_ListCommand;
import com.hanbit.command.Board_WriteCommand;
import com.hanbit.command.Board_WriteOKCommand;
import com.hanbit.command.Command;


@WebServlet("/BoardController")
public class BoardController extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String type = request.getParameter("type");
		System.out.println("보드컨트롤러"+type);
		String path = null;
		Command comm = null;
		
		
		if(type.equals("boardList")){
			System.out.println("보드리스트");
			comm = new Board_ListCommand();
		}else if(type.equals("boardWrite")){
			comm = new Board_WriteCommand();
		}else if(type.equals("boardWriteOK")){
			comm = new Board_WriteOKCommand();
		}
		
		
		path = comm.exec(request, response);
		
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
