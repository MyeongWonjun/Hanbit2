package com.hanbit.command;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;

public class p_ListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		Dao dao = new Dao();
		
		List<VO_board> list = dao.getp_list();
		
		System.out.println(list.size());
		request.setAttribute("list", list);
		
		return "/Download/download_public.jsp";
		
	}

}
