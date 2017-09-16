package cn.edu.stu.user.controller;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.stu.user.domain.JsonResponse;
import cn.edu.stu.user.domain.Order;
import cn.edu.stu.user.domain.OrderAddRequest;
import cn.edu.stu.user.service.OrderService;

@Controller
@RequestMapping("order")
public class OrderController {
    @Autowired
    OrderService orderService;
    
    @RequestMapping(value="order", produces="text/html;charset=UTF-8")
    public String carModel(){
        return "order";
    }
    
    @RequestMapping(value="delete", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object delete(@RequestParam("orderId") String orderId){
        return new JsonResponse<Integer>("1", "delete success", orderService.delete(orderId));
    }
    
    @RequestMapping(value="add", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object add(@RequestBody OrderAddRequest order){
        if(order.getOrderId()==null){
            long date=new Date().getTime();
            String orderId=""+date+order.getUserId();
            order.setOrderId(orderId);
        }
        return new JsonResponse<Integer>("1", "add success", orderService.add(order));
    }

    @RequestMapping(value="findUnpay", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object findUnpay(@RequestParam("userId") String userId){
        return new JsonResponse<List<Order>>("1", "find success", orderService.selectUnPayOrder(userId));
    }
    
    @RequestMapping(value="findPayed", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object findPayed(@RequestParam("userId") String userId){
        return new JsonResponse<List<Order>>("1", "find success", orderService.selectPayedOrder(userId));
    }
    
    @RequestMapping(value="findAll", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object findAll(@RequestParam("userId") String userId){
        List<Order> orders=orderService.selectAllOrder(userId);
        return new JsonResponse<List<Order>>("1", "find success", orders);
    }
    
    @RequestMapping(value="isPay", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
    @ResponseBody
    public Object isPay(@RequestParam("orderId") String orderId, @RequestParam("isPay") String isPay){
        return new JsonResponse<Integer>("1", "update success", orderService.updateIsPay(orderId, isPay));
    }
}