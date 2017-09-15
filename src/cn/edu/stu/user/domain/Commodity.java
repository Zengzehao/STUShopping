package cn.edu.stu.user.domain;
import java.io.Serializable;

/**
 * Created by sheng on 17-9-14.
 */
public class Commodity implements Serializable {
    private Integer commodity_id;     //商品的ID
    private String commodity_name;     //商品的名称
    private String commodity_picture;  //商品的图片路径
    private String commodity_price;     //商品的价钱
    private String commodity_introduce;  //商品的介绍
    private String commodity_stock;      //商品的库存

    public Commodity() {
        super();
    }

    public Integer getCommodity_id() {
        return commodity_id;
    }

    public void setCommodity_id(Integer commodity_id) {
        this.commodity_id = commodity_id;
    }

    public String getCommodity_name() {
        return commodity_name;
    }

    public void setCommodity_name(String commodity_name) {
        this.commodity_name = commodity_name;
    }

    public String getCommodity_picture() {
        return commodity_picture;
    }

    public void setCommodity_picture(String commodity_picture) {
        this.commodity_picture = commodity_picture;
    }

    public String getCommodity_price() {
        return commodity_price;
    }

    public void setCommodity_price(String commodity_price) {
        this.commodity_price = commodity_price;
    }

    public String getCommodity_introduce() {
        return commodity_introduce;
    }

    public void setCommodity_introduce(String commodity_introduce) {
        this.commodity_introduce = commodity_introduce;
    }

    public String getCommodity_stock() {
        return commodity_stock;
    }

    public void setCommodity_stock(String commodity_stock) {
        this.commodity_stock = commodity_stock;
    }

    public Commodity(Integer commodity_id, String commodity_name, String commodity_picture, String commodity_price, String commodity_introduce, String commodity_stock) {
        this.commodity_id = commodity_id;
        this.commodity_name = commodity_name;
        this.commodity_picture = commodity_picture;
        this.commodity_price = commodity_price;
        this.commodity_introduce = commodity_introduce;
        this.commodity_stock = commodity_stock;
    }
    

    @Override
    public String toString() {
        return "Commodity{" +
                "commodity_id=" + commodity_id +
                ", commodity_name='" + commodity_name + '\'' +
                ", commodity_picture='" + commodity_picture + '\'' +
                ", commodity_price='" + commodity_price + '\'' +
                ", commodity_introduce='" + commodity_introduce + '\'' +
                ", commodity_stock='" + commodity_stock + '\'' +
                '}';
    }
    
}
