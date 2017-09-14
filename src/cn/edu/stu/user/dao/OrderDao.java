package cn.edu.stu.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.edu.stu.user.dao.provider.OrderProvider;
import cn.edu.stu.user.domain.Order;
import cn.edu.stu.user.domain.OrderAddRequest;

public interface OrderDao {
    public static final String OrderTable="p_order";
    
    @Delete("delete from "+OrderTable+" where order_id = #{orderId}")
    int deleteByOrderd(String orderId);
    
    @InsertProvider(type=OrderProvider.class, method="insertOrder")
    int add(OrderAddRequest order);
    
    @Update("update "+OrderTable+" set is_pay = #{isPay} where order_id = #{orderId}")
    int updateIsPay(@Param("orderId")String orderId, @Param("isPay")String isPay);
    
    @Select("select a.order_id as orderId,"+
            " a.set_time as setTime,"+
            " a.send_time as sendTime,"+
            " a.is_pay as isPay,"+
            " a.price as price,"+
            " a.commodity_num as commodityNum,"+
            " a.commodity_id as commodityId,"+
            " b.commodity_name as commodityName,"+
            " b.commodity_picture as commodityPic,"+
            " b.commodity_price as commodityPrice,"+
            " b.commodity_introduce as commodityIntro"+
 " from ("+
         " select a.*,b.commodity_id,b.commodity_num"+
             " from p_order a,order_commodity b where a.order_id in("+
                 " select order_id from order_user where user_id = #{userId}"+
              " )"+ 
              " and a.is_pay = 0 "+
              " and a.order_id = b.order_id"+
  " )a"+
  " left join commodity b on a.commodity_id=b.commodity_id")
    List<Order> selectUnPayByUserId(String userId);
    
    @Select("select a.order_id as orderId,"+
            " a.set_time as setTime,"+
            " a.send_time as sendTime,"+
            " a.is_pay as isPay,"+
            " a.price as price,"+
            " a.commodity_num as commodityNum,"+
            " a.commodity_id as commodityId,"+
            " b.commodity_name as commodityName,"+
            " b.commodity_picture as commodityPic,"+
            " b.commodity_price as commodityPrice,"+
            " b.commodity_introduce as commodityIntro"+
 " from ("+
         " select a.*,b.commodity_id,b.commodity_num"+
             " from p_order a,order_commodity b where a.order_id in("+
                 "select order_id from order_user where user_id = #{userId}"+
              " )"+ 
              " and a.is_pay = 1 "+
              " and a.order_id = b.order_id"+
  " )a"+
  " left join commodity b on a.commodity_id=b.commodity_id")
    List<Order> selectPayedByUserId(String userId);
    
    @Select(" select a.order_id as orderId,"+
            " a.set_time as setTime,"+
            " a.send_time as sendTime,"+
            " a.is_pay as isPay,"+
            " a.price as price,"+
            " a.commodity_num as commodityNum,"+
            " a.commodity_id as commodityId,"+
            " b.commodity_name as commodityName,"+
            " b.commodity_picture as commodityPic,"+
            " b.commodity_price as commodityPrice,"+
            " b.commodity_introduce as commodityIntro"+
 " from("+
         " select a.*,b.commodity_id,b.commodity_num"+
             " from p_order a, order_commodity b where a.order_id in("+
                 " select order_id from order_user where user_id = #{userId}"+
              " )"+ 
              " and a.order_id = b.order_id"+
  " )a"+
  " left join commodity b on a.commodity_id=b.commodity_id")
    List<Order> selectAllByUserId(String userId);
}
