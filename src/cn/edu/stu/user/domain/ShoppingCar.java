package cn.edu.stu.user.domain;

public class ShoppingCar {
    private String userId;
    private String commodityId;
    
    private String commodityName;
    private String commodityPic;
    private String commodityPrice;
    private String commodityIntro;
    
    public String getUserId(){
        return this.userId;
    }
    public void setUserId(String userId){
        this.userId=userId;
    }
    public String getCommodityId(){
        return this.commodityId;
    }
    
    public void setCommodityId(String commodityId){
        this.commodityId=commodityId;
    }
    
    public String getCommodityName(){
        return this.commodityName;
    }
    
    public void setCommodityName(String commodityName){
        this.commodityName=commodityName;
    }
    
    public String getCommodityPic(){
        return this.commodityPic;
    }
    
    public void setCommodityPic(String commodityPic){
        this.commodityPic=commodityPic;
    }
    
    public String getCommodityPrice(){
        return this.commodityPrice;
    }
    
    public void setCommodityPrice(String commodityPrice){
        this.commodityPrice=commodityPrice;
    }
    
    public String getCommodityIntro(){
        return this.commodityIntro;
    }
    
    public void setCommodityIntro(String commodityIntro){
        this.commodityIntro=commodityIntro;
    }
}
