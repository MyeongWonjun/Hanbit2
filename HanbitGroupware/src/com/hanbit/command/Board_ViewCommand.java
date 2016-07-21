package com.hanbit.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;
import com.hanbit.vo.VO_boardComment;

public class Board_ViewCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
				Dao dao = new Dao();
		String b_idx = request.getParameter("b_idx");
		
		VO_board vo = dao.getBoardOneList(b_idx);

		List<VO_boardComment> c_list= dao.getCommentList(b_idx);
		
		List<String> list = new ArrayList<>();

		request.setAttribute("c_list", c_list);
		request.setAttribute("vo", vo);
		return "/board_notice/board_view.jsp";
		
	}
}
