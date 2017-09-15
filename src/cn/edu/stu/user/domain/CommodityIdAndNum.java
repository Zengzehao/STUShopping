package cn.edu.stu.user.domain;

public class CommodityIdAndNum{
    private String commodityId;
    private String commodityNum;
    
    public void setCommodityNum(String commodityNum){
        this.commodityNum=commodityNum;
    }
    public String getCommodityNum(){
        return this.commodityNum;
    }
    public void setCommodityId(String commodityId){
        this.commodityId=commodityId;
    }
    public String getCommodityId(){
        return this.commodityId;
    }
}