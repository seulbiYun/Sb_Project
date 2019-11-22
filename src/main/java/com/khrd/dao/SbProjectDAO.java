package com.khrd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.khrd.dto.SbProject;

public interface SbProjectDAO {
	public void sbPInsert(SbProject sbP);
	public List<SbProject> sbPList();
	public SbProject sbPView(int sbNo);
	public List<SbProject> SelectSbPBySbNo(@Param("sbStart") String sbStart, @Param("sbEnd") String sbEnd);
	public void delete(int sbNo);
	public void update(SbProject sbP);
}
