package com.spring.project;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.NoHandlerFoundException;

import com.google.gson.JsonObject;
import com.spring.project.camping.DTO.BoardVO;
import com.spring.project.camping.DTO.CampingVO;
import com.spring.project.camping.service.BoardService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	BoardService service;

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile() {
		return "profile";
	}

	@RequestMapping(value = "/manager", method = RequestMethod.GET)
	public String manager() {
		logger.info("Connect Manager");
		return "manager";
	}
	
	@RequestMapping(value = "/support", method = RequestMethod.GET)
	public String support() {
		logger.info("Connect Support");
		return "support";
	}
	
	@RequestMapping(value = "/main_paragraph", method = RequestMethod.GET)
	public String mainParagraph() {
		logger.info("Connect MainParagraph");
		return "main_paragraph";
	}

	@RequestMapping(value = "/camping_index", method = RequestMethod.GET )
	public String camping_index() {
		logger.info("Connect camping_index");
		return "camping_index";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET )
	public String width() {
		logger.info("Connect write");
		return "write";
	}
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board() {
		logger.info("Connect FreeBoard");
		return "freeBoard";
	}
	@RequestMapping(value = "/WriteAct", method = RequestMethod.POST)
	@ResponseBody
	public String write(BoardVO boardVO) throws Exception{
		logger.info("WriteAct");
		
		service.write(boardVO);
		
		return "write";
		
		
	}
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String reservation() {
		return "reservation";
	}
	
	@RequestMapping(value = "/reservation2", method = RequestMethod.GET)
	public String reservation2() {
		return "reservation2";
	}
	@RequestMapping(value = "/reservation3", method = RequestMethod.GET)
	public String reservation3() {
		return "reservation3";
	}
	
	@RequestMapping(value = "/imageUpload", method = RequestMethod.POST)
	public void imageUpload(HttpServletRequest req, HttpServletResponse res, @RequestParam MultipartFile upload) throws Exception{ 
		logger.info("ckUpload 진입 =========================================1");

		
		// 랜덤 문자 생성 
		UUID uid = UUID.randomUUID(); 
		OutputStream out = null; 
		PrintWriter printWriter = null; 
		
		// 인코딩
		res.setCharacterEncoding("utf-8"); 
		res.setContentType("text/html;charset=utf-8");

		try { 
		
			String fileName = upload.getOriginalFilename(); 
			byte[] bytes = upload.getBytes();
		
			HttpSession session = req.getSession();

			String root_path = session.getServletContext().getRealPath("/");
			
			String imgUploadPath =root_path+"resources\\imgUpload\\" + fileName; //윈도우
			
			System.out.println(imgUploadPath);
			out = new FileOutputStream(new File(imgUploadPath));
			out.write(bytes);
			out.flush(); 
		 System.out.println("성공");
		 String callback = req.getParameter("CKEditorFuncNum");
		 printWriter = res.getWriter();
		 
		 String fileUrl = "/resources/imgUpload/" + fileName;
		 System.out.println(fileUrl + "fileUrl");
		 
		 printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
		 
		 JsonObject json = new JsonObject();
		  json.addProperty("uploaded", 1);
		  json.addProperty("fileName", fileName);
		  json.addProperty("url", fileUrl);
		  printWriter.println(json);


		  printWriter.flush();	
		 System.out.println("완료");

		}catch (IOException e) {
			e.printStackTrace();
		} finally { 
			try {
				if(out != null) { 
					out.close(); 
				}
				if(printWriter != null){ 
					printWriter.close(); 
				}
			} catch(IOException e) { 
				e.printStackTrace(); 
			}
		} 
		
		return;
		
		 
	}
}
