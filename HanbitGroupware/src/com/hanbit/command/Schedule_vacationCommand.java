package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_schedule;

public class Schedule_vacationCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		List<VO_schedule> list = dao.vacationList();
		request.setAttribute("list", list);
		return "schedule/v_schedule.jsp";
	}
}