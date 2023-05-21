package com.spring.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.hibernate.annotations.Parent;
import org.jsoup.Jsoup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfWriter;
import com.spring.object.BlogDetails;
import com.spring.object.NewsArticles;

@Service
public class ConvertPdfService {
 
	@Autowired
	private ObjectMapper mapper;
	
	@Autowired
	private AdminServiceImpl adminServiceImpl;
	
	public void generatePdfs(String url, HttpServletResponse response,HttpServletRequest request) throws IOException, DocumentException {
		List<BlogDetails> blogDetails = adminServiceImpl.findAllBlogDetails();
		List<NewsArticles> newsArticles =adminServiceImpl.findAllNewsArticle();
		List<BlogDetails> list1=blogDetails.stream().filter(x->x.getTitleUrl().equals(url) && x.getStatus().equalsIgnoreCase("Active")).collect(Collectors.toList());
		List<NewsArticles> list2=newsArticles.stream().filter(x->x.getTitleUrl().equals(url) && x.getStatus().equalsIgnoreCase("Active")).collect(Collectors.toList());
		List<BlogDetails> detail=new ArrayList<BlogDetails>();
		for(BlogDetails data:list1) {
			BlogDetails details=new BlogDetails();
			details.setHeading(data.getHeading());
			details.setContent(data.getContent());
			detail.add(details);
		}
		for(NewsArticles data:list2) {
			BlogDetails details=new BlogDetails();
			details.setHeading(data.getHeading());
			details.setContent(data.getContent());
			detail.add(details);
		}
		Document document=new Document(PageSize.A4); 
		PdfWriter.getInstance(document, response.getOutputStream());
		document.open();
		Font fontTitle=FontFactory.getFont(FontFactory.HELVETICA_BOLD);
		fontTitle.setSize(22);
		Paragraph paragraph=new Paragraph(detail.get(0).getHeading(),fontTitle);
		Font content=FontFactory.getFont(FontFactory.HELVETICA);
		content.setSize(15);
		Paragraph contents=new Paragraph(mapper.writeValueAsString(Jsoup.parse(detail.get(0).getContent()).text()),content);
		document.add(paragraph);
		document.add(contents);
		document.close();
	}
}