package com.Unnati.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Unnati.bean.StatusBean;
import com.Unnati.bean.TaskBean;
import com.Unnati.bean.Task_UserBean;
import com.Unnati.bean.UserBean;
import com.Unnati.dao.StatusDao;
import com.Unnati.dao.TaskDao;
import com.Unnati.dao.Task_UserDao;
import com.Unnati.dao.UserDao;

@Controller
public class Task_UserController {

	@Autowired
	UserDao userDao;
	
	@Autowired
	TaskDao taskDao;
	
	@Autowired
	StatusDao statusDao;
	
	@Autowired
	Task_UserDao task_UserDao;
	
	@GetMapping("/addtask_user")
	public String addTask_User(Model model) {
		List<UserBean> list5 = userDao.getDeveloper();
		model.addAttribute("list5",list5);
		List<TaskBean> list4 = taskDao.getAllTask();
		model.addAttribute("list4",list4);
		List<StatusBean> list1 =statusDao.getAllStatus();
		model.addAttribute("list1",list1);
		return "Task_User";
	}
	
	@PostMapping("/savetask_user")
	public String saveTask_User(Task_UserBean task_UserBean) {
		task_UserDao.addTask_User(task_UserBean);
		return "redirect:/addtask_user";
	}
	
	@GetMapping("/listtask_user")
	public String listTask_User(Model model) {
		List<Task_UserBean> list7 = task_UserDao.getAllTask_User();
		model.addAttribute("list7",list7);
		return "ListTask_User";
	}
	
	  @GetMapping("/devtask") 
	  public String devTask(HttpSession session,Model model) {
	   UserBean user = (UserBean)session.getAttribute("user"); 
	  List<Task_UserBean> devlist7 =task_UserDao.getDevAllTask(user.getUserId());
	 model.addAttribute("devlist7",devlist7);
	  return "DevTask";
	  }
	 
	
}
