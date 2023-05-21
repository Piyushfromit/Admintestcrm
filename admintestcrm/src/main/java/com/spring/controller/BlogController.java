package com.spring.controller;

import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.spring.object.BlogDetails;
import com.spring.object.NewsArticles;
import com.spring.service.AdminServiceImpl;

@Controller
public class BlogController {

	@Autowired
	private AdminServiceImpl adminServiceImpl;

	@GetMapping("/blog")
	public String index(HttpServletRequest request, Model model) {
		List<BlogDetails> blogDetails = adminServiceImpl.findAllBlogDetails();
		model.addAttribute("blogData", blogDetails);
		return "blog/index";
	}

	@GetMapping("/blog/{pages}")
	public String blogInnerPage(@PathVariable String pages, HttpServletRequest request, Model model) {
		List<BlogDetails> blogDetails = adminServiceImpl.findAllBlogDetails();
		List<BlogDetails> details=blogDetails.stream().filter(x->x.getTitleUrl().equals(pages) && x.getStatus().equalsIgnoreCase("Active")).collect(Collectors.toList());
		try {
			if(details.get(0).getTitleUrl() == pages) {
				return "/404-error";
			}
		} catch (Exception e) {
			return "/404-error";
		}
		model.addAttribute("blogData", blogDetails);
		model.addAttribute("blogTitleData", details);
		return "blog/innerPages";
	}
	
	@GetMapping("/article")
	public String article(Model model) {
		List<NewsArticles> articles=adminServiceImpl.findAllNewsArticle();
		model.addAttribute("blogData", articles);
		return "article/index";
	}
	
	@GetMapping("/article/{pages}")
	public String articleInner(@PathVariable String pages,Model model) {
		List<NewsArticles> article=adminServiceImpl.findAllNewsArticle();
		List<NewsArticles> details=article.stream().filter(x->x.getTitleUrl().equals(pages) && x.getStatus().equalsIgnoreCase("Active")).collect(Collectors.toList());
		try {
			if(details.get(0).getTitleUrl() == pages) {
				return "/404-error";
			}
		} catch (Exception e) {
			return "/404-error";
		}
		model.addAttribute("blogData", article);
		model.addAttribute("blogTitleData", details);
		return "article/innerPages";
	}
}
