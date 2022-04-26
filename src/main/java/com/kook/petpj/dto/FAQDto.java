package com.kook.petpj.dto;

import java.sql.Timestamp;

public class FAQDto {
	private int fId;
	private String fName;
	private String fTitle;
	private String fContent;
	private Timestamp fDate;
	private int fHit;
	private int fGroup;
	private int fStep;
	private int fIndent;
	
	public FAQDto() {
		super();
	}

	public FAQDto(int fId, String fName, String fTitle, String fContent, Timestamp fDate, int fHit, int fGroup,
			int fStep, int fIndent) {
		super();
		this.fId = fId;
		this.fName = fName;
		this.fTitle = fTitle;
		this.fContent = fContent;
		this.fDate = fDate;
		this.fHit = fHit;
		this.fGroup = fGroup;
		this.fStep = fStep;
		this.fIndent = fIndent;
	}

	public int getfId() {
		return fId;
	}

	public void setfId(int fId) {
		this.fId = fId;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getfTitle() {
		return fTitle;
	}

	public void setfTitle(String fTitle) {
		this.fTitle = fTitle;
	}

	public String getfContent() {
		return fContent;
	}

	public void setfContent(String fContent) {
		this.fContent = fContent;
	}

	public Timestamp getfDate() {
		return fDate;
	}

	public void setfDate(Timestamp fDate) {
		this.fDate = fDate;
	}

	public int getfHit() {
		return fHit;
	}

	public void setfHit(int fHit) {
		this.fHit = fHit;
	}

	public int getfGroup() {
		return fGroup;
	}

	public void setfGroup(int fGroup) {
		this.fGroup = fGroup;
	}

	public int getfStep() {
		return fStep;
	}

	public void setfStep(int fStep) {
		this.fStep = fStep;
	}

	public int getfIndent() {
		return fIndent;
	}

	public void setfIndent(int fIndent) {
		this.fIndent = fIndent;
	}
}
