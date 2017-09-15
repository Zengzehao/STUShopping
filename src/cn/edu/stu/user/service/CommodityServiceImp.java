package cn.edu.stu.user.service;
/**
 * Created by sheng on 17-9-15.
 */

import cn.edu.stu.user.dao.CommodityMapper;
import cn.edu.stu.user.dao.UserMapper;
import cn.edu.stu.user.domain.Commodity;
import cn.edu.stu.user.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * User服务层接口实现类
 * @Service("commodityService")用于将当前类注释为一个Spring的bean，名为commodityService
 * */
@Transactional(propagation= Propagation.REQUIRED,isolation= Isolation.DEFAULT)
@Service("commodityService")
public class CommodityServiceImp implements CommodityService{

    /**
     * 自动注入CommodityMapper
     * */
    @Autowired
    private CommodityMapper commodityMapper;

    @Transactional(readOnly=true)
    @Override
    public List<Commodity>findWithCommodityKindName(String commodity_kind_name) {
        return commodityMapper.findWithCommodityKindName(commodity_kind_name);
    }
}
