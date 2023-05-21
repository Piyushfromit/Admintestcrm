package com.spring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FaqsContent {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer faqId;
	private String pageType;
	private String faQues;
	private String faqAns;
	private String url;
	private String faqStatus;
	private String modifyBy;
	private String posttime;
	
	public Integer getFaqId() {
		return faqId;
	}
	public void setFaqId(Integer faqId) {
		this.faqId = faqId;
	}
	public String getPageType() {
		return pageType;
	}
	public void setPageType(String pageType) {
		this.pageType = pageType;
	}
	public String getFaQues() {
		return faQues;
	}
	public void setFaQues(String faQues) {
		this.faQues = faQues;
	}
	public String getFaqAns() {
		return faqAns;
	}
	public void setFaqAns(String faqAns) {
		this.faqAns = faqAns;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getFaqStatus() {
		return faqStatus;
	}
	public void setFaqStatus(String faqStatus) {
		this.faqStatus = faqStatus;
	}
	public String getModifyBy() {
		return modifyBy;
	}
	public void setModifyBy(String modifyBy) {
		this.modifyBy = modifyBy;
	}
	public String getPosttime() {
		return posttime;
	}
	public void setPosttime(String posttime) {
		this.posttime = posttime;
	}
}
