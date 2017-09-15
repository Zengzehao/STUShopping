package cn.edu.stu.user.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface OrderUserDao {
    
    public static final String Table="order_user";
    
    @Delete("delete from "+Table+" where order_id = #{orderId}")
    int deleteByOrderd(String orderId);
    
    @Insert("insert into "+Table+" (order_id, user_id) values(#{orderId}, #{userId})")
    int add(@Param("orderId")String orderId, @Param("userId")String userId);
}
