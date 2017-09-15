package cn.edu.stu.user.domain;

public class Order {
    private String orderId;
    private String setTime;
    private String sendTime;
    private String isPay;
    private String price;
    
    private String commodityId;
    private String commodityName;
    private String commodityPic;
    private String commodityPrice;
    private String commodityIntro;
    
    private String commodityNum;
    private String userId;
    public void setCommodityNum(String commodityNum){
        this.commodityNum=commodityNum;
    }
    public String getCommodityNum(){
        return this.commodityNum;
    }
    public void setUserId(String userId){
        this.userId=userId;
    }
    public String getUserId(){
        return this.userId;
    }
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
    
    public void setCommodityId(String commodityId){
        this.commodityId=commodityId;
    }
    public String getCommodityId(){
        return this.commodityId;
    }
    
    public void setCommodityName(String commodityName){
        this.commodityName=commodityName;
    }
    public String getCommodityName(String commodityName){
        return this.commodityName;
    }
    
    public void setCommodityPic(String commodityPic){
        this.commodityPic=commodityPic;
    }
    public String getCommodityPic(String commodityPic){
        return this.commodityPic;
    }
    
    public void setCommodityPrice(String commodityPrice){
        this.commodityPrice=commodityPrice;
    }
    public String getCommodityPrice(String commodityPrice){
        return this.commodityPrice;
    }
    
    public void setCommodityIntro(String commodityIntro){
        this.commodityIntro=commodityIntro;
    }
    public String getCommodityIntro(String commodityIntro){
        return this.commodityIntro;
    }
}
