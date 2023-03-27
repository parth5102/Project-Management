package com.Unnati.Controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.Unnati.Service.EmailService;
import com.Unnati.Util.OtpGenrate;
import com.Unnati.bean.ForgetPasswordBean;
import com.Unnati.bean.LoginBean;
import com.Unnati.bean.UpadatePasswordBean;
import com.Unnati.bean.UserBean;
import com.Unnati.dao.UserDao;

@Controller


public class SessionController {
	
	@Autowired
	UserDao userDao;
	
	
	
	@Autowired
	EmailService emailService;
	
	
	@GetMapping("/signup")
	public String signup() {
		return "Signup";
	}

	// jsp input process
	@PostMapping("/saveuser")
	public String saveUser(UserBean user , Model model) {
		System.out.println(user.getFirstName());
		System.out.println(user.getEmail());
		UserBean user1 = userDao.getUserByEmail(user);
		if(user1 ==null) {
			userDao.insertUser(user);
			return "Login";
			
		}else{
			model.addAttribute("error","Email Adress Alredy Exist");
			return"Signup";
		}
	}
	
	
	
	
	@GetMapping("/login")
	public String login() {

		return "Login";
	}
	@PostMapping("/authentication")
	public String authentication(LoginBean login,Model model,HttpServletResponse response,HttpSession session) {
		UserBean userBean=userDao.authenticateUser(login);
		if(userBean == null) {
			model.addAttribute("error","Invalid Credentials");
			return "Login";
		}
		else {
			
			Cookie c1 = new Cookie("userId",userBean.getUserId()+"");
			Cookie c2 = new Cookie("firstName",userBean.getFirstName());
			// cookie view			
			response.addCookie(c1);
			response.addCookie(c2);
			// session view
			session.setAttribute("userId",userBean.getUserId());
			session.setAttribute("user", userBean);
			session.setMaxInactiveInterval(60*5);
			
			if(userBean.getRole()==1) {
				return "redirect:/admindashboard";
			}
			else if(userBean.getRole()==2) {
				return "redirect:/developerdashboard";
			}
			else if(userBean.getRole()==3) {
				return "redirect:/home";
			}
			else {
				return "redirect:/signup";
			}
		}
	}
	
	
	@GetMapping("/")
	public String root() {
		return "Login";
	}
	
	

	@GetMapping("/forgetpassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}
	@PostMapping("/otpforforgetpassword")
	public String otpForForgetPassword(ForgetPasswordBean forgetPasswordBean ,Model model) {
		System.out.println(forgetPasswordBean.getEmail());
		UserBean user=userDao.findUserByEmail(forgetPasswordBean);
		if (user==null) {
			model.addAttribute("error","Invalid Email" );
			return "ForgetPassword";
			
		}
		else {
			String otp = OtpGenrate.genrateOTP(4);
			userDao.updateOtp(forgetPasswordBean.getEmail(), otp);
			emailService.sendEmailForForgetPassword(forgetPasswordBean.getEmail(), otp);
			return "UpdatePassword";
		}
		
	}
	@PostMapping("/updatemypassword")
	public String updatePassword(UpadatePasswordBean upBean,Model model) {
		System.out.println(upBean.getEmail());
		System.out.println(upBean.getPassword());
		System.out.println(upBean.getOtp());
		UserBean user = userDao.vreifyOTP(upBean);
		if(user == null) {
		return "UpdatePassword";
		}
		else {
			userDao.updateMyPassword(upBean);
			return "Login";
		}
	
	}
		@GetMapping("/logout")
		public String logout(HttpSession session) {
			session.invalidate();
		return "redirect:/login";	
		}
	
}
