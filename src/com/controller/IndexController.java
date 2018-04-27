package com.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class IndexController {
	@RequestMapping("/show")
	public String show(MultipartFile up,HttpServletRequest request, HttpSession session){
		//获取上传的原文件的名字
		String fileName = up.getOriginalFilename();
		//获取文件的大小，可用于判断文件是否太大，不能上传
		long size = up.getSize();
		//获取文件的后缀名，可用于判断文件格式是否正确
		String extension = FilenameUtils.getExtension(fileName);
		
		request.setAttribute("fileName", fileName);
		request.setAttribute("size", size);
		request.setAttribute("extension", extension);
		
		//获得images目录的实际路径，用于文件上传
		String path = session.getServletContext().getRealPath("images"); 
		
		//上传到images目录下
		File targetFile = new File(path, fileName);  
        if(!targetFile.exists()){  
            targetFile.mkdirs();  
        } 
		try {
			//上传文件
			up.transferTo(targetFile);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} 
		return "show";
	}
}
