package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;

public class GetDeleteCommand2 implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		Dao dao = new Dao();
		dao.getDelete(idx);
		return "Email?type=getEmailList";
	}

}
