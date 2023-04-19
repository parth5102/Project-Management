package com.Unnati.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Unnati.bean.Task_UserBean;
import com.Unnati.bean.UserBean;
import com.Unnati.dao.Task_UserDao;

@Controller
public class DeveloperController {
	
	@Autowired
	Task_UserDao task_UserDao;
	
	@GetMapping("/developerdashboard")
	public String developerDashboard() {
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
