package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;

public class p_ListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		Dao dao = new Dao();
		
		List<VO_board> list2 = dao.getp_list();
		
		request.setAttribute("list", list2);
		
		return "/Download/download_public.jsp";
		
	}

}
