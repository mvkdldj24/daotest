package com.daotest.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.daotest.dao.Dao;
import com.daotest.service.Daoservice;


@Controller
@RequestMapping("/files")
public class Daocontroller {

	// Service
	@Autowired
	Daoservice ds;

	// select
	@RequestMapping("/list.do")
	public String select_list(Model m) {
		ArrayList<HashMap<String, String>> list = (new Dao()).select();
		m.addAttribute("list", list);

		return "/files/daotest";
	}

	// 요청 GET : daotest.do, 폼 : daotest.jsp
	@RequestMapping("/files")
	public String daotestGet() {
		// view return
		return "/files/insert_form";
	}

	// 요청 POST / daotest.do, 인서트 : daolist.jsp
	@RequestMapping(value = "/daotest.do", method = RequestMethod.POST)
	public String daotestPost(@RequestParam Map<String, String> pm) {
		ds.insert(pm);
		return "redirect:list.do";
	}

	// 요청 GET : daotest.do, 폼 : daotest.jsp
	@RequestMapping("/main")
	public String daotestGet2() {
		// view return
		return "/files/main";
	}

	// 파일 업로드
	@RequestMapping("/upproc")
	public String upProc(@RequestParam("file") MultipartFile f, @RequestParam("title") String title, Model m) {
		// 실행 정보 출력
		System.out.printf("파일 : %s, 제목 : %s \n", f.getOriginalFilename(), title);
		// 파일업로드
		m.addAttribute("finfo", ds.upload(f, title));

		return "/files/up";
	}

	// 이미지 업로드
	@PostMapping("/upprocimg")
	public String upProcimg(@RequestParam("file") MultipartFile f, @RequestParam Map<String, String> map, Model m) {		// 실행 정보 출력
		System.out.printf("파일 : %s, 제목 : %s \n", f.getOriginalFilename(), map.get("title"));
		// 파일업로드
		ds.uploadimgs(f, map.get("title"));

		return "redirect:/files/imgview.do";
	}
	
	@RequestMapping("/imgview.do")
	public String imgview(Model m) {
		m.addAttribute("imglist", ds.imgList());
		return "/files/imgview";
	}
	
	@RequestMapping("/uploadimg")
	public String uploadimg2() {
		// view return
		return "/files/imgup";
	}
	
	@RequestMapping("/fileupload")
	public String fileupload2() {
		// view return
		return "/files/up";
	}

}
