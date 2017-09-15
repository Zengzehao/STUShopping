package cn.edu.stu.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.*;

import cn.edu.stu.user.domain.ShoppingCar;

public interface ShoppingCarDao {
    public static final String ShoppingCarTable="shopping_car";
    
    @Delete("delete from "+ShoppingCarTable+" where user_id = #{userId}")
    int deleteByUserId(String userId);
    
    @Delete("delete from "+ShoppingCarTable+" where user_id = #{userId} and commodity_id = #{commodityId}")
    int deleteSpecific(@Param("userId")String userId, @Param("commodityId")String commodityId);
    
    @Insert("insert into "+ShoppingCarTable+" (user_id, commodity_id) values (#{userId}, #{commodityId})")
    int add(@Param("userId")String userId, @Param("commodityId")String commodityId);
    
    @Select("select a.user_id as userId, a.commodity_id as commodityId,"+
    "b.commodity_name as commodityName,"+
    "b.commodity_picture as commodityPic,"+
    "b.commodity_price as commodityPrice,"+
    "b.commodity_introduce as commodityIntro"+
    " from ("+
        " select * from "+ShoppingCarTable+
        " where user_id=#{userId}"+
        " )a"+
        " left join commodity b on a.commodity_id=b.commodity_id"
    )
    List<ShoppingCar> selectByUserId(String userId);
}
