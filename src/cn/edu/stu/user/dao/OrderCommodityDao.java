package cn.edu.stu.user.dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface OrderCommodityDao {
    
    public static final String Table="order_commodity";
    
    @Delete("delete from "+Table+" where order_id = #{orderId}")
    int deleteByOrderd(String orderId);
    
    @Insert("insert into "+Table+" (order_id, commodity_id, commodity_num) values (#{orderId}, #{commodityId}, #{commodityNum})")
    int add(@Param("orderId")String orderId, @Param("commodityId")String commodityId, @Param("commodityNum")String num);
}
