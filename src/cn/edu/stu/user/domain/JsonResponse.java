package cn.edu.stu.user.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class JsonResponse<T> implements Serializable{
    private String code;
    private String mes;
    private T data;
    
    public JsonResponse(String code, String mes, T data){
        this.code=code;
        this.mes=mes;
        this.data=data;
    }
    
    public void setCode(String code){
        this.code=code;
    }
    public void setMes(String mes){
        this.mes=mes;
    }
    public void setData(T data){
        this.data=data;
    }
    public String getCode(){
        return code;
    }
    public String getMes(){
        return mes;
    }
    public T getData(){
        return data;
    }
}
