package com.kook.petpj.dto;

import java.sql.Timestamp;

public class QNADto {
	private int qId;
	private String qWriter;
	private String qTitle;
	private String qContent;
	private Timestamp qRdate;
	private int qSecret;
	private int qHit;
	private int qGroup;
	private int qStep;
	private int qIndent;
	
	public QNADto() {
		super();
	}

	public QNADto(int qId, String qWriter, String qTitle, String qContent, Timestamp qRdate, int qSecret, int qHit,
			int qGroup, int qStep, int qIndent) {
		super();
		this.qId = qId;
		this.qWriter = qWriter;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qRdate = qRdate;
		this.qSecret = qSecret;
		this.qHit = qHit;
		this.qGroup = qGroup;
		this.qStep = qStep;
		this.qIndent = qIndent;
	}

	public int getqId() {
		return qId;
	}

	public void setqId(int qId) {
		this.qId = qId;
	}

	public String getqWriter() {
		return qWriter;
	}

	public void setqWriter(String qWriter) {
		this.qWriter = qWriter;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public Timestamp getqRdate() {
		return qRdate;
	}

	public void setqRdate(Timestamp qRdate) {
		this.qRdate = qRdate;
	}

	public int getqSecret() {
		return qSecret;
	}

	public void setqSecret(int qSecret) {
		this.qSecret = qSecret;
	}

	public int getqHit() {
		return qHit;
	}

	public void setqHit(int qHit) {
		this.qHit = qHit;
	}

	public int getqGroup() {
		return qGroup;
	}

	public void setqGroup(int qGroup) {
		this.qGroup = qGroup;
	}

	public int getqStep() {
		return qStep;
	}

	public void setqStep(int qStep) {
		this.qStep = qStep;
	}

	public int getqIndent() {
		return qIndent;
	}

	public void setqIndent(int qIndent) {
		this.qIndent = qIndent;
	}
	
}