package cn.edu.stu.user.dao.provider;

import org.apache.ibatis.jdbc.SQL;

import cn.edu.stu.user.domain.OrderAddRequest;

public class OrderProvider {
    public String insertOrder(OrderAddRequest order){
        return new SQL(){
            {
                INSERT_INTO("p_order");
                if(order.getOrderId() != null 
                        && !order.getOrderId().equals("")){
                    VALUES("order_id", "#{orderId}");
                }
                if(order.getSetTime() != null 
                        && !order.getSetTime().equals("")){
                    VALUES("set_time", "#{setTime}");
                }
                if(order.getSendTime() != null
                        && !order.getSendTime().equals("")){
                    VALUES("send_time", "#{sendTime}");
                }
                if(order.getPrice() != null
                        && !order.getPrice().equals("")){
                    VALUES("price", "#{price}");
                }
                if(order.getIsPay() != null
                        && !order.getIsPay().equals("")){
                    VALUES("is_pay","#{isPay}");
                }
            }
        }.toString();
    }
}
