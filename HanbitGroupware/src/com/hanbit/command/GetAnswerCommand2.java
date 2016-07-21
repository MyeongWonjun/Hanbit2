package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_email;

public class GetAnswerCommand2 implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String idx = request.getParameter("idx");
		VO_email vo_email = new VO_email();
		Dao dao = new Dao();
		vo_email = dao.getAnswer(idx);
		request.setAttribute("vo_email", vo_email);
		return "/email/email_write.jsp";
	}

}
