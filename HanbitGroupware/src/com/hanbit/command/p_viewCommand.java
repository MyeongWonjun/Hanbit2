package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class p_viewCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String path = null;
		String chk = request.getParameter("chk");
		if(chk==null){
			path = "/download/download_p_write.jsp";
		}else{
			
			
			
		}
		return null;
	}

}
