package com.Unnati.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Unnati.bean.ForgetPasswordBean;
import com.Unnati.bean.LoginBean;
import com.Unnati.bean.UpadatePasswordBean;
import com.Unnati.bean.UserBean;

@Repository

public class UserDao {

	@Autowired
	JdbcTemplate stmt;// new

	public void insertUser(UserBean userBean) {

		String insertQuery = "insert into users(firstName,lastName,email,password,role,deleted) values(?,?,?,?,?,?)";
		stmt.update(insertQuery, userBean.getFirstName(), userBean.getLastName(), userBean.getEmail(),
				userBean.getPassword(), 2,false);
	}

	public UserBean authenticateUser(LoginBean loginBean) {
		try{
			String loginQuery="select * from users where email=? and password=?";
		UserBean user= stmt.queryForObject(loginQuery,new BeanPropertyRowMapper<UserBean>(UserBean.class),
				new Object[] {loginBean.getEmail(),loginBean.getPassword()});
		return user;
	}
		catch(Exception e) {
			System.out.println("Somthing gone Wrong");
			System.out.println(e.getMessage());
		}
		return null;
		}
	
	public UserBean findUserByEmail(ForgetPasswordBean forgetPasswordBean) {
		try {
			
			String selectEmailQuery = "select * from users where email=?";
			UserBean user = stmt.queryForObject(selectEmailQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class)
				,new Object[] {forgetPasswordBean.getEmail()}	);
			return user;
			
		} catch (Exception e) {
		System.out.println(e.getMessage());
				
			
		}
		return null;
	}
		public void updateOtp(String email,String otp) {
			String updateotpQuery="update users set otp=? where email=?";
			stmt.update(updateotpQuery,otp,email);
		}
		
		public void updateMyPassword(UpadatePasswordBean upBean) {
			String updateQuery="update users set password=? , otp=? where email=?";
			stmt.update(updateQuery,upBean.getPassword(),null,upBean.getEmail());
		}

		public UserBean vreifyOTP(UpadatePasswordBean upBean) {
			try {
				
				String otpQuery = "select * from users where email=? and otp=?";
				UserBean user = stmt.queryForObject(otpQuery, new BeanPropertyRowMapper<UserBean>(UserBean.class)
					,new Object[] {upBean.getEmail(),upBean.getOtp()});
				return user;
				
			} catch (Exception e) {
			System.out.println(e.getMessage());
					
			return null;	
			}
			
		}
		
		public List<UserBean> getAllUser(){
			String selectQuery = "select * from users";
			List<UserBean> list5 = stmt.query(selectQuery,new BeanPropertyRowMapper<UserBean>(UserBean.class));
			return list5;
			
		}

}
