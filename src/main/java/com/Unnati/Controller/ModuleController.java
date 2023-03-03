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
import com.Unnati.dao.ModuleDao;
import com.Unnati.dao.ProjectDao;
import com.Unnati.dao.StatusDao;

@Controller
public class ModuleController {
		
	@Autowired
	StatusDao statusDao;
	
	@Autowired
	ProjectDao projectDao;
	
	@Autowired
	ModuleDao moduleDao;
	
	
	@GetMapping("/newmodule")
	public String newModule(Model model) {
		List<StatusBean> list1 = statusDao.getAllStatus();
		model.addAttribute(list1);
		List<ProjectBean> list = projectDao.getAllProject();
		model.addAttribute(list);
		return "NewModule";
	}
	
	@PostMapping("/savemodule")
	public String saveModule(ModuleBean moduleBean) {
		moduleDao.addModule(moduleBean);
		return "redirect:/newmodule";
		
	}
	
	
	
}
