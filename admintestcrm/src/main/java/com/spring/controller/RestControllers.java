package com.spring.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.itextpdf.text.DocumentException;
import com.spring.service.ConvertPdfService;

@RestController
public class RestControllers {

	@Autowired
	private ConvertPdfService convertPdfService;

	public RestControllers(ConvertPdfService convertPdfService) {
		this.convertPdfService = convertPdfService;
	}

	@RequestMapping(value = "/generatePdf/{url}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public void convertPdf(@PathVariable String url, HttpServletResponse response,HttpServletRequest request)throws IOException, DocumentException {
		response.setContentType("application/pdf");
		DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd:hh:mm:ss");
		String currentTimeDate = dateFormat.format(new Date());
		String headerkey = "Cintent-Disposition";
		String headerValue = "attachment; filename=pdf_" + currentTimeDate + ".pdf";
		response.setHeader(headerkey, headerValue);
		this.convertPdfService.generatePdfs(url, response, request);
	}
}
