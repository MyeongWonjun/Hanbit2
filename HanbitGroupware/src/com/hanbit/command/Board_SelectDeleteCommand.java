package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;

public class Board_SelectDeleteCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("board_selectdeletecommand");
		String board_type = request.getParameter("board_type");
		Dao dao = new Dao();
		String[] b_idx = request.getParameterValues("ck");
		System.out.println(b_idx[0]);
		int checklen = b_idx.length;
		System.out.println(checklen);
		try {
			for (int i = 0; i < checklen; i++)
				dao.getboard_selectdel(b_idx[i]);
		} catch (Exception e) {
			System.out.println(e);
		}
		String path = "BoardController?type=boardList&board_type=" + board_type;
		System.out.println(path);
	      return path;
	      
	}
}
