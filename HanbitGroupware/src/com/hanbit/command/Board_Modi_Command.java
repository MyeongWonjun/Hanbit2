package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;

public class Board_Modi_Command implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String b_idx = request.getParameter("b_idx");
		Dao dao = new Dao();
		VO_board vo = dao.getBoardOneList(b_idx);
		request.setAttribute("vo", vo);
		return "/board_notice/board_modify.jsp";
	}
}
