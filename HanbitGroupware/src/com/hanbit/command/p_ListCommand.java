package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;

public class p_ListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("type");
		Dao dao = new Dao();
		List<VO_board> list = dao.getp_list(type);
		request.setAttribute("list", list);
		return "/download/download_public.jsp";
		
	}

}
