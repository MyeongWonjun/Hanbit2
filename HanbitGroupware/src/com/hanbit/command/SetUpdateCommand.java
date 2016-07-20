package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_employees;

public class SetUpdateCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
          Dao dao = new Dao();
          VO_employees vo_employees = new VO_employees();
          String id = request.getParameter("id");
          String path = null;
          vo_employees= dao.getsetem(id);
          
          String pwd = vo_employees.getPwd();
         
        		vo_employees.setPwd(request.getParameter("passwd"));
        		vo_employees.setEmail_addr(request.getParameter("email"));
        		vo_employees.setPhone(request.getParameter("phone"));
                dao.getSetUpdate(vo_employees);
                path = "s_em?type=setting_em";
        	  
 		return path;
	}

}
