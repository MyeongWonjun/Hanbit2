package com.hanbit.command;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_employees;

public class LoginCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String path = null;
		Dao dao = new Dao();
		VO_employees vo_employees = dao.getLogin(id, pwd);
		request.setAttribute("vo_employees", vo_employees);
		if(vo_employees!=null){
			path = "/home/home.jsp";
		}else{
			path = "/home/loginFail.jsp";
		}
		return path;
	}
	
}
