package com.spring.controller;

import java.sql.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.spring.entity.BlogDetail;
import com.spring.entity.FaqsContent;
import com.spring.entity.HomeContent;
import com.spring.entity.IndexContent;
import com.spring.entity.NewsArticle;
import com.spring.object.BlogDetails;
import com.spring.object.HomeContents;
import com.spring.object.IndexContents;
import com.spring.object.NewsArticles;
import com.spring.service.AdminServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminServiceImpl adminServiceImpl;

	@GetMapping("/dashboard")
	private String dashboard(HttpServletRequest request,Model model) {
		List<HomeContents> homeContents = adminServiceImpl.findAllHomeContent();
		List<IndexContents> indexContents = adminServiceImpl.findAllIndexContent();
		model.addAttribute("contents", homeContents);
		model.addAttribute("index", indexContents);
		return "admin/dashboard";
	}
	
	@PostMapping("/dashboard")
	private String dashboards(HomeContents code, IndexContents indexs, HttpServletRequest request, Model model) {
		List<HomeContents> homeContents = adminServiceImpl.findAllHomeContent().stream().filter(x -> x.getCountryCode().equals(code.getCountryCode())).collect(Collectors.toList());
		List<IndexContents> indexContents = adminServiceImpl.findAllIndexContent().stream().filter(x -> x.getPageType().equals(indexs.getPageType())).collect(Collectors.toList());
		List<HomeContents> contents = adminServiceImpl.findAllHomeContent();
		List<IndexContents> index = adminServiceImpl.findAllIndexContent();
		model.addAttribute("homeContent", homeContents);
		model.addAttribute("contents", contents);
		model.addAttribute("index", index);
		model.addAttribute("indexContents", indexContents);
		return "admin/dashboard";
	}
	
	@GetMapping("/homeContent")
	private String homeContent(HttpServletRequest request, Model model) {
		model.addAttribute("homeContent", "Submit New Home Content!.");
		return "admin/homeContent";
	}

	@PostMapping("/homeContent")
	private String homeContents(HttpServletRequest request, HomeContent homeContent, MultipartFile file, Model model) {
		adminServiceImpl.saveHomeContent(homeContent,file,request);
		adminServiceImpl.saveFile(file, request);
		model.addAttribute("homeContent", "Submit Content Successfully!.");
		return "admin/homeContent";
	}
	
	@GetMapping("/homeEditContent/{id}")
	private String homeContents(@PathVariable int id,HttpServletRequest request, HomeContents homeContent, Model model) {
		model.addAttribute("id", id);
		model.addAttribute("command", adminServiceImpl.findByIdHomeContent(id));
		model.addAttribute("homeContent", "Edit Content!.");
		return "admin/edithomeContent";
	}
	
	@PostMapping("/homeEditContent/{id}")
	private String homeContent(@PathVariable int id,HttpServletRequest request, HomeContents homeContent, MultipartFile file, Model model) {
		adminServiceImpl.editHomeContent(homeContent, id,file,request);
		adminServiceImpl.saveFile(file, request);
		model.addAttribute("homeContent", "Edit Successfully!.");
		return "admin/homeContent";
	}
	
	@GetMapping("/indexContent")
	private String contentIndex(HttpServletRequest request,Model model) {
		model.addAttribute("indexContent", "Submit New Index Content!.");
		return "admin/indexContent";
	}
	
	@PostMapping("/indexContent")
	private String contentIndexs(IndexContent indexContent,HttpServletRequest request, MultipartFile file, Model model) {
		adminServiceImpl.saveIndexContent(indexContent,file,request);
		adminServiceImpl.saveFile(file, request);
		model.addAttribute("indexContent", "Submit New Index Content!.");
		return "admin/indexContent";
	}
	
	@GetMapping("/addBlog")
	private String blog(HttpServletRequest request,Model model) {
		model.addAttribute("blog", "Submit New Blog Content!.");
		return "admin/addBlog";
	}
	
	@PostMapping("/addBlog")
	private String blogs(BlogDetail blogDetail,MultipartFile file,Date date,HttpServletRequest request,Model model) {
		adminServiceImpl.saveFile(file, request);
		adminServiceImpl.saveBlogDetail(blogDetail,file,date,request);
		model.addAttribute("blog", "Submit Content Successfully!.");
		return "admin/addBlog";
	}
	
	@GetMapping("/showBlog")
	private String fatchAllBlog(HttpServletRequest request,Model model) {
		List<BlogDetails> details=adminServiceImpl.findAllBlogDetails();
		model.addAttribute("blogDetail", details);
		model.addAttribute("blog", "AllBlog Content");
		return "admin/showBlog";
	}
	
	@GetMapping("/editBlog/{id}")
	private String editBlogContent(@PathVariable Integer id,HttpServletRequest request,Model model) {
		model.addAttribute("id", id);
		model.addAttribute("command", adminServiceImpl.findByIdBlogContent(id));
		model.addAttribute("blog", "Edit Blog Content!..");
		return "admin/editBlog";
	}
	
	@PostMapping("/editBlog/{id}")
	private String editBlog(@PathVariable Integer id,BlogDetails blogDetails,MultipartFile file,Date date,HttpServletRequest request,Model model) {
		adminServiceImpl.saveEditBlogContent(blogDetails,id,file,date,request);
		adminServiceImpl.saveFile(file, request);
		model.addAttribute("blog", "Edit Blog Content Successfully!..");
		return "admin/addBlog";
	}
	
	@RequestMapping("/deleteBlog/{id}")
	private String deleteBlog(@PathVariable Integer id) {
		adminServiceImpl.deleteBlogById(id);
		return "redirect:/admin/showBlog";
	}
	
	
	@GetMapping("/newsArticle")
	private String newsArticle(HttpServletRequest request,Model model) {
		model.addAttribute("article", "Submit New NewsArticle Content!.");
		return "admin/newsArticle";
	}
	
	@PostMapping("/newsArticle")
	private String newsArticles(NewsArticle newsArticle,MultipartFile file,Date date,HttpServletRequest request,Model model) {
		adminServiceImpl.saveNewsAarticle(newsArticle,file,date,request);
		adminServiceImpl.saveFile(file, request);
		model.addAttribute("article", "Submit New NewsArticle Content!.");
		return "admin/newsArticle";
	}
	
	@GetMapping("/showArticleContent")
	private String fatchAllAnewArticle(HttpServletRequest request,Model model) {
		List<NewsArticles> details=adminServiceImpl.findAllNewsArticle();
		model.addAttribute("newsArticle", details);
		model.addAttribute("article", "All News Article Content");
		return "admin/showArticle";
	}
	
	@GetMapping("/editNewsArticle/{id}")
	private String editNewsArticle(@PathVariable Integer id,Model model) {
		model.addAttribute("id", id);
		model.addAttribute("command", adminServiceImpl.findByIdNewsArticle(id));
		model.addAttribute("article", "Edit News Article Content");
		return "admin/editArticle";
	}
	
	@PostMapping("/newsArticle/{id}")
	private String editNewsArticles(@PathVariable Integer id,NewsArticles newsArticles,MultipartFile file,Date date,HttpServletRequest request,Model model) {
		adminServiceImpl.editNewsAarticle(newsArticles,id,file,date,request);
		adminServiceImpl.saveFile(file, request);
		model.addAttribute("article", "Edit NewsArticle Content Successfully!.");
		return "admin/newsArticle";
	}
	
	@RequestMapping("/deleteNewsArticle/{id}")
	private String deleteNewsArticle(@PathVariable Integer id) {
		adminServiceImpl.deleteNewsArticleById(id);
		return "redirect:/admin/showArticleContent";
	}
 
	@GetMapping("/faqs")
	private String showFaqs(Model model) {
		List<FaqsContent> findAllFaqs = adminServiceImpl.findAllFaqs();
		model.addAttribute("faqsContent", findAllFaqs);
		model.addAttribute("faqs", "All Faqs Content");
		return "admin/showFaqs";
	}
	
	@GetMapping("/addfaqs")
	private String faqsContent(Model model) {
		model.addAttribute("faqs", "Add News Faqs Content");
		return "admin/addFaqs";
	}
	
	@PostMapping("/addfaqs")
	private String faqsContent(FaqsContent faqsContent,Date date,Model model) {
		adminServiceImpl.saveFaqsContent(faqsContent,date);
		model.addAttribute("faqs", "News Faqs Content");
		return "admin/addFaqs";
	}
	
	 
}
