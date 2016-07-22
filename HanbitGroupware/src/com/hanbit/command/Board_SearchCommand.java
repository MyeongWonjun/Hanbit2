package com.hanbit.command;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.hanbit.mybatis.Dao;
import com.hanbit.vo.VO_board;

public class Board_SearchCommand implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
      Dao dao = new Dao();
      Map<String, String> map = new HashMap<>();
      map.put("type", request.getParameter("search"));
      map.put("content", request.getParameter("search_what"));
      map.put("board_type", request.getParameter("board_type"));

      String type = map.get("type");
      String content = map.get("content");
      String b_t = map.get("board_type");
      System.out.println(type+content+b_t);
      List<VO_board> list = dao.getBoard_Search(map);
      System.out.println(list.size());
      request.setAttribute("boardList", list);
      request.setAttribute("board_type", b_t);
      return "/board_notice/board_free.jsp";
	}
}
