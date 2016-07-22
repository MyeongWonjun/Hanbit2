package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_employees;

public class Setting_em_modifyCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
        String id = request.getParameter("id");
        Dao dao = new Dao();
        VO_employees vo_employees = dao.getsetem(id);
        request.setAttribute("vo_employees", vo_employees );
        
        
		return "setting/setting_admin_modify.jsp";
	}

}
