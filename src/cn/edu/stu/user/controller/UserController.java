package cn.edu.stu.user.controller;

import cn.edu.stu.user.domain.JsonResponse;
import cn.edu.stu.user.domain.User;
import cn.edu.stu.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * 处理用户请求控制器
 * */
@Controller
public class UserController {
	
	/**
	 * 自动注入UserService
	 * */
	@Autowired
	@Qualifier("userService")
	private UserService userService;

	//登录
	@RequestMapping(value="/login",produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
	@ResponseBody
	public Object login(
			@RequestParam("user_account") String user_account,
			@RequestParam("user_password") String user_password){
		User userReturn = userService.login(user_account, user_password);
		if(userReturn!=null){
			return new JsonResponse<User>("1","login success",userReturn);
		}else {
			return new JsonResponse<User>("0","login fail",userReturn);
		}
	}

	//注册
	@RequestMapping(value="/registerUser",produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
	@ResponseBody
	public Object registerUser(
			@RequestParam("user_account") String user_account,
			@RequestParam("user_password") String user_password,
			@RequestParam("user_name") String user_name,
			@RequestParam("user_email")String user_email){
		try{                         //TODO 当用户注册的账号已经存在，会抛出异常
			int userReturn = userService.register(user_account, user_password,user_name,user_email);
			System.out.println(userReturn);
			return new JsonResponse<Boolean>("1","registerUser success",true);
		}catch (Exception e){
			return new JsonResponse<>("0","registerUser fail",false);
		}
	}

	//修改密码
	@RequestMapping(value="/updateUserPassword",produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
	@ResponseBody
	public Object updateUserPassword(
			@RequestParam("user_account") String user_account,
			@RequestParam("user_password") String user_password){
		userService.updatePassword(user_account,user_password);
		return new JsonResponse<Boolean>("1","updateUserPassword success",true);
	}
	//修改个人信息
	@RequestMapping(value="/updateUserInformation",produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
	@ResponseBody
	public Object updateUserInformation(
			@RequestParam("user_account") String user_account,
			@RequestParam("user_name") String user_name,
			@RequestParam("user_email")String user_email){
		userService.updatePersonalInformation(user_account,user_name,user_email);
		return new JsonResponse<Boolean>("1","updateUserInformation success",true);
	}
	//注销
	@RequestMapping(value="/deleteUser",produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
	@ResponseBody
	public Object deleteUser(
			@RequestParam("user_account") String user_account,
			@RequestParam("user_password") String user_password){
		int userReturn = userService.delete(user_account,user_password);
		System.out.println(userReturn);
		if(userReturn==1){         //成功返回1，失败返回0
			return new JsonResponse<Boolean>("1","deleteUser success",true);
		}else {
			return new JsonResponse<Boolean>("0","deleteUser fail",false);
		}
	}
}