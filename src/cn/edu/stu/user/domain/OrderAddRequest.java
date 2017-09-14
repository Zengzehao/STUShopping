package cn.edu.stu.user.domain;

import java.util.List;

public class OrderAddRequest {
    private String orderId;
    private String setTime;
    private String sendTime;
    private String isPay;
    private String price;
    
    private List<CommodityIdAndNum> commodityIdAndNum;
    private String userId;
    
    public void setOrderId(String orderId){
        this.orderId=orderId;
    }
    public String getOrderId(){
        return this.orderId;
    }
    public void setSetTime(String setTime){
        this.setTime=setTime;
    }
    public String getSetTime(){
        return this.setTime;
    }
    public void setSendTime(String sendTime){
        this.sendTime=sendTime;
    }
    public String getSendTime(){
        return this.sendTime;
    }
    public void setIsPay(String isPay){
        this.isPay=isPay;
    }
    public String getIsPay(){
        return this.isPay;
    }
    public void setPrice(String price){
        this.price=price;
    }
    public String getPrice(){
        return this.price;
    }
    public void setCommodityIdAndNum(List<CommodityIdAndNum> commodityIdAndNum){
        this.commodityIdAndNum=commodityIdAndNum;
    }
    public List<CommodityIdAndNum> getCommodityIdAndNum(){
        return this.commodityIdAndNum;
    }
    public void setUserId(String userId){
        this.userId=userId;
    }
    public String getUserId(){
        return this.userId;
    }
}
