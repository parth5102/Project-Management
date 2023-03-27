package com.Unnati.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Unnati.dao.AdminDao;

@Controller
public class AdminController {
	
	
		@Autowired
		AdminDao adminDao;
	
			
		@GetMapping("/admindashboard")
		public String adminDashboard(Model model) {
			 
			Integer totalProject = adminDao.getTotalProjectRunning();
			Integer totalProjectYear = adminDao.getTotalProjectYear();
			Integer totalMonthProject= adminDao.getTotalProjectMonth();
			
			
			model.addAttribute("totalProject",totalProject);
			model.addAttribute("totalProjectYear",totalProjectYear);
			model.addAttribute("totalMonthProject",totalMonthProject);
			
			return "AdminDashboard";
		}
	
}
