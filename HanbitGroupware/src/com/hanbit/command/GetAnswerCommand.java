package com.hanbit.command;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSeparatorUI;

import com.hanbit.command.Command;
import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_email;

public class GetAnswerCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String[] idx = request.getParameterValues("chk");

		VO_email vo_email = new VO_email();
		Dao dao = new Dao(); 
		
		int checklen = idx.length;
		
		try {
			for (int i = 0; i < checklen; i++)
				vo_email = dao.getAnswer(idx[i]);
		} catch (Exception e) {

		}
		request.setAttribute("vo_email", vo_email);
		
		return "/email/email_write.jsp";
		
	}

}
