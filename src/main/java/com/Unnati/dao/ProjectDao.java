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
		String selectQuery = "select project.projectId,project.title,project.description,technology.technologyName,project.estimatedHours,project.startDate,"
				+ "project.complitionDate,project.utilizedHours,project.deleted,status.status from project ,technology  ,status "
				+ "where project.deleted = false and project.technologyId=technology.technologyId and project.statusId=status.statusId";
		List<ProjectBean> list2 = stmt.query(selectQuery,new BeanPropertyRowMapper<ProjectBean>(ProjectBean.class));
		return list2;
	}
	
	public void deleteProject(Integer projectId) {
		String updateQuery="update project set deleted = true where projectId=?";
		stmt.update(updateQuery,projectId);
	}
	
	public ProjectBean getProjectById(Integer projectId) {
		ProjectBean projectBean = null;
		try {
			projectBean = stmt.queryForObject("select * from project where projectId=?" ,
					new BeanPropertyRowMapper<ProjectBean>(ProjectBean.class),new Object[] {projectId});
		}
		catch(Exception e){
			System.out.println(e.getMessage());
			System.out.println("Error in projectDao");
			
		}
		return projectBean;
	}
	
}
