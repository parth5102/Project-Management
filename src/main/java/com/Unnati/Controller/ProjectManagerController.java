package com.Unnati.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProjectManagerController {
	
	@GetMapping("/managerdashboard")
	public String managerDashboard() {
		return "ProjectManager";
	}

}
