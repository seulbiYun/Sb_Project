package com.khrd.dto;

import java.util.Date;

public class SbProject {
	private int sbNo;
	private String sbName;
	private String sbContent;
	private Date sbStart;
	private Date sbEnd;
	private int sbState;

	public SbProject() {
		super();
	}

	public SbProject(int sbNo, String sbName, String sbContent, Date sbStart, Date sbEnd, int sbState) {
		super();
		this.sbNo = sbNo;
		this.sbName = sbName;
		this.sbContent = sbContent;
		this.sbStart = sbStart;
		this.sbEnd = sbEnd;
		this.sbState = sbState;
	}

	public int getSbNo() {
		return sbNo;
	}

	public void setSbNo(int sbNo) {
		this.sbNo = sbNo;
	}

	public String getSbName() {
		return sbName;
	}

	public void setSbName(String sbName) {
		this.sbName = sbName;
	}

	public String getSbContent() {
		return sbContent;
	}

	public void setSbContent(String sbContent) {
		this.sbContent = sbContent;
	}

	public Date getSbStart() {
		return sbStart;
	}

	public void setSbStart(Date sbStart) {
		this.sbStart = sbStart;
	}

	public Date getSbEnd() {
		return sbEnd;
	}

	public void setSbEnd(Date sbEnd) {
		this.sbEnd = sbEnd;
	}

	public int getSbState() {
		return sbState;
	}

	public void setSbState(int sbState) {
		this.sbState = sbState;
	}

	@Override
	public String toString() {
		return "SbProject [sbNo=" + sbNo + ", sbName=" + sbName + ", sbContent=" + sbContent + ", sbStart=" + sbStart
				+ ", sbEnd=" + sbEnd + ", sbState=" + sbState + "]";
	}

}
