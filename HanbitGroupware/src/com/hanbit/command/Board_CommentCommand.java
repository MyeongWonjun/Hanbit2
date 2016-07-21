package com.hanbit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_boardComment;

public class Board_CommentCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		 String path = null;
	      try {
	         String b_idx = request.getParameter("b_idx");
	         System.out.println("코멘트"+b_idx);
	         
	         VO_boardComment cvo = new VO_boardComment();
	         cvo.setB_idx(b_idx);
	         cvo.setContent(request.getParameter("content"));
	         cvo.setName(request.getParameter("name"));
	         int result = Dao.getCommentInsert(cvo);
	         
	         if(result>0){
	            path="BoardController?type=boardView&b_idx="+b_idx;
	         }   else{
	            path="BoardController?type=boardList";
	         }   
	         
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      
	      return path;

	}
}
