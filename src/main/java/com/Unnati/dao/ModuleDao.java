package com.Unnati.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Unnati.bean.ModuleBean;

@Repository
public class ModuleDao {

	@Autowired
	JdbcTemplate stmt;

	public void addModule(ModuleBean moduleBean) {
		String insertQuery = "insert into module(moduleName,projectId,statusId,description,docURL,estimatedHours,totalUtilizedHours)"
				+ "values (?,?,?,?,?,?,?)";
		stmt.update(insertQuery,moduleBean.getModuleName(),moduleBean.getProjectId(),moduleBean.getStatusId(),
				moduleBean.getDescription(),moduleBean.getDocURL(),moduleBean.getEstimatedHours(),moduleBean.getTotalUtilizedHours());
	}
	
	public List<ModuleBean> getAllModule(){
		String selectQuery = "select module.moduleId,module.moduleName,project.title,status.status,module.description,"
				+ "module.docURL,module.estimatedHours,module.totalUtilizedHours from module,project,status "
				+ "where module.projectId=project.projectId and module.statusId=status.statusId";
		List<ModuleBean> list3 = stmt.query(selectQuery, new BeanPropertyRowMapper<ModuleBean>(ModuleBean.class));
		return list3;
	}
	
}