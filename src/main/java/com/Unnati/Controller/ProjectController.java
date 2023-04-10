	package com.Unnati.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Unnati.bean.ProjectBean;
import com.Unnati.bean.StatusBean;
import com.Unnati.bean.TechnologyBean;
import com.Unnati.dao.ProjectDao;
import com.Unnati.dao.StatusDao;
import com.Unnati.dao.TechnologyDao;

@Controller
public class ProjectController {
	
	@Autowired
	ProjectDao projectDao;
	
	@Autowired
	StatusDao statusDao;

	
	@Autowired
	TechnologyDao technologyDao;
	
	@GetMapping("/newproject")
	public String newProject(Model model){
		List<TechnologyBean> list = technologyDao.getAllTechnology();
		model.addAttribute("list",list);
		List<StatusBean> list1 = statusDao.getAllStatus();
		model.addAttribute("list1",list1);
		return "NewProject";
	}
	
	@PostMapping("/saveproject")
	public String saveProject(ProjectBean projectBean) {
		projectDao.addProject(projectBean);
		System.out.println(projectBean.getTitle());
		System.out.println(projectBean.getTechnologyId());
		return "redirect:/newproject";
	}
	
	@GetMapping("/listproject")
	public String listProject(Model model) {
		List<ProjectBean> list2 = projectDao.getAllProject();
		model.addAttribute("list2",list2);
		return "ListProject";
	}
	
	@GetMapping("/deleteproject/{projectId}")
	public String deleteProject(@PathVariable("projectId")Integer projectId) {
		projectDao.deleteProject(projectId);
		return "redirect:/listproject";
	}
	
	@GetMapping("/viewproject")
	public String viewProject(@RequestParam("projectId")Integer projectId,Model model) {
		ProjectBean projectBean = projectDao.getProjectById(projectId);
		model.addAttribute("projectBean",projectBean);
		return "ViewProject";
	}
	
}
