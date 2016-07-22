package com.hanbit.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_employees;

public class Setting_listCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
       Dao dao= new Dao();
      List<VO_employees> list = dao.getSetting_list();
       request.setAttribute("list", list);
       
		return "/setting/setting_admin_eminfo.jsp";
	}
   
}
