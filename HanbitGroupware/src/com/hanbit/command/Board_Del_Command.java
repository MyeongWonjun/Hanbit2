package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;

public class Board_Del_Command implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		String b_idx = request.getParameter("b_idx");
		String board_type = request.getParameter("board_type");
		System.out.println(board_type);
		//System.out.println("idx  "+b_idx);
		dao.getBoardDel(b_idx);
		
		return"BoardController?type=boardList&board_type="+board_type;
		
	}
}
