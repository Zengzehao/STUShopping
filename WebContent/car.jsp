<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>汕大商城</title>
</head>
<body>
<div class="container">

<div class="row clearfix">
                    <div class="col-md-12 column">
                        <nav class="navbar navbar-default" role="navigation">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>                                <a class="navbar-brand" href="#">我的商城</a>
                            </div>

                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li class="active">
                                        <a href="index.jsp">首页</a>
                                    </li>
                                    
                                </ul>

                                <ul class="nav navbar-nav navbar-right">
                                    <li>
                                        <a href="register.jsp">注册</a>
                                    </li>
                                    <li>
                                        <a href="login.jsp">登录</a>
                                    </li>
                                    <li>
                                        <a href="car.jsp">购物车</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="user_name"><strong class="caret"></strong></a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="#">个人中心</a>
                                            </li>
                                            <li class="divider">
                                            </li>
                                            <li>
                                                <a href="login.jsp">退出</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>

                        </nav>
                    </div>
                </div>
    <!-- <div class="row clearfix">
        <div class="col-md-2 column">
            <p>商品图片</p>
        </div>
        <div class="col-md-3 column">
            <p>商品信息</p>
        </div>
        <div class="col-md-1 column">
            <p>单价</p>
        </div>
        <div class="col-md-2 column">
            <p>数量</p>
        </div>
        <div class="col-md-2 column">
            <p>金额</p>
        </div>
        <div class="col-md-2 column">
            <p>操作</p>
        </div>
    </div> -->
    <div class="row clearfix">
    <h2 class="text-center">我的购物车</h2>
    <table class="table invoice-table">
    <thead id="tbHead">
        <tr>
          <th>商品图片</th>
          <th>商品信息</th>
          <th>单价</th>
          <!-- <th>数量</th> -->
          <th>操作</th>
        </tr>
    </thead>
    <tbody id="tbBody"></tbody>
    </table>
    
     <div class="text-right">
       <button class="btn btn-primary" onclick="deleteAllItem();"><i class="fa fa-dollar"></i>清空</button>
       <button class="btn btn-primary" id="buy"><i class="fa fa-dollar"></i>下单</button>
     </div>
    </div> 
</div>

<script type="text/javascript">
    $(document).ready(function(){
    	if(window.sessionStorage.getItem("user_name")!=null){
            $("#user_name").text(window.sessionStorage.getItem("user_name"));
            $("#user_name").css("color","blue");
        }else{
            $("#user_name").text("请登录");
            $("#user_name").css("color","red");
        }
    	$("#buy").click(function(){
    		var root = getRoot();
        	$.ajax({
    	        type: "POST",
    	        url: root + "/shoppingCar/deleteByUserId",
    	        //contentType: "application/json",
    	        data: { userId: userId},
    	        dataType: 'json',
    	        success: function (data) {
    	            //alert(data.code + data.mes);
    	            //alert(data.data.length);
    	            
    	        }
    	    });
    		alert("购买成功");
    	})
    	var userId = window.sessionStorage.getItem("user_id");
    	if(userId != null){
    		var root = getRoot();
    		$.ajax({
    	        type: "POST",
    	        url: root + "/ shoppingCar/find",
    	        data: { userId: userId },
    	        dataType: 'json',
    	        success: function (data) {
    	            //alert(data.code + data.mes);
    	            //alert(data.data.length);

    	            $.each(data.data, function(i, obj) {  
		    	        var tbBody = "<tr>" + 
					   					 '<td class="col-sm-3 col-md-1"> <a href="#" class="thumbnail"><img src="' + root +"/images/" +obj.commodityPic + '"/> </a></td>'+
										 "<td>" + obj.commodityName + "</td>"+
										 "<td>" + obj.commodityPrice + "</td>"+
										 "<td>" + '<button onclick="deleteItem(this,' + obj.userId + ','+ obj.commodityId + ');" class="btn btn-primary"><i class="fa fa-dollar"></i>删除</button>' + "</td>"+
			
									"</tr>";
		    	                
    	                $("#tbBody").append(tbBody);
    	            });  
    	            
    	        }
    	    });
    	}
    });
    
    function deleteItem(obj, userId, commodityId){
    	//alert(userId);
    	var tr = obj.parentNode.parentNode;
    	var tbody = tr.parentNode;
    	tbody.removeChild(tr);
    	
    	var root = getRoot();
    	console.log(root);
		$.ajax({
	        type: "POST",
	        url: root + "/shoppingCar/deleteSpecific",
	        contentType: "application/json",
	        data: JSON.stringify({ userId: userId, commodityId: commodityId}),
	        dataType: 'json',
	        success: function (data) {
	            alert(data.code + data.mes);
	           // alert(data.data.length);
	            
	        }
	    });
    }
    
    function deleteAllItem(){
    	var userId = window.sessionStorage.getItem("user_id");
    	
    	$("#tbBody").empty();
    	var root = getRoot();
    	$.ajax({
	        type: "POST",
	        url: root + "/shoppingCar/deleteByUserId",
	        //contentType: "application/json",
	        data: { userId: userId},
	        dataType: 'json',
	        success: function (data) {
	            alert(data.code + data.mes);
	            //alert(data.data.length);
	            
	        }
	    });
    }
    
    function getRoot(){
		var strFullPath=window.document.location.href;  
	    var strPath=window.document.location.pathname;  
	    var pos=strFullPath.indexOf(strPath);  
	    var prePath=strFullPath.substring(0,pos); 
	    var postPath=strPath.substring(0,strPath.substr(1).indexOf('/')+1);  
	    var basePath = prePath;  
	    basePath = prePath + postPath;   
	    
	    return basePath;
    }
</script>
</body>
</html>