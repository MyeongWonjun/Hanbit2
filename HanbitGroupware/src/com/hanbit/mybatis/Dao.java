package com.hanbit.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hanbit.vo.VO_employees;

public class Dao {
private static SqlSession ss;
    
	private synchronized static SqlSession getSql(){
		if(ss == null){
			ss = DBService.getFactory().openSession();
		}
		return ss;
	}
	
	// employees list
		public List<VO_employees> getList(){
			List<VO_employees> list = getSql().selectList("employee_list");
			return list;
		}
}