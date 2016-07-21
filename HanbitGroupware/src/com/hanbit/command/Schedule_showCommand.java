package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_schedule;

public class Schedule_showCommand implements Command {
	String idx = null;
	public Schedule_showCommand(String idx) {
		this.idx = idx;
	}

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		VO_schedule sc = dao.scheduleShow(idx);
		request.setAttribute("sc", sc);
		return "schedule/show_schedule.jsp";
	}
}