package com.Unnati.dao;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Unnati.bean.Task_UserBean;

@Repository
public class Task_UserDao {

	@Autowired
	JdbcTemplate stmt;
	
	public void addTask_User(Task_UserBean task_UserBean) {
		Calendar c = Calendar.getInstance();
		int ddd = c.get(Calendar.DATE);
		int mmm = c.get(Calendar.MONTH) + 1;
		int yyy = c.get(Calendar.YEAR);
		String today = "";
		if (mmm < 10) {
			today = yyy + "-0" + mmm + "-" + ddd;
		} else {
			today = yyy + "-" + mmm + "-" + ddd;
		}
		System.out.println("TODAY => " + today);
		
		String insertQuery ="insert into task_User (userId,taskId,assignStatus,statusId,utilizedHours,assignDate) values(?,?,?,?,?,?)";
		stmt.update(insertQuery,task_UserBean.getUserId(),task_UserBean.getTaskId(),task_UserBean.getAssignStatus()
				,task_UserBean.getStatusId(),task_UserBean.getUtilizedHours(),today);
	}
	
	public List<Task_UserBean> getAllTask_User(){
		String selectQuery = "select tu.taskUserId,u.firstName,p.title,tu.assignStatus,s.status,tu.utilizedHours from task_User tu,users u,task t,project p,status s where tu.userId=u.userId and tu.taskId=t.taskId and t.projectId=p.projectId and tu.statusId=s.statusId";
		List<Task_UserBean> list7=stmt.query(selectQuery, new BeanPropertyRowMapper<Task_UserBean>(Task_UserBean.class));
		return list7;
	}

	public List<Task_UserBean> getDevAllTask(Integer userId) {
		String selectQuery = "select p.title,t.assignstatus,s.status,t.utilizedHours from task_User t,users u, task ,project p,status s where t.taskId=task.taskId and task.projectId=p.projectId and t.statusId=s.statusId and t.userId=u.userId and u.userId=?";
		List<Task_UserBean> devlist7 = stmt.query(selectQuery, new BeanPropertyRowMapper<>(Task_UserBean.class),new Object[] {userId});
		return devlist7;
	}

	public Integer getTotalTask(Integer userId) {
		String countQuery = "select count(*) from task_user where userId=?";
		return stmt.queryForObject(countQuery, Integer.class, new Object[] {userId});
	}

	public Integer getInprogressTask(Integer userId) {
		String countQuery = "select count(*) from task_user where userId=? and statusId=2";
		return stmt.queryForObject(countQuery,Integer.class,new Object[] {userId});
	}

	public Integer getGivenHours(Integer userId) {
		String countQuery ="select sum(utilizedHours) from task_user where userId=?";
		return stmt.queryForObject(countQuery, Integer.class,new Object[] {userId});
	}

	public Integer getEstimatedHours(Integer userId) {
		String countQuery = "select sum(t.estimatedHours) from task t,task_user tu where t.taskId = tu.taskId and userId=?";
		return stmt.queryForObject(countQuery, Integer.class,new Object[] {userId});
	}
	
}
