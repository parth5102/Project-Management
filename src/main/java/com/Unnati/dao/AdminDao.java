package com.Unnati.dao;

import java.util.Calendar;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {

	@Autowired
	JdbcTemplate stmt;
	
	public Integer getTotalProjectRunning() {
		
		String countQuery = "select count(*) from project where statusId=2";
		return stmt.queryForObject(countQuery, Integer.class);
	}

	public Integer getTotalProjectYear() {
		String countQuery = "select count(*) from project where startDate like ? or statusId=2";
		Calendar c = Calendar.getInstance();
		int yyy = c.get(Calendar.YEAR);
		String today = "%"+yyy;
		return stmt.queryForObject(countQuery,Integer.class,new Object[] {today});
	}
	
	public Integer getTotalProjectMonth() {
		String countQuery = "select count(*) from project where startdate like ? or statusId=2";
		Calendar c = Calendar.getInstance();
		int y = c.get(Calendar.MONTH);
		String today = "%"+	y +"%";
		return stmt.queryForObject(countQuery,Integer.class,new Object[] {today});
	}
	
}
