package com.hanbit.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.hanbit.vo.VO_email;
import com.hanbit.vo.VO_employees;

public class Dao {
private static SqlSession ss;
    
	private synchronized static SqlSession getSql(){
		if(ss == null){
			ss = DBService.getFactory().openSession();
		}
		return ss;
	}
	
	// employee list
		public List<VO_employees> getList(){
			List<VO_employees> list = getSql().selectList("list");
			return list;
		}
	
	// GetEmail list
		public List<VO_email> getEmailList(){
			List<VO_email> list = getSql().selectList("getEmailList");
			return list;
		}
}