package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;
import com.hanbit.vo.VO_email;

public class HomeCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		Dao dao = new Dao();
		
		// 공지사항 불러오기
		List<VO_board> noticeList = dao.getHomeNotice();
		
		// 이메일 불러오기
		String email_addr = request.getParameter("email_addr");
		List<VO_email> emailList = dao.getHomeEmail(email_addr);
		
		if(emailList.isEmpty()){
			System.out.println("비어있음!!");
		}
		
		request.setAttribute("noticeList", noticeList);
		request.setAttribute("emailList", emailList);
		return "/home/main.jsp";
	}

}
