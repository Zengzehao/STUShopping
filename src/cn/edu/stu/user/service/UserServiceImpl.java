package cn.edu.stu.user.service;
import cn.edu.stu.user.service.UserService;
import cn.edu.stu.user.dao.UserMapper;
import cn.edu.stu.user.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by sheng on 17-9-14.
 */
/**
 * User服务层接口实现类
 * @Service("userService")用于将当前类注释为一个Spring的bean，名为userService
 * */
@Transactional(propagation= Propagation.REQUIRED,isolation= Isolation.DEFAULT)
@Service("userService")
public class UserServiceImpl implements UserService {
    /**
     * 自动注入UserMapper
     * */
    @Autowired
    private UserMapper userMapper;

    @Transactional(readOnly=true)
    @Override
    public User login(String user_account, String user_password) {
        return userMapper.findWithUserAccountAndPassword(user_account,user_password);
    }

    @Override
    public int register(String user_account, String user_password, String user_name, String user_email) {
        return userMapper.insertWithUserAccountAndPassword(user_account,user_password,user_name,user_email);
    }

    @Override
    public int delete(String user_account, String user_password) {
        return userMapper.deleteWithUserAccountAndPassword(user_account,user_password);
    }

    @Override
    public void updatePassword(String user_account, String user_password) {
        userMapper.updateWithUserAccountAndPassword(user_account,user_password);
    }

    @Override
    public void updatePersonalInformation(String user_account, String user_name, String user_email) {
        userMapper.updatePersonalInformation(user_account,user_name,user_email);
    }


}
