	package cn.edu.stu.user.dao;

import cn.edu.stu.user.domain.User;
import org.apache.ibatis.annotations.*;


/**
 * UserMapper接口
 */
public interface UserMapper {

    @Select("select * from user where user_account = #{user_account} and user_password = #{user_password}")
    User findWithUserAccountAndPassword(@Param("user_account") String user_account,
                                        @Param("user_password") String user_password);

    @Delete("delete from user where user_account = #{user_account} and user_password = #{user_password}")
    int deleteWithUserAccountAndPassword(@Param("user_account") String user_account,
                                         @Param("user_password") String user_password);

    @Insert("insert into user(user_account,user_password,user_name,user_email) values (#{user_account}," +
            "#{user_password},#{user_name},#{user_email})")
    int insertWithUserAccountAndPassword(@Param("user_account") String user_account,
                                         @Param("user_password") String user_password,
                                         @Param("user_name") String user_name,
                                         @Param("user_email") String user_email);
    //TODO
    @Update("update user set user_password = #{user_password} where user_account = #{user_account}")
    void updateWithUserAccountAndPassword(@Param("user_account") String user_account,
                                         @Param("user_password") String user_password);


    @Update("update user set user_name = #{user_name}, user_email = #{user_email} where user_account = #{user_account}")
    void updatePersonalInformation(@Param("user_account") String user_account,
                                   @Param("user_name") String user_name,
                                   @Param("user_email") String user_email);

}
