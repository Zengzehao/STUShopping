package cn.edu.stu.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.stu.user.dao.OrderCommodityDao;
import cn.edu.stu.user.dao.OrderDao;
import cn.edu.stu.user.dao.OrderUserDao;
import cn.edu.stu.user.domain.Order;
import cn.edu.stu.user.domain.OrderAddRequest;


@Service
public class OrderServiceImpl implements OrderService{
    @Autowired
    OrderDao orderDao;
    @Autowired
    OrderUserDao orderUserDao;
    @Autowired
    OrderCommodityDao orderCommodityDao;
    @Override
    public int delete(String orderId) {
        // TODO Auto-generated method stub
        int total=0;
        total+=orderDao.deleteByOrderd(orderId);
        total+=orderUserDao.deleteByOrderd(orderId);
        total+=orderCommodityDao.deleteByOrderd(orderId);
        return total;
    }

    @Override
    public int add(OrderAddRequest order) {
        // TODO Auto-generated method stub
        int total=0;
        total+=orderDao.add(order);
        total+=orderUserDao.add(order.getOrderId(), order.getUserId());
        for(int i=0;i<order.getCommodityIdAndNum().size();i++)
            total+=orderCommodityDao.add(order.getOrderId(), order.getCommodityIdAndNum().get(i).getCommodityId(), order.getCommodityIdAndNum().get(i).getCommodityNum());
        return total;
    }

    @Override
    public List<Order> selectUnPayOrder(String userId) {
        // TODO Auto-generated method stub
        return orderDao.selectUnPayByUserId(userId);
    }

    @Override
    public List<Order> selectPayedOrder(String userId) {
        // TODO Auto-generated method stub
        return orderDao.selectPayedByUserId(userId);
    }

    @Override
    public List<Order> selectAllOrder(String userId) {
        // TODO Auto-generated method stub
        return orderDao.selectAllByUserId(userId);
    }

    @Override
    public int updateIsPay(String orderId, String isPay) {
        return orderDao.updateIsPay(orderId, isPay);
    }
    
}
