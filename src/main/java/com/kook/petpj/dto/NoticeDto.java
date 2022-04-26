package com.kook.petpj.dto;

import java.sql.Timestamp;

public class NoticeDto {
	
	private int nId;
	private String nWriter;
	private String nPw;
	private String nTitle;
	private String nContent;
	private Timestamp nRdate;
	private int nHit;
	
	public NoticeDto() {
		super();
	}

	public NoticeDto(int nId, String nWriter, String nPw, String nTitle, String nContent, Timestamp nRdate, int nHit) {
		super();
		this.nId = nId;
		this.nWriter = nWriter;
		this.nPw = nPw;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nRdate = nRdate;
		this.nHit = nHit;
	}

	public int getnId() {
		return nId;
	}

	public void setnId(int nId) {
		this.nId = nId;
	}

	public String getnWriter() {
		return nWriter;
	}

	public void setnWriter(String nWriter) {
		this.nWriter = nWriter;
	}

	public String getnPw() {
		return nPw;
	}

	public void setnPw(String nPw) {
		this.nPw = nPw;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public Timestamp getnRdate() {
		return nRdate;
	}

	public void setnRdate(Timestamp nRdate) {
		this.nRdate = nRdate;
	}

	public int getnHit() {
		return nHit;
	}

	public void setnHit(int nHit) {
		this.nHit = nHit;
	}
	
}