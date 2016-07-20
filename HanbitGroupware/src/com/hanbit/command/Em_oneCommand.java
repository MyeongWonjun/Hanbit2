package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.hanbit.command.Command;
import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_employees;


public class Em_oneCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		String id = request.getParameter("id");
		VO_employees vo_employees= dao.getsetem(id);
		request.setAttribute("vo_employees", vo_employees);
		return "/setting/setting_em.jsp";
	}

}
