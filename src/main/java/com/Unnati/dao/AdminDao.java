package com.Unnati.dao;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Unnati.bean.ProfileBean;
import com.Unnati.bean.ProjectChartBean;

@Repository
public class AdminDao {

	@Autowired
	JdbcTemplate stmt;
	
	public Integer getTotalProjectYear() {
		String countQuery = "select count(*) from project where startDate like ? ";
		Calendar c = Calendar.getInstance();
		int yyy = c.get(Calendar.YEAR);
		System.out.println(yyy);
		String today = "%"+yyy;
		System.out.println(today);
		return stmt.queryForObject(countQuery,Integer.class,new Object[] {today});
	}
	
	public Integer getTotalProjectOnGoing() {	
		String countQuery = "select count(*) from project where statusId=2";
		return stmt.queryForObject(countQuery, Integer.class);
	}
	
public Integer getTotalPipeLine() {
		String countQuery = "select count(*) from project where statusId=1";
		return stmt.queryForObject(countQuery, Integer.class);
	}

	
	
	public Integer getTotalProjectDelayed() {
		String countQuery = "select count(*) from project where startdate like ? and statusId=2";
		Calendar c = Calendar.getInstance();
		int y = c.get(Calendar.MONTH)+1;
		System.out.println(y);
		String today = "01/0"+y + "/2023";
		System.out.println(today);
		return stmt.queryForObject(countQuery,Integer.class,new Object[] {today});
	}
	
	public List<ProjectChartBean> getProjectStats() {
		String selectQuery = "select monthname(startDate) as month , count(projectId) as projectCount from project where year(startDate) = 2023 group by monthname(startDate),month(startDate) order by month(startDate)";
		return stmt.query(selectQuery, new BeanPropertyRowMapper<ProjectChartBean>(ProjectChartBean.class));
	}
	
	/* totalProject , totalPipeline, totalOngoing,totalDelayed*/
	 
	public void updateImageUrl(ProfileBean profileBean) {
		stmt.update("update users set imageurl=? where userId=?",profileBean.getImageurl(),profileBean.getUserId());
		
	}
	
	
}
