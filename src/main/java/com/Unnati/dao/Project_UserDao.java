package com.Unnati.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Unnati.bean.Project_UserBean;

@Repository
public class Project_UserDao {
	
	@Autowired
	JdbcTemplate stmt;
	public void addProject_User(Project_UserBean project_UserBean) {
		String insertQuery ="insert into project_User (userId,projectId,assignStatusId) values (?,?,?)";
		stmt.update(insertQuery,project_UserBean.getUserId(),project_UserBean.getProjectId(),project_UserBean.getAssignStatusId());
	}


}
