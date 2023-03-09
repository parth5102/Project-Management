package com.Unnati.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Unnati.bean.ModuleBean;
import com.Unnati.bean.ProjectBean;
import com.Unnati.bean.StatusBean;
import com.Unnati.bean.TaskBean;
import com.Unnati.dao.ModuleDao;
import com.Unnati.dao.ProjectDao;
import com.Unnati.dao.StatusDao;
import com.Unnati.dao.TaskDao;


@Controller
public class TaskController {
	
		
	@Autowired
	StatusDao statusDao;
	
	@Autowired
	ProjectDao projectDao;
	
	@Autowired
	TaskDao taskDao;
	
	@Autowired
	ModuleDao moduleDao;
	
	
	
	
	@GetMapping("/newtask")
	public String newTask(Model model) {
		List<StatusBean> list1 =statusDao.getAllStatus();
		model.addAttribute("list1",list1);
		List<ProjectBean> list2 =projectDao.getAllProject();
		model.addAttribute("list2",list2);
		List<ModuleBean> list3 = moduleDao.getAllModule();
		model.addAttribute("list3",list3);
		return "NewTask";
	}
	
	@PostMapping("/savetask")
	public String saveTask(TaskBean taskBean) {
		taskDao.addTask(taskBean);
		return "redirect:/newtask";
	}
	
	@GetMapping("/listtask")
	public String listTask(Model model) {
		List<TaskBean> list4 = taskDao.getAllTask();
		model.addAttribute("list4",list4);
		return "ListTask";
	}
	
}
