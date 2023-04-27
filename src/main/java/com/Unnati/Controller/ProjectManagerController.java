package com.Unnati.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Unnati.bean.ProjectChartBean;
import com.Unnati.bean.UserBean;
import com.Unnati.dao.AdminDao;
import com.Unnati.dao.Project_UserDao;

@Controller
public class ProjectManagerController {
	
	@Autowired
	Project_UserDao project_UserDao;

	@Autowired
	AdminDao adminDao;
	
	@GetMapping("/managerdashboard")
	public String managerDashboard(Model model,HttpSession session) {
		
		UserBean user = (UserBean)session.getAttribute("user");
		
		Integer getTotalProjectYear = project_UserDao.getTotalProject(user.getUserId());
		Integer getTotalRunningProject = project_UserDao.getTotalRunningProject(user.getUserId());
		Integer getUtilizedHours = project_UserDao.getUtilizedHours(user.getUserId());
		Integer getEstimatedHours = project_UserDao.getEstimatedHours(user.getUserId());
		List<ProjectChartBean> chartData = adminDao.getMyProjectStats(user.getUserId());
		
		model.addAttribute("getTotalProjectYear",getTotalProjectYear);
		model.addAttribute("getTotalRunningProject",getTotalRunningProject);
		model.addAttribute("getUtilizedHours",getUtilizedHours);
		model.addAttribute("getEstimatedHours",getEstimatedHours);
		model.addAttribute("chartData",chartData);
		return "ManagerDashboard";
	}
	

}
