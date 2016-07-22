package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertPageCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "/setting/setting_admin_insert.jsp";
	}

}
