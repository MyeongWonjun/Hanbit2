package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_schedule;

public class ScheduleCommand implements Command {
	String id = null;
	public ScheduleCommand(String id) {
		this.id = id;
	}

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		List<VO_schedule> list = dao.scheduleList(id);
		request.setAttribute("list", list);
		return "schedule/schedule.jsp";
	}

}
