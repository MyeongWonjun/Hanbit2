package com.hanbit.mybatis;

import java.util.List;
import java.util.Map;

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
	

	

	// employees list
	//github.com/MyeongWonjun/Hanbit2.git
		public List<VO_employees> getEmpList(){
			List<VO_employees> list = getSql().selectList("employee_list");
			return list;
		}
		
	// employee search
		public List<VO_employees> getEmpSearch(Map<String, String> map){
			List<VO_employees> list = getSql().selectList("employee_search", map);
			return list;
		}
	
	// GetEmail list
		public List<VO_email> getEmailList(){
			System.out.println("Here!");
			List<VO_email> list = getSql().selectList("getEmailList");
			if(!list.isEmpty()){
				System.out.println("리스트 있음");
			}else{
				System.out.println("리스트 없음");
			}
			return list;
		}
}