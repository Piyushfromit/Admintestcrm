package com.spring.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.spring.entity.BlogDetail;
import com.spring.entity.ContactUs;
import com.spring.entity.FaqsContent;
import com.spring.entity.HomeContent;
import com.spring.entity.IndexContent;
import com.spring.entity.NewsArticle;
import com.spring.interfaces.HomeContent_;
import com.spring.object.BlogDetails;
import com.spring.object.HomeContents;
import com.spring.object.IndexContents;
import com.spring.object.NewsArticles;
import com.spring.repository.AdminHomeRepository;
import com.spring.repository.BlogDetailRepository;
import com.spring.repository.ContactUsRepository;
import com.spring.repository.FaqsContentRepository;
import com.spring.repository.IndexContentRepositroy;
import com.spring.repository.NewsArticleRepository;

@Service
public class AdminServiceImpl implements HomeContent_ {

	@Autowired
	private AdminHomeRepository adminHomeRepository;
	@Autowired
	private IndexContentRepositroy indexContentRepositroy;
	@Autowired
	private BlogDetailRepository blogDetailRepository;
	@Autowired
	private NewsArticleRepository newsArticleRepository;
	@Autowired
	private FaqsContentRepository faqsContentRepository;
	@Autowired
	private ContactUsRepository contactUsRepository;
	@Autowired
	private ModelMapper modelMapper;
	@Autowired
	private ObjectMapper mapper;
	public static String UPLOAD_IMGFILE;

	
	public void saveFile(MultipartFile file,HttpServletRequest request) {
		UPLOAD_IMGFILE = String.valueOf(request.getServletContext().getRealPath("") + "\\resources\\images\\blog\\");
		if (file.getSize() != 0) {
			try {
				Path path = Paths.get(file.getOriginalFilename());
				Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public void saveHomeContent(HomeContent homeContent,MultipartFile file,HttpServletRequest request) {
		homeContent.setImgUrl(file.getOriginalFilename());
		adminHomeRepository.save(homeContent);
	}

	public List<HomeContents> findAllHomeContent() {
		return adminHomeRepository.findAll().stream().map(homeContent -> modelMapper.map(homeContent, HomeContents.class)).collect(Collectors.toList());
	}

	public HomeContent editHomeContent(HomeContents homeContents, Integer id,MultipartFile file,HttpServletRequest request) {
		homeContents.setImgUrl(file.getOriginalFilename());
		HomeContent contents = mapper.convertValue(homeContents, HomeContent.class);  
		return adminHomeRepository.save(contents);
	}

	public Object findByIdHomeContent(int id) {
		return adminHomeRepository.findById(id);
	}

	public void saveIndexContent(IndexContent indexContent,MultipartFile file,HttpServletRequest request) {
		indexContent.setImgUrl(file.getOriginalFilename());
		indexContentRepositroy.save(indexContent);
	}

	public List<IndexContents> findAllIndexContent() {
		return indexContentRepositroy.findAll().stream().map(indexContent -> modelMapper.map(indexContent, IndexContents.class)).collect(Collectors.toList());
	}

	public void saveBlogDetail(BlogDetail blogDetail, MultipartFile file,Date date,HttpServletRequest request) {
		blogDetail.setImgUrl(file.getOriginalFilename());
		if (date != null ) {
			SimpleDateFormat dateFormat=new SimpleDateFormat();
			blogDetail.setPosttime(dateFormat.format(date));
		}
		blogDetail.setTitleUrl(blogDetail.getTitleUrl().replace(" ", "-").toLowerCase().toString());
		blogDetailRepository.save(blogDetail);
	}

	public List<BlogDetails> findAllBlogDetails() {
		return blogDetailRepository.findAll().stream().map(blogDetail -> modelMapper.map(blogDetail, BlogDetails.class)).collect(Collectors.toList());
	}

	public Object findByIdBlogContent(Integer id) {
		return blogDetailRepository.findById(id);
	}

	public BlogDetail saveEditBlogContent(BlogDetails blogDetails,Integer id, MultipartFile file, Date date,HttpServletRequest request) {
		 blogDetails.setImgUrl(file.getOriginalFilename());
		 if (date != null ) {
			SimpleDateFormat dateFormat=new SimpleDateFormat();
			blogDetails.setPosttime(dateFormat.format(date));
		}
		BlogDetail detail = mapper.convertValue(blogDetails, BlogDetail.class); 
		return blogDetailRepository.save(detail);
	}

	public void deleteBlogById(Integer id) {
		blogDetailRepository.deleteById(id);
	}

	public void saveNewsAarticle(NewsArticle newsArticle, MultipartFile file, Date date, HttpServletRequest request) {
		newsArticle.setImgUrl(file.getOriginalFilename());
		if (date != null ) {
			SimpleDateFormat dateFormat=new SimpleDateFormat();
			newsArticle.setPosttime(dateFormat.format(date));
		}
		newsArticle.setTitleUrl(newsArticle.getTitleUrl().replace(" ", "-").toLowerCase().toString());
		newsArticleRepository.save(newsArticle);
	}

	public List<NewsArticles> findAllNewsArticle() {
		return newsArticleRepository.findAll().stream().map(newsArticle -> this.modelMapper.map(newsArticle, NewsArticles.class)).collect(Collectors.toList());
	}

	public Object findByIdNewsArticle(Integer id) {
		return newsArticleRepository.findById(id);
	}

	public NewsArticle editNewsAarticle(NewsArticles newsArticles, Integer id, MultipartFile file, Date date,HttpServletRequest request) {
	    newsArticles.setImgUrl(file.getOriginalFilename());
		NewsArticle article=mapper.convertValue(newsArticles, NewsArticle.class);
		return newsArticleRepository.save(article);
	}

	public void deleteNewsArticleById(Integer id) {
		newsArticleRepository.deleteById(id);		
	}

	public FaqsContent saveFaqsContent(FaqsContent faqsContent, Date date) {
		if (date != null ) {
			SimpleDateFormat dateFormat=new SimpleDateFormat();
			faqsContent.setPosttime(dateFormat.format(date));
		}
		return faqsContentRepository.save(faqsContent);
	}

	public ContactUs saveContactUs(ContactUs contactUs) {
		return contactUsRepository.save(contactUs);
	}

	public List<FaqsContent> findAllFaqs() {
		 return faqsContentRepository.findAll();
	}
}
