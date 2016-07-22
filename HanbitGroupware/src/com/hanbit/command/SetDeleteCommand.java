package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;

public class SetDeleteCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		 Dao dao = new Dao();
		 String id = request.getParameter("id");
		 dao.getSetDelete(id);
		return "s_em?type=setting_list";
	}
   
}
