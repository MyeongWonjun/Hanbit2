package com.hanbit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hanbit.command.Board_ViewCommand;
import com.hanbit.command.Board_CommentCommand;
import com.hanbit.command.Board_CommentDelCommand;
import com.hanbit.command.Board_Del_Command;
import com.hanbit.command.Board_ListCommand;
import com.hanbit.command.Board_Modi_Command;
import com.hanbit.command.Board_SearchCommand;
import com.hanbit.command.Board_SelectDeleteCommand;
import com.hanbit.command.Board_UpCommand;
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
		String path = null;
		Command comm = null;

		if(type.equals("boardList")){
			comm = new Board_ListCommand();
		}else if(type.equals("boardWrite")){
			comm = new Board_WriteCommand();
		}else if(type.equals("boardWriteOK")){
			comm = new Board_WriteOKCommand();
		}else if(type.equals("boardView")){
			comm = new Board_ViewCommand();
		}else if(type.equals("boardDel")){
			comm = new Board_Del_Command();
		}else if(type.equals("boardModify")){
			comm = new Board_Modi_Command();
		}else if(type.equals("boardUpdate")){
			comm = new Board_UpCommand();
		}else if(type.equals("boardComment")){
			comm = new Board_CommentCommand();
		}else if(type.equals("boardComment_del")){
			comm = new Board_CommentDelCommand();
		}else if(type.equals("search")){
			comm = new Board_SearchCommand();
		}else if(type.equals("select_del")){
	         comm= new Board_SelectDeleteCommand();
	      }
		
		
		path = comm.exec(request, response);
		
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
