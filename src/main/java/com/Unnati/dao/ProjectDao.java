package com.Unnati.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Unnati.bean.ProjectBean;


@Repository
public class ProjectDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void addProject(ProjectBean projectBean) {
		String insertQuery ="insert into project(title,description,technologyId,estimatedHours,startDate,complitionDate,utilizedHours,statusId,deleted)"
				+ " values(?,?,?,?,?,?,?,?,?)";
		stmt.update(insertQuery,projectBean.getTitle(),projectBean.getDescription(),projectBean.getTechnologyId(),projectBean.getEstimatedHours(),
				projectBean.getStartDate(),projectBean.getComplitionDate(),projectBean.getUtilizedHours(),projectBean.getStatusId(),false);
		System.out.println(projectBean.getTitle());
	}
	
	public List<ProjectBean> getAllProject(){
		String selectQuery = "select * from project where deleted=false ";
		List<ProjectBean> list = stmt.query(selectQuery,new BeanPropertyRowMapper<ProjectBean>(ProjectBean.class));
		return list;
	}
	
	public void deleteProject(Integer projectId) {
		String updateQuery="update project set deleted = true where projectId=?";
		stmt.update(updateQuery,projectId);
	}
	
}
