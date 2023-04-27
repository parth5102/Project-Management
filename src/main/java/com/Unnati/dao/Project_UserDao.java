package com.Unnati.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Unnati.bean.Project_UserBean;

@Repository
public class Project_UserDao {
	
	@Autowired
	JdbcTemplate stmt;
	public void addProject_User(Project_UserBean project_UserBean) {
		String insertQuery ="insert into project_user (userId,projectId,assignStatusId) values (?,?,?)";
		stmt.update(insertQuery,project_UserBean.getUserId(),project_UserBean.getProjectId(),project_UserBean.getAssignStatusId());
	}
	
	public List<Project_UserBean> getAllProject_User(){
		String selectQuery = "select users.firstName,project.title,assignStatusId from project, users , project_user where project_user.userId=users.userId and project_user.projectId=project.projectId";
		List<Project_UserBean> list6 = stmt.query(selectQuery,new BeanPropertyRowMapper<Project_UserBean>(Project_UserBean.class));
		return list6;
	}
	
	public List<Project_UserBean> getManagerProject(Integer userId){
		String selectQuery = "select p.title,pu.assignStatusId,pu.projectId from project p, project_user pu where pu.projectId=p.projectId and pu.userId = ?";
		List<Project_UserBean> list6 = stmt.query(selectQuery, new BeanPropertyRowMapper<>(Project_UserBean.class),new Object[] {userId});
		return list6;
	}

	public Integer getTotalProject(Integer userId) {
		String countQuery = "select count(*) from project_user where userId=?";
		return stmt.queryForObject(countQuery, Integer.class,new Object[] {userId});
	}

	public Integer getTotalRunningProject(Integer userId) {
		String countQuery = "select count(*) from project_user where userId=? and  assignStatusId=1";
		return stmt.queryForObject(countQuery,Integer.class,new Object[] {userId});
	}

	public Integer getEstimatedHours(Integer userId) {
		String countQuery = "select sum(p.estimatedHours) from project p,project_user pu where pu.projectId=p.projectId and pu.userId=?";
		return stmt.queryForObject(countQuery,Integer.class,new Object[] {userId});
	}

	public Integer getUtilizedHours(Integer userId) {
		String countQuery = "select sum(p.utilizedHours) from project p,project_user pu where pu.projectId=p.projectId and pu.userId=?";
		return stmt.queryForObject(countQuery, Integer.class,new Object[] {userId});
	}
	
	


}
