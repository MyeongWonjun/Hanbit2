package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;

public class Board_CommentDelCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		String c_idx = request.getParameter("c_idx");
		String b_idx = request.getParameter("b_idx");
		System.out.println(b_idx);
		//System.out.println("코멘트 번호"+c_idx);
		dao.getCommentDel(c_idx);
		String path = "BoardController?type=boardView&b_idx="+b_idx;
		
		return path;
		
	}
}
