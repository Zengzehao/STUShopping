package cn.edu.stu.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.stu.user.domain.JsonResponse;
import cn.edu.stu.user.domain.ShoppingCar;
import cn.edu.stu.user.domain.ShoppingCarRequest;
import cn.edu.stu.user.service.ShoppingCarService;

@Controller
@RequestMapping("shoppingCar")
public class ShoppingCarController {
    @Autowired
    ShoppingCarService shoppingCarService;
    
    @RequestMapping(value="shoppingCar", produces="text/html;charset=UTF-8")
    public String parkRentCarPrice(){
        return "shoppingCar";
    }
    
    @RequestMapping(value="deleteByUserId", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object deleteByUserId(@RequestParam("userId") String userId){
        return new JsonResponse<Integer>("1", "delete success", shoppingCarService.deleteByUserId(userId));
    }
    
    @RequestMapping(value="deleteSpecific", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object deleteSpecific(@RequestBody ShoppingCarRequest req){
        return new JsonResponse<Integer>("1", "delete success", shoppingCarService.deleteSpecific(req.getUserId(),req.getCommodityId()));
    }
    
    @RequestMapping(value="add", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object add(@RequestParam("userId") String userId,
                            @RequestParam("commodityId") String commodityId){
        return new JsonResponse<Integer>("1", "add success", shoppingCarService.add(userId, commodityId));
    }
    
    @RequestMapping(value="find", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object find(@RequestParam("userId") String userId){
        return new JsonResponse<List<ShoppingCar>>("1", "find success", shoppingCarService.selectByuserId(userId));
    }
}