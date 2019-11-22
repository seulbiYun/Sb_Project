package com.khrd.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.khrd.controller.CommandHandler;
import com.khrd.dao.SbProjectDAO;
import com.khrd.dto.SbProject;
import com.khrd.util.MyBatisSqlSessionFactory;

public class SbProjectViewHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int sbNo = Integer.parseInt(req.getParameter("sbNo"));
		
		SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();
		SbProjectDAO dao = sqlSession.getMapper(SbProjectDAO.class);
		
		SbProject sb = dao.sbPView(sbNo);
		
		req.setAttribute("sb", sb);
		
		return "/WEB-INF/view/sbProject/sbPView.jsp";
	}

}
