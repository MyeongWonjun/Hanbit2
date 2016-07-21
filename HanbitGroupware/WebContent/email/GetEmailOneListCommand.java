package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_email;

public class GetEmailOneListCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		Dao dao = new Dao();
		VO_email vo_email = dao.getEmailOneList(idx);
		request.setAttribute("vo_email", vo_email);
		return "/email/email_read.jsp";
	}

}
