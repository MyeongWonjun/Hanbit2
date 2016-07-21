package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;

public class GetDeleteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		String[] idx = request.getParameterValues("chk");

		Dao dao = new Dao(); 
		
		int checklen = idx.length;
		
		try {
			for (int i = 0; i < checklen; i++)
				dao.getDelete(idx[i]);
		} catch (Exception e) {

		}
		
		return "Email?type=getEmailList";
		
	}

}
