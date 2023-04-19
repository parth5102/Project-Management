package com.Unnati.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Unnati.bean.TaskBean;

@Repository
public class TaskDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void addTask(TaskBean taskBean) {
		String insertQuery="insert into task(moduleId,projectId,statusId,estimatedHours,totalUtilizedHours,docURL,description) values(?,?,?,?,?,?,?)";
		stmt.update(insertQuery,taskBean.getModuleId(),taskBean.getProjectId(),taskBean.getStatusId(),taskBean.getEstimatedHours(),
				taskBean.getTotalUtilizedHours(),taskBean.getDocURL(),taskBean.getDescription());
		System.out.println(taskBean.getProjectId());
	}
	
	public List<TaskBean> getAllTask() {
		String selectQuery=" select t.taskId,m.moduleName,p.title,s.status,t.estimatedHours,t.totalUtilizedHours,t.docURL,"
				+ "t.description from task t,project p,status s,module m where t.moduleId=m.moduleId and t.projectId=p.projectId"
				+ " and t.statusId=s.statusId";
		List<TaskBean> list4 = stmt.query(selectQuery,new BeanPropertyRowMapper<TaskBean>(TaskBean.class));
		return list4;
	}
	
}
 