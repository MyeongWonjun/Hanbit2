package com.hanbit.command;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hanbit.mybatis.Dao;
import com.hanbit.vo.Paging;
import com.hanbit.vo.VO_email;

public class GetAllEmailListCommand implements Command{
	static Paging pvo = null;
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		pvo = new Paging();
		String cPage = request.getParameter("cPage");
		String email_addr = request.getParameter("email_addr");
		if(cPage!=null){
			pvo.setNowPage(Integer.parseInt(cPage));
		}
		
		pvo.setTotalRecord(Dao.getTotalCount(email_addr));
		pvo.setTotalPage();
		
		pvo.setBegin((pvo.getNowPage()-1) * pvo.getNumPerPage() + 1);
		pvo.setEnd((pvo.getBegin()-1) + pvo.getNumPerPage());
		
		Map<String, String> map = new HashMap<>();
		map.put("begin", pvo.getBegin()+"");
		map.put("end", pvo.getEnd()+"");
		map.put("email_addr", email_addr);
		
		List<VO_email> list = Dao.getAllEmailList(map);
		request.setAttribute("list", list);
		
		pvo.setBeginPage((int)(((pvo.getNowPage()-1) / pvo.getPagePerBlock()) * pvo.getPagePerBlock()+1));
		pvo.setEndPage(pvo.getBeginPage() + pvo.getPagePerBlock()-1);
		if(pvo.getEndPage() > pvo.getTotalPage()){
			pvo.setEndPage(pvo.getTotalPage());
		}
		
		request.setAttribute("pvo", pvo);
		request.setAttribute("cPage", cPage);
		
		
		return "/email/email_all_list.jsp";
	}

}
