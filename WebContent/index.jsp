<%--
  Created by IntelliJ IDEA.
  User: Hao
  Date: 2017/9/10
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>汕大商城</title>
    <style>

    </style>
</head>
<body>
<div class="container">
    <div style="height: 15px"></div>
    <div class="row clearfix">
        <div class="col-md-12 column col-md-offset-10">
            <div class="navbar navbar-fixed-bottom">
                <div class="navbar-inner">
                    <!--fluid 是偏移一部分-->
                    <div class="container-fluid">
                        <a class="brand" href="index.html">
                            <img src="images/car.png" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">我的商城</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="index.jsp">首页</a>
                        </li>
                        <!--<li>
                            <a href="#">Link</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Action</a>
                                </li>
                                <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">Separated link</a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">退出</a>
                                </li>
                            </ul>
                        </li>-->
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="car.jsp">购物车</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">用户名<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">个人中心</a>
                                </li>
                                <!-- <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li> -->
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="#">退出</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </nav>
        </div>
    </div>
    <div class="row clearfix" >
        <div class="col-md-12 column col-md-offset-3">
            <div class="form-group">
                <div class="col-md-6 ">
                    <input type="text" class="form-control" id="firstname" placeholder="请输入商品名字">
                </div>
                <button type="submit" class="btn btn-default btn-danger">搜索</button>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="carousel slide" id="carousel-822115">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-822115">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-822115">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-822115">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/1600/500/sports/1/default.jpg" />
                        <div class="carousel-caption">
                            <h4>
                                First Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/1600/500/sports/2/default.jpg" />
                        <div class="carousel-caption">
                            <h4>
                                Second Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img alt="" src="http://ibootstrap-file.b0.upaiyun.com/lorempixel.com/1600/500/sports/3/default.jpg" />
                        <div class="carousel-caption">
                            <h4>
                                Third Thumbnail label
                            </h4>
                            <p>
                                Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                            </p>
                        </div>
                    </div>
                </div> <a class="left carousel-control" href="#carousel-822115" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-822115" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
    </div>

    <div style="height: 30px"></div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="tabbable" id="tabs-15865">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-842531" data-toggle="tab">热门</a>
                    </li>
                    <li>
                        <a href="#panel-842531" data-toggle="tab">衣服</a>
                    </li>
                    <li>
                        <a href="#panel-635516" data-toggle="tab">书籍</a>
                    </li>
                    <li>
                        <a href="#panel-635516" data-toggle="tab">数码</a>
                    </li>
                    <li>
                        <a href="#panel-635516" data-toggle="tab">运动</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane  active" id="panel-842531">
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/TB11nuaPpXXXXcKXpXXXXXXXXXX_!!0-item_pic.jpg_230x230.jpg_.webp" />
                                            <div class="caption">
                                                <h3 style="color: red">
                                                    50RMB
                                                </h3>
                                                <p>
                                                    <a>衣品天成短袖T恤男士圆领纯棉半袖衣服2017夏季大码潮流青年体恤</a>
                                                </p>
                                                <p>
                                                    <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary" href="#">加入购物车</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp" />
                                            <div class="caption">
                                                <h3 style="color: red">
                                                    50RMB
                                                </h3>
                                                <p>
                                                    <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                </p>
                                                <p>
                                                    <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary" href="#">加入购物车</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp" />
                                            <div class="caption">
                                                <h3 style="color: red">
                                                    50RMB
                                                </h3>
                                                <p>
                                                    <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                </p>
                                                <p>
                                                    <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary" href="#">加入购物车</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/TB11nuaPpXXXXcKXpXXXXXXXXXX_!!0-item_pic.jpg_230x230.jpg_.webp" />
                                            <div class="caption">
                                                <h3 style="color: red">
                                                    50RMB
                                                </h3>
                                                <p>
                                                    <a>衣品天成短袖T恤男士圆领纯棉半袖衣服2017夏季大码潮流青年体恤</a>
                                                </p>
                                                <p>
                                                    <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary" href="#">加入购物车</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp" />
                                            <div class="caption">
                                                <h3 style="color: red">
                                                    50RMB
                                                </h3>
                                                <p>
                                                    <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                </p>
                                                <p>
                                                    <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary" href="#">加入购物车</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp" />
                                            <div class="caption">
                                                <h3 style="color: red">
                                                    50RMB
                                                </h3>
                                                <p>
                                                    <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                </p>
                                                <p>
                                                    <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary" href="#">加入购物车</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/TB11nuaPpXXXXcKXpXXXXXXXXXX_!!0-item_pic.jpg_230x230.jpg_.webp" />
                                            <div class="caption">
                                                <h3 style="color: red">
                                                    50RMB
                                                </h3>
                                                <p>
                                                    <a>衣品天成短袖T恤男士圆领纯棉半袖衣服2017夏季大码潮流青年体恤</a>
                                                </p>
                                                <p>
                                                    <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary" href="#">加入购物车</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp" />
                                            <div class="caption">
                                                <h3 style="color: red">
                                                    50RMB
                                                </h3>
                                                <p>
                                                    <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                </p>
                                                <p>
                                                    <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary" href="#">加入购物车</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="thumbnail">
                                            <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp" />
                                            <div class="caption">
                                                <h3 style="color: red">
                                                    50RMB
                                                </h3>
                                                <p>
                                                    <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                </p>
                                                <p>
                                                    <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary" href="#">加入购物车</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="panel-635516">
                        <p>
                            Howdy, I'm in Section 2.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-4 column">
        </div>
        <div class="col-md-4 column">
        </div>
        <div class="col-md-4 column">
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column col-md-offset-4">
            <ul class="pagination">
                <li>
                    <a href="#">上一页</a>
                </li>
                <li>
                    <a href="#">1</a>
                </li>
                <li>
                    <a href="#">2</a>
                </li>
                <li>
                    <a href="#">3</a>
                </li>
                <li>
                    <a href="#">4</a>
                </li>
                <li>
                    <a href="#">5</a>
                </li>
                <li>
                    <a href="#">下一页</a>
                </li>
            </ul>
        </div>
    </div>
    <hr/>
    <div class="row clearfix">
        <div class="col-md-12 column col-md-offset-4">
            <p>Powered by STU|© 2017 我的商城 All Rights Reserved.</p>
        </div>
    </div>
</div>
</body>
</html>
