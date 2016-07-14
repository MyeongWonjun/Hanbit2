package com.hanbit.command;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_employees;

public class EmpSearchCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		Map<String, String> map = new HashMap<>();
		map.put("type", request.getParameter("search"));
		map.put("content", request.getParameter("search_what"));
		List<VO_employees> list = dao.getEmpSearch(map);
		request.setAttribute("list", list);
		return "/Support/employee_list.jsp";
	}

}
