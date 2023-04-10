package com.Unnati.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Unnati.bean.ProjectBean;
import com.Unnati.bean.Project_UserBean;
import com.Unnati.bean.UserBean;
import com.Unnati.dao.ProjectDao;
import com.Unnati.dao.Project_UserDao;
import com.Unnati.dao.UserDao;

@Controller
public class Project_UserController {

	@Autowired
	Project_UserDao project_UserDao;
	
	@Autowired
	ProjectDao projectDao;
	
	@Autowired
	UserDao userDao;
	
	@GetMapping("/addproject_user")
	public String addProject_User(Model model) {
		List<ProjectBean> list2 = projectDao.getAllProject();
		model.addAttribute("list2",list2);
		List<UserBean> list5 = userDao.getAllUser();
		model.addAttribute("list5",list5);
		return "Project_User";
	}
	
	@PostMapping("/saveproject_user")
	public String saveProject_User(Project_UserBean project_UserBean) {
		project_UserDao.addProject_User(project_UserBean);
		return "redirect:/addproject_user";
	}
	
	@GetMapping("/listproject_user")
	public String listProject(Model model) {
		List<Project_UserBean> list6 = project_UserDao.getAllProject_User();
		model.addAttribute("list6",list6);
		List<ProjectBean> list2 = projectDao.getAllProject();
		model.addAttribute("list2",list2);
		List<UserBean> list5 = userDao.getAllUser();
		model.addAttribute("list5",list5);
		return "ListProject_User";
	}
	
}
