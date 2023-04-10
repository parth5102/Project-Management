 package com.Unnati.Controller;

import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Unnati.bean.ProfileBean;
import com.Unnati.bean.ProjectChartBean;
import com.Unnati.bean.UserBean;
import com.Unnati.dao.AdminDao;
import com.Unnati.dao.UserDao;

@Controller
public class AdminController {
	
	
		@Autowired
		AdminDao adminDao;
		
		@Autowired
		UserDao userDao;
	
			
		@GetMapping("/admindashboard")
		public String adminDashboard(Model model) {
			 
			Integer getTotalProjectYear = adminDao.getTotalProjectYear();
			Integer getTotalProjectOnGoing = adminDao.getTotalProjectOnGoing();
			Integer getTotalPipeLine = adminDao.getTotalPipeLine();
			Integer getTotalProjectDelayed = adminDao.getTotalProjectDelayed();
			List<ProjectChartBean> chartData = adminDao.getProjectStats();			
			
			model.addAttribute("getTotalProjectYear",getTotalProjectYear);
			model.addAttribute("getTotalProjectOnGoing",getTotalProjectOnGoing);
			model.addAttribute("getTotalPipeLine",getTotalPipeLine);
			model.addAttribute("getTotalProjectDelayed",getTotalProjectDelayed);
			model.addAttribute("chartData",chartData);
			
			return "AdminDashboard";
		}
		
		@GetMapping("/myprofile")
		public String myProfile(Model model) {
			List<UserBean> list5 = userDao.getAllUser();
			model.addAttribute("list5",list5);
			return "MyProfile";
		}
		
		@PostMapping("/saveprofilepic")
		public String saveProfilePic(ProfileBean profileBean) {
			System.out.println(profileBean.getUserId());
			System.out.println(profileBean.getProfileImg().getOriginalFilename());
			try {
				File userDir = new File("C:\\Spring\\ProjectManagement\\src\\main\\resources\\static\\assets\\Profiles",profileBean.getUserId()+"");
				if (userDir.exists()==false) {
					userDir.mkdir();
				}
				File file = new File(userDir,profileBean.getProfileImg().getOriginalFilename());
				FileUtils.writeByteArrayToFile(file,profileBean.getProfileImg().getBytes());
				profileBean.setImageurl("assets/profiles/"+profileBean.getUserId()+"/"+profileBean.getProfileImg().getOriginalFilename());
				
			
				adminDao.updateImageUrl(profileBean);
			} catch (Exception e) {

			}
			
			return "redirect:/myprofile";
		}
	
}
