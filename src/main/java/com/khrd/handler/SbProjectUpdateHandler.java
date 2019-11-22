package com.khrd.handler;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.khrd.controller.CommandHandler;
import com.khrd.dao.SbProjectDAO;
import com.khrd.dto.SbProject;
import com.khrd.util.MyBatisSqlSessionFactory;

public class SbProjectUpdateHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		if(req.getMethod().equalsIgnoreCase("get")) {
			int sbNo = Integer.parseInt(req.getParameter("sbNo"));
			
			SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();
			SbProjectDAO dao = sqlSession.getMapper(SbProjectDAO.class);
			
			SbProject sb = dao.sbPView(sbNo);
			
			req.setAttribute("sb", sb);
			sqlSession.commit();
			sqlSession.close();
			
			return "/WEB-INF/view/sbProject/sbPUpdate.jsp";
		}else if(req.getMethod().equalsIgnoreCase("post")){
			int sbNo = Integer.parseInt(req.getParameter("sbNo"));
			String sbName = req.getParameter("sbName");
			String sbContent = req.getParameter("sbContent");
			String sSbStart = req.getParameter("sbStart");
			String sSbEnd = req.getParameter("sbEnd");
			int sbState = Integer.parseInt(req.getParameter("sbState"));
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyy-MM-dd");
			Date sbStart = sdf.parse(sSbStart);
			Date sbEnd = sdf.parse(sSbEnd);
			
			SqlSession sqlSession = MyBatisSqlSessionFactory.openSession();
			SbProjectDAO dao = sqlSession.getMapper(SbProjectDAO.class);
			
			SbProject sbP = new SbProject(sbNo, sbName, sbContent, sbStart, sbEnd, sbState);
			
			dao.update(sbP);
			
			sqlSession.commit();
			sqlSession.close();
			
			resp.sendRedirect(req.getContextPath() + "/sbP/list.do");
			return null;
		}
		return null;
	}

}
