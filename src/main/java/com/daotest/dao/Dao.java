package com.daotest.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import commons.Db;

@Component
public class Dao {
	// insert
	public void insert(Map<String, String> d) {
		String sql = String.format("INSERT INTO extable VALUES ('%s', '%s','%s','%s','%s','%s','%s','%s')",
				d.get("m_id"), d.get("m_pad"), d.get("m_name"), d.get("m_age"), d.get("m_tel"), d.get("m_addr"),
				d.get("i_title"), d.get("i_name"));
		Db.executeUpdate(sql);
		System.out.println(sql);
	}

	// select
	public ArrayList<HashMap<String, String>> select() {
		return Db.selectListMap("SELECT * FROM extable");

	}

	// 이미지 INSERT
	public void insertImg(String oname, String fname, String title) {
		String sql = String.format("insert into img_t "
				+ "values(SQ_IMG_T.NEXTVAL, '%s', '%s', '%s')", 
				oname, fname, title);
		Db.executeUpdate(sql);
	}

	// 이미지 LIST
	public ArrayList<HashMap<String, String>> selectImg() {
		String sql = "SELECT * FROM IMG_T ORDER BY img_n desc";
		return Db.selectListMap(sql);
	}
	
}
