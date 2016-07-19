package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;

public class Board_Del_Command implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		String b_idx = request.getParameter("b_idx");
		System.out.println("idx  "+b_idx);
		dao.getBoardDel(b_idx);
		/*String path = "BoardController?type=boardList&board_type=자유";*/
		return"BoardController?type=boardList&board_type=자유";
	}
}
