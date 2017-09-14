package cn.edu.stu.user.service;

import java.util.List;

import cn.edu.stu.user.domain.ShoppingCar;

public interface ShoppingCarService {
    public int deleteByUserId(String userId);
    public int add(String userId, String commodityId);
    public List<ShoppingCar> selectByuserId(String userId);
    public int deleteSpecific(String userId, String commodityId);
}
