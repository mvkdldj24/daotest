package com.daotest.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.daotest.dao.Dao;

@Service
public class Daoservice {

	// dao
	@Autowired
	Dao dao;
	@Autowired
	String upath;
	@Autowired
	String imgpath;

	// 요청 GET : daotest.do, 폼 : daotest.jsp
	public void insert(Map<String, String> d) {
		System.out.println("Service:" + d);
		dao.insert(d);
	}

	// 요청 POST / daotest.do, 인서트 : daolist.jsp
	public ArrayList<HashMap<String, String>> select() {
		return dao.select();
	}

	// 파일 업로드 처리
	public Map<String, String> upload(MultipartFile f, String title) {
		// 정보 출력
		System.out.printf("파일이름 : %s", f.getOriginalFilename());

		// 초기
		UUID uid = UUID.randomUUID(); // 랜덤 아이디 생성
		String oname = f.getOriginalFilename();
		String fname = uid.toString() + "_" + oname; // 유일한 이름

		// 리턴 맵
		Map<String, String> finfos = new HashMap<String, String>() {
			{
				put("oname", oname);
				put("fname", fname);
				put("title", title);

			}
		};
		File file = new File(upath, fname);

		try {
			FileCopyUtils.copy(f.getBytes(), file);
			return finfos;

		} catch (Exception e) {
			System.out.println("파일 처리 예외 " + e.getMessage());
			return null;
		}
	}

	// 이미지 업로드 처리

	public Map<String, String> uploadimgs(MultipartFile f, String title) {
		// 정보 출력
		System.out.printf("파일이름 : %s", f.getOriginalFilename());

		// 초기
		UUID uid = UUID.randomUUID(); // 랜덤아이디 생성
		String oname = f.getOriginalFilename();
		String fname = uid.toString() + "_" + oname; // 유일한 이름
		// 유일한 이름
		Map<String, String> finfos = new HashMap<String, String>() {
			{
				put("oname", oname);
				put("fname", fname);
				put("title", title);
			}
		};

		// DB에 이미지이름 저장
		dao.insertImg(oname, fname, title);

		// 파일처리
		File file = new File(imgpath, fname);

		try {
			FileCopyUtils.copy(f.getBytes(), file);
			return finfos;
		} catch (Exception e) {
			System.out.println("파일 처리 예외 " + e.getMessage());
			return null;
		}

	}

	// 이미지 불러오기
	public ArrayList<HashMap<String, String>> imgList() {
		return dao.selectImg();
	}
}