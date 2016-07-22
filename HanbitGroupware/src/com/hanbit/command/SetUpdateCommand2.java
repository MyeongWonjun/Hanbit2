package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_employees;

public class SetUpdateCommand2 implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
       Dao dao = new Dao();
       String id = request.getParameter("id");
       VO_employees vo_employees = new VO_employees();
       
       vo_employees.setId(id);
       vo_employees.setPwd(request.getParameter("passwd"));
       vo_employees.setName(request.getParameter("name"));
       vo_employees.setEmail_addr(request.getParameter("email_addr"));
       vo_employees.setPhone(request.getParameter("phone"));
       vo_employees.setJob_id(request.getParameter("job_id"));
       vo_employees.setSalary(request.getParameter("salary"));
       vo_employees.setDepartment_name(request.getParameter("department_name"));
       vo_employees.setGrade(request.getParameter("grade"));
    
       dao.getSetUpdate2(vo_employees);
       request.setAttribute("vo_employees", vo_employees);
      
		return "s_em?type=setting_em_modify";
          
	}

}
