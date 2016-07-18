package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;

public class Board_ListCommand implements Command {

	@Override  
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		Dao dao = new Dao();
		String board_type = request.getParameter("board_type");
		System.out.println("보드리스트커맨드타입"+board_type);
		List<VO_board> boardList = dao.getBoardList(board_type);
		System.out.println(boardList.size());
		request.setAttribute("boardList", boardList);
		return "/board_notice/board_free.jsp";
	}
}
