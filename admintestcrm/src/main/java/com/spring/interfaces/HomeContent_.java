package com.spring.interfaces;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.spring.entity.BlogDetail;
import com.spring.entity.ContactUs;
import com.spring.entity.FaqsContent;
import com.spring.entity.HomeContent;
import com.spring.entity.IndexContent;
import com.spring.entity.NewsArticle;
import com.spring.object.BlogDetails;
import com.spring.object.HomeContents;
import com.spring.object.IndexContents;
import com.spring.object.NewsArticles;

public interface HomeContent_ {

	public void saveFile(MultipartFile file,HttpServletRequest request);
	public void saveHomeContent(HomeContent homeContent,MultipartFile file,HttpServletRequest request);
	public List<HomeContents> findAllHomeContent();
	public HomeContent editHomeContent(HomeContents homeContent, Integer id,MultipartFile file,HttpServletRequest request);
	public Object findByIdHomeContent(int id);
	public void saveIndexContent(IndexContent indexContent,MultipartFile file,HttpServletRequest request);
	public List<IndexContents> findAllIndexContent();
	public void saveBlogDetail(BlogDetail blogDetail, MultipartFile file,Date date,HttpServletRequest request);
	public Object findByIdBlogContent(Integer id);
	public BlogDetail saveEditBlogContent(BlogDetails blogDetails,Integer id, MultipartFile file, Date date,HttpServletRequest request);
	public void deleteBlogById(Integer id);
	public void saveNewsAarticle(NewsArticle newsArticle, MultipartFile file, Date date, HttpServletRequest request);
	public Object findByIdNewsArticle(Integer id);
	public NewsArticle editNewsAarticle(NewsArticles newsArticles, Integer id, MultipartFile file, Date date,HttpServletRequest request);
	public void deleteNewsArticleById(Integer id);
	public ContactUs saveContactUs(ContactUs contactUs);
	public List<FaqsContent> findAllFaqs();
}
