package com.khrd.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.khrd.controller.CommandHandler;
import com.khrd.dao.SbProjectDAO;
import com.khrd.dto.SbProject;
import com.khrd.util.MyBatisSqlSessionFactory;

public class SbProjectListHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String sbStart = req.getParameter("sbStart");
		String sbEnd = req.getParameter("sbEnd");
		
		SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();
		SbProjectDAO dao = sqlSession.getMapper(SbProjectDAO.class);
		List<SbProject> list = dao.SelectSbPBySbNo(sbStart, sbEnd);
		
		req.setAttribute("list", list);
		return "/WEB-INF/view/sbProject/sbPList.jsp";
	}

}
