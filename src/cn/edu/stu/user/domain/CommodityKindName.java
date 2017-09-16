package cn.edu.stu.user.domain;
import java.io.Serializable;

/**
 * Created by sheng on 17-9-15.
 */
public class CommodityKindName implements Serializable {

    private String commodity_kind_name;

    public CommodityKindName() {
        super();
    }

    public String getCommodity_kind_name() {
        return commodity_kind_name;
    }

    public void setCommodity_kind_name(String commodity_kind_name) {
        this.commodity_kind_name = commodity_kind_name;
    }

    @Override
    public String toString() {
        return "CommodityKindName{" +
                "commodity_kind_name='" + commodity_kind_name + '\'' +
                '}';
    }

}
