package cn.edu.stu.user.dao;
import cn.edu.stu.user.domain.Commodity;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by sheng on 17-9-14.
 */
public interface CommodityMapper {

    @Select("SELECT a.commodity_id,a.commodity_name,a.commodity_picture,a.commodity_price,a.commodity_introduce,b.commodity_stock FROM commodity a,stock b WHERE a.commodity_id = b.commodity_id AND a.commodity_id IN (SELECT commodity_id FROM commodity_belong WHERE commodity_kind_id = (SELECT commodity_kind_id FROM commodity_kind WHERE commodity_kind_name = #{commodity_kind_name}))")

    List<Commodity> findWithCommodityKindName(@Param("commodity_kind_name") String commodity_kind_name);


}