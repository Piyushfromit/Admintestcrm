package com.spring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BlogDetail {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String title;
	private String titleUrl;
	private String content;
	private String description;
	private String keywords;
	private String posttime;
	private String status;
	private String heading;
	private String imgUrl;
	private String categoryName;
	private String tfnHeader;
	private String tfnPopup;
	private String tfnFooter;
	
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
	public String getTitleUrl() {
		return titleUrl;
	}
	public void setTitleUrl(String titleUrl) {
		this.titleUrl = titleUrl;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public String getPosttime() {
		return posttime;
	}
	public void setPosttime(String posttime) {
		this.posttime = posttime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getHeading() {
		return heading;
	}
	public void setHeading(String heading) {
		this.heading = heading;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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
}