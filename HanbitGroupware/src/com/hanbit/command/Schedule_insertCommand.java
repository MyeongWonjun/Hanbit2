package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_schedule;

public class Schedule_insertCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		VO_schedule vo = new VO_schedule();
		vo.setId(request.getParameter("id"));
		vo.setType(request.getParameter("type2"));
		vo.setSubject(request.getParameter("subject"));
		vo.setContent(request.getParameter("content"));
		vo.setStart_date(request.getParameter("start_date"));
		vo.setEnd_date(request.getParameter("end_date"));
		dao.insertSchedule(vo);
		List<VO_schedule> list = dao.scheduleList(request.getParameter("id"));
		request.setAttribute("list", list);
		return "schedule/schedule_list.jsp";
	}
}