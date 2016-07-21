package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;

public class HomeCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		List<VO_board> noticeList = dao.getHomeNotice();
		System.out.println(noticeList.isEmpty());
		request.setAttribute("noticeList", noticeList);
		return "/home/main.jsp";
	}

}
