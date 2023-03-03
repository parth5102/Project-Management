package com.Unnati.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Unnati.bean.StatusBean;

@Repository
public class StatusDao {
	
	@Autowired
	JdbcTemplate stmt;
	
	public List<StatusBean> getAllStatus(){
		String selectQuery = "select * from status";
		List<StatusBean> list1 = stmt.query(selectQuery,new BeanPropertyRowMapper<StatusBean>(StatusBean.class));
		return list1;
	}
}
