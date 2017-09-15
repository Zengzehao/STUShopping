package cn.edu.stu.user.domain;

public class ShoppingCarRequest {
    private String userId;
    private String commodityId;
    
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
}
