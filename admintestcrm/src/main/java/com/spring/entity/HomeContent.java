package com.spring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class HomeContent {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String title;
	private String description;
	private String keywords;
	private String imgUrl;
	private String bannerContent;
	private String content;
	private String disclaimer;
	private String tfnHeader;
	private String tfnPopup;
	private String tfnFooter;
	private String countryCode;
	private String countryName;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getBannerContent() {
		return bannerContent;
	}
	public void setBannerContent(String bannerContent) {
		this.bannerContent = bannerContent;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDisclaimer() {
		return disclaimer;
	}
	public void setDisclaimer(String disclaimer) {
		this.disclaimer = disclaimer;
	}
	public String getTfnHeader() {
		return tfnHeader;
	}
	public void setTfnHeader(String tfnHeader) {
		this.tfnHeader = tfnHeader;
	}
	public String getTfnPopup() {
		return tfnPopup;
	}
	public void setTfnPopup(String tfnPopup) {
		this.tfnPopup = tfnPopup;
	}
	public String getTfnFooter() {
		return tfnFooter;
	}
	public void setTfnFooter(String tfnFooter) {
		this.tfnFooter = tfnFooter;
	}
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	
}
