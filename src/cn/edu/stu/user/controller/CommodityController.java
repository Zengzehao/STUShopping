package cn.edu.stu.user.controller;
import cn.edu.stu.user.domain.Commodity;
import cn.edu.stu.user.domain.CommodityKindName;
import cn.edu.stu.user.domain.JsonResponse;
import cn.edu.stu.user.service.CommodityService;
import cn.edu.stu.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by sheng on 17-9-15.
 */
@Controller
public class CommodityController {
    /**
     * 自动注入UserService
     * */
    @Autowired
    @Qualifier("commodityService")
    private CommodityService commodityService;

    @RequestMapping(value="/findWithCommodityKindName",produces = "application/json;charset=UTF-8",method = RequestMethod.POST)
    @ResponseBody
    public Object findWithCommodityKindName(
    		@RequestParam("commodity_kind_name")String commodity_kind_name){
        System.out.println("commodity_kind_name:"+commodity_kind_name);
        List<Commodity> list = new ArrayList<>();
        list = commodityService.findWithCommodityKindName(commodity_kind_name);
        int listSize = list.size();
        System.out.println("listSzie:"+listSize);
        if(listSize!=0){
            return new JsonResponse<List<Commodity>>("1","返回"+listSize+"条数据",list);
        }else {
            return new JsonResponse<List<Commodity>>("0","数据库找不到该类型的商品",list);
        }
    }
}