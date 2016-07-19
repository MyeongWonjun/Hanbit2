package com.hanbit.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Board_UpCommand implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String path = null;
		String r_path = request.getServletContext().getRealPath("/upload") ;
		
		
			try {
				MultipartRequest mr = new MultipartRequest(
									request,
									r_path,
									500*1024*1024,
									"utf-8",
									new DefaultFileRenamePolicy());
				
				VO_board vo = new VO_board();
				

				String b_idx = mr.getParameter("b_idx");
				String board_type = mr.getParameter("board_type");
				vo.setB_idx(b_idx);
				vo.setSubject(mr.getParameter("subject"));
				vo.setContent(mr.getParameter("content"));
				
				System.out.println(board_type);
				System.out.println("업데이트 idx   "+b_idx);
				// 파일처리
				if(mr.getFile("board_file") != null){
					vo.setBoard_file(mr.getFilesystemName("board_file"));
					
				}else{
					vo.setBoard_file("");
					
				}
				
				
				// DB처리 후 성공하면 list.jsp, 실패하면 write.jsp로 이동
				  int result = Dao.getBoardUpdate(vo);
				  
				  if(result >0){
					
					  path = "BoardController?type=boardView&b_idx="+b_idx; 
				  }else{
					 path = "BoardController?type=boardList" ;  
				  }
				
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		return path;
	}
}
