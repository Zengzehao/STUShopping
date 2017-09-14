package cn.edu.stu.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.stu.user.dao.ShoppingCarDao;
import cn.edu.stu.user.domain.ShoppingCar;

@Service
public class ShoppingCarServiceImpl implements ShoppingCarService{

    @Autowired
    ShoppingCarDao shoppingCarDao;
    @Override
    public int deleteByUserId(String userId) {
        return shoppingCarDao.deleteByUserId(userId);
    }

    @Override
    public int add(String userId, String commodityId) {
        return shoppingCarDao.add(userId, commodityId);
    }

    @Override
    public List<ShoppingCar> selectByuserId(String userId) {
        return shoppingCarDao.selectByUserId(userId);
    }

    @Override
    public int deleteSpecific(String userId, String commodityId) {
        return shoppingCarDao.deleteSpecific(userId, commodityId);
    }
    
    
}
