package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_email;

public class GetSendMEEmailListCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String email_addr = request.getParameter("email_addr");
		Dao dao = new Dao();
		List<VO_email> list = dao.getSendEmailList(email_addr);
		request.setAttribute("list", list);
		return "/email/email_sendME_list.jsp";
	}

}
