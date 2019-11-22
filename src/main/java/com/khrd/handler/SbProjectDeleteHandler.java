package com.khrd.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.khrd.controller.CommandHandler;
import com.khrd.dao.SbProjectDAO;
import com.khrd.util.MyBatisSqlSessionFactory;

public class SbProjectDeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int sbNo = Integer.parseInt(req.getParameter("sbNo"));
		
		SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();
		SbProjectDAO dao = sqlSession.getMapper(SbProjectDAO.class);
		
		dao.delete(sbNo);
		
		resp.sendRedirect(req.getContextPath() + "/sbP/list.do");
		sqlSession.commit();
		sqlSession.close();
		
		return null;
	}

}
