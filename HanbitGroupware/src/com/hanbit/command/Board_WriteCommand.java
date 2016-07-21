package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Board_WriteCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String board_type = request.getParameter("board_type");

		
		request.setAttribute("board_type", board_type);
		return "/board_notice/board_free_write.jsp";
	}
}
