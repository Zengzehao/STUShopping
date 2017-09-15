package cn.edu.stu.user.service;

import java.util.List;

import cn.edu.stu.user.domain.Order;
import cn.edu.stu.user.domain.OrderAddRequest;

public interface OrderService {
    public int delete(String orderId);
    
    public int add(OrderAddRequest order);
    
    public List<Order> selectUnPayOrder(String userId);
    
    public List<Order> selectPayedOrder(String userId);
    
    public List<Order> selectAllOrder(String userId);
    
    public int updateIsPay(String orderId, String isPay);
}
