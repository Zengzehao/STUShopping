package cn.edu.stu.user.service;
import cn.edu.stu.user.domain.Commodity;
import java.util.List;

/**
 * Created by sheng on 17-9-15.
 */
public interface CommodityService {

    List<Commodity> findWithCommodityKindName(String commodity_kind_name);
}
