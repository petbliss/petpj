package com.kook.petpj.dto;

public class ProductDto {
	private String aPhoto; 
	private String qId; 
	private String aName; 
	private String aDesc;  
	private String aPrice;
	public ProductDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductDto(String aPhoto, String qId, String aName, String aDesc, String aPrice) {
		super();
		this.aPhoto = aPhoto;
		this.qId = qId;
		this.aName = aName;
		this.aDesc = aDesc;
		this.aPrice = aPrice;
	}
	public String getaPhoto() {
		return aPhoto;
	}
	public void setaPhoto(String aPhoto) {
		this.aPhoto = aPhoto;
	}
	public String getqId() {
		return qId;
	}
	public void setaId(String qId) {
		this.qId = qId;
	}
	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	public String getaDesc() {
		return aDesc;
	}
	public void setaDesc(String aDesc) {
		this.aDesc = aDesc;
	}
	public String getaPrice() {
		return aPrice;
	}
	public void setaPrice(String aPrice) {
		this.aPrice = aPrice;
	}
	
}