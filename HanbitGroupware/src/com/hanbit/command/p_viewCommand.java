package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;



public class p_viewCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		   String b_idx = request.getParameter("b_idx");
		   String cPage = request.getParameter("cPage");
		   
		  VO_board bvo = Dao.getp_oneList(b_idx);
		  request.setAttribute("bvo", bvo);
		 
		 
		   		   		   
		   // 히트수 증가
		   int hit = Integer.parseInt(bvo.getHit())+1;
		   bvo.setHit(String.valueOf(hit));
		  
		   
		  // DB 의 히트수 업데이트
		   Dao.getphit_Update(bvo);
		   
		   
	/*	   // 댓글 가져오기
		   List<CommVO> c_list = Dao.getCommList(b_idx);
		
		   	request.setAttribute("bvo", bvo);
		   	request.setAttribute("c_list", c_list);
		   	request.setAttribute("cPage", cPage);*/
		
		return "/Download/p_view.jsp" ;
	}

}
