package com.Unnati.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Unnati.bean.TechnologyBean;

@Repository

public class TechnologyDao {
	
	@Autowired
	JdbcTemplate stmt;
	
	public void addTechnology(TechnologyBean technologyBean) {
		String insertQuery = "insert into technology (technologyName,deleted) values (?,?) ";

		stmt.update(insertQuery, technologyBean.getTechnologyName(), false);
	}

	
	public List<TechnologyBean> getAllTechnology(){
		String selectQuery = "select * from technology where deleted=false";
		List<TechnologyBean> list = stmt.query(selectQuery,new BeanPropertyRowMapper<TechnologyBean>(TechnologyBean.class));
		return list;
	}
	
	public void deleteTechnology(Integer technologyId) {
		String updateQuery = "update technology set deleted= true where technologyId=?";
		stmt.update(updateQuery,technologyId);
	}
		
}
