package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;

public class Board_ViewCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		String board_type = request.getParameter("board_type");
		List<VO_board> boardList = dao.getBoardView(board_type);
		System.out.println(boardList.size());
		request.setAttribute("boardList", boardList);
		return "/board_notice/board_free.jsp";
		return null;
	}
}
