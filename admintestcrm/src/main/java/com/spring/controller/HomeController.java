package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.entity.ContactUs;
import com.spring.object.BlogDetails;
import com.spring.object.HomeContents;
import com.spring.service.AdminServiceImpl;

@Controller
public class HomeController {

	@Autowired
	private AdminServiceImpl adminServiceImpl;

	@GetMapping("/")
	public String login(HttpServletRequest request, Model model) {
		List<HomeContents> homeContents = adminServiceImpl.findAllHomeContent();
		List<BlogDetails> blogDetails = adminServiceImpl.findAllBlogDetails();
		model.addAttribute("homeContent", homeContents.get(0));
		model.addAttribute("blogDetails", blogDetails);
		return "index";
	}

	@GetMapping("/contact-us")
	public String contactUs(HttpServletRequest request, Model model) {
		model.addAttribute("aboutUs", model);
		return "landing/contactUs";
	}

	@PostMapping("/contact-us")
	public String contacUs_Submit(ContactUs contactUs,HttpServletRequest request, Model model) {
		adminServiceImpl.saveContactUs(contactUs);
		model.addAttribute("aboutUs", model);
		return "landing/contactUs";
	}
}
