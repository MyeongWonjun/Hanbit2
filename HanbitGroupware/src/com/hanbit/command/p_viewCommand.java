package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.vo.VO_board;

public class p_viewCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String path = null;
		String chk = request.getParameter("chk");
		if(chk==null){
			path = "/download/download_p_write.jsp";
		}else{
			VO_board vo = new VO_board();
			vo.setName(request.getParameter("name"));
			vo.setSubject(request.getParameter("subject"));
			vo.setContent(request.getParameter("content"));
			vo.setFile_name(request.getParameter("file"));
			
			
		}
		return null;
	}

}
