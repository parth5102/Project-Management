package com.Unnati.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Unnati.bean.ProjectChartBean;
import com.Unnati.bean.Task_UserBean;
import com.Unnati.bean.UserBean;
import com.Unnati.dao.AdminDao;
import com.Unnati.dao.Task_UserDao;

@Controller
public class DeveloperController {
	
	@Autowired
	Task_UserDao task_UserDao;
	
	@Autowired
	AdminDao adminDao;
	
	@GetMapping("/developerdashboard")
	public String developerDashboard(Model model,HttpSession session) {
		UserBean user = (UserBean)session.getAttribute("user");
		Integer getTotalTask = task_UserDao.getTotalTask(user.getUserId());
		Integer getTotalProgressTask = task_UserDao.getInprogressTask(user.getUserId());
		Integer getGivenHours = task_UserDao.getGivenHours(user.getUserId());
		Integer getEstimatedHours = task_UserDao.getEstimatedHours(user.getUserId());
		List<ProjectChartBean> chartData = adminDao.getTaskStats(user.getUserId());
		
		model.addAttribute("getTotalTask",getTotalTask);
		model.addAttribute("getTotalProgressTask",getTotalProgressTask);
		model.addAttribute("getGivenHours",getGivenHours);
		model.addAttribute("getEstimatedHours",getEstimatedHours);
		model.addAttribute("chartData",chartData);
		
		return "DeveloperDashboard";
	}
	
	@GetMapping("/listdevtask")
	public String devTask(HttpSession session,Model model) {
		   UserBean user = (UserBean)session.getAttribute("user"); 
		  List<Task_UserBean> devlist7 =task_UserDao.getDevAllTask(user.getUserId());
		 model.addAttribute("devlist7",devlist7);
		  return "DevTask";
		  }
}
