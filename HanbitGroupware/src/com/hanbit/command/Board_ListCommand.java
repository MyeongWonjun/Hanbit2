package com.hanbit.command;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.mybatis.Pageing;
import com.hanbit.vo.VO_board;

public class Board_ListCommand implements Command {
	static Pageing pvo = null;

	@Override  
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String board_type = request.getParameter("board_type");
		Dao dao = new Dao();
		pvo = new Pageing();
		
		// list 무조건 cPage 부터 받기
		// cPage는 현재 페이지롤 변경, null 이면 현재페이지가 기본값 1이된다.
		String cPage = request.getParameter("cPage");
		if(cPage != null){
			pvo.setNowPage(Integer.parseInt(cPage));
		}
		// 전체 게시물의 수
		int total = dao.getBoardTotalCount(board_type);
		System.out.println(total);
		pvo.setTotalRecord(total);
		pvo.setTotalPage();
		
		//  begin과 end 구하기
		// begin = (nowPage-1) * numPerPage + 1;
		// end = (begin - 1) + numPerPage;
		pvo.setBegin((pvo.getNowPage()-1)*pvo.getNumPerPage()+1);
		pvo.setEnd((pvo.getBegin()-1)+pvo.getNumPerPage());
		
		Map<String, String> map = new HashMap<>();
		map.put("begin", String.valueOf(pvo.getBegin()));
		map.put("end", String.valueOf(pvo.getEnd()));
		map.put("board_type", board_type);
		
		List<VO_board> boardList = dao.getBoardList(map);
		/*List<VO_board> boardList = dao.getBoardList(board_type);*/
		request.setAttribute("boardList", boardList);
		
		//  블록의 시작번호 끝번호 구하기
		// int beginPage = (int)((nowPage-1)/pagePerBlock)*pagePerBlock+1 ;  
		// int endPage = beginPage + pagePerBlock -1 ;
		// 주의사항 : endPage가 totalPage보다 클수 있다.
		// if(endPage> totalPage)   endPage = totalPage;
		 pvo.setBeginPage((int)((pvo.getNowPage()-1)/pvo.getPagePerBlock())*pvo.getPagePerBlock()+1);
		 pvo.setEndPage(pvo.getBeginPage() + pvo.getPagePerBlock()-1);
		 
		 if(pvo.getEndPage() > pvo.getTotalPage()){
			pvo.setEndPage(pvo.getTotalPage());
		}
			
			// list.jsp에서 페이징 처리할때 필요하므로
			 request.setAttribute("pvo", pvo);
		     request.setAttribute("cPage", cPage);
		     request.setAttribute("board_type", board_type);
		    
		return "/board_notice/board_free.jsp";
	}
}
