package com.khrd.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.khrd.dto.SbProject;
import com.khrd.util.MyBatisSqlSessionFactory;

public class TestSbProject {
	SqlSession sqlSession = null;
	SbProjectDAO dao = null;
	
	@Before
	public void openSqlSession() {
		sqlSession = MyBatisSqlSessionFactory.openSession();
		dao = sqlSession.getMapper(SbProjectDAO.class);
	}
	
	@After
	public void colseSqlSession() {
		sqlSession.close();
	}
	
	@Test
	public void testSbPInsert() {
		dao.sbPInsert(new SbProject(0, "비밀이다", "비밀이라고 하지 않았느냐", new Date(), new Date(), 1));
		sqlSession.commit();
	}
	
	//@Test
	public void testSbPList(){
		dao.sbPList();
	}
	
	//@Test 
	public void testSbPBySbNo() {
		dao.sbPView(1);
	}
	
	//@Test
	public void testSelectSbPBySbNo() {
		dao.SelectSbPBySbNo("2019-11-01", "2020-02-02");
	}
	
	//@Test
	public void testDelete() {
		dao.delete(5);
		sqlSession.commit();
	}
	
	//@Test
	public void testUpdate() {
		dao.update(new SbProject(3, "test", "test", new Date(), new Date(), 3));
	}
	
}
