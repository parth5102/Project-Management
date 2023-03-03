package com.Unnati.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Unnati.bean.ModuleBean;

@Repository
public class ModuleDao {

	@Autowired
	JdbcTemplate stmt;

	public void addModule(ModuleBean moduleBean) {
		String insertQuery = "insert into module(moduleName,projectId,status,description,docURL,estimatedHours,totalUtilizedHours)"
				+ "values (?,?,?,?,?,?,?)";
		stmt.update(insertQuery,moduleBean.getModuleName(),moduleBean.getProjectId(),moduleBean.getStatusId(),
				moduleBean.getDescription(),moduleBean.getDocURL(),moduleBean.getEstimatedHours(),moduleBean.getTotalUtilizedHours());
	}
	
}
