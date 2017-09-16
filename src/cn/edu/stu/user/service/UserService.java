package cn.edu.stu.user.service;

import cn.edu.stu.user.domain.User;

/**
 * User服务层接口
 * */
public interface UserService {
	
	/**
	 * 判断用户登录
	 * @param user_account
	 * @param user_password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	User login(String user_account, String user_password);

	int register(String user_account, String user_password,String user_name,String user_email);

	int delete(String user_account, String user_password);

	void updatePassword(String user_account, String user_password);

	void updatePersonalInformation(String user_account,String user_name, String user_email);

}
