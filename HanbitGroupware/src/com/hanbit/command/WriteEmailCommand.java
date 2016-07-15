package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_email;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class WriteEmailCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String r_path = request.getServletContext().getRealPath("/upload");
		try {
			MultipartRequest mr = new MultipartRequest(
					request,
					r_path,
					500*1024*1024,
					"utf-8",
					new DefaultFileRenamePolicy()
					);
			VO_email vo_email = new VO_email();
			vo_email.setEmail_addr(mr.getParameter("email_addr"));
			vo_email.setSubject(mr.getParameter("subject"));
			vo_email.setContent(mr.getParameter("content"));
			if(mr.getFile("email_file") != null){
				vo_email.setEmail_file();
			}else{
				vo_email.setEmail_file("");
			}
			Dao dao = new Dao();
			dao.writeEmail(vo_email);
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return "Email?type=getEmailList";
	}

}
