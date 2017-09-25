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
                                    <a class="brand" href="car.jsp">
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
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>                                <a class="navbar-brand" href="#">我的商城</a>
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
                                            <!-- <li>
                                    <a href="#">Another action</a>
                                </li>
                                <li>
                                    <a href="#">Something else here</a>
                                </li> -->
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
                    <div class="col-md-12 column col-md-offset-3">
                        <div class="form-group">
                            <div class="col-md-6 ">
                                <input type="text" class="form-control" id="firstname" placeholder="请输入商品名字">
                            </div>
                            <button type="submit" class="btn btn-default btn-danger">搜索</button>
                        </div>
                    </div>
                </div> -->
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
                                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id
                                            dolor id nibh ultricies vehicula ut id elit.
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
                                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id
                                            dolor id nibh ultricies vehicula ut id elit.
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
                                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id
                                            dolor id nibh ultricies vehicula ut id elit.
                                        </p>
                                    </div>
                                </div>
                            </div> <a class="left carousel-control" href="#carousel-822115" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>                            <a class="right carousel-control" href="#carousel-822115" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                        </div>
                    </div>
                </div>

                <div style="height: 30px"></div>
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="tabbable" id="tabs-15865">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#panel-hot" data-toggle="tab" value="hot" id="hot">热门</a>
                                </li>
                                <li>
                                    <a href="#panel-clothes" data-toggle="tab" value="clothes" id="clothes">衣服</a>
                                </li>
                                <li>
                                    <a href="#panel-book" data-toggle="tab" value="book" id="book">书籍</a>
                                </li>
                                <li>
                                    <a href="#panel-digital" data-toggle="tab" value="digital" id="digital">数码</a>
                                </li>
                                <li>
                                    <a href="#panel-sport" data-toggle="tab" value="sport" id="sport">运动</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane  active" id="panel-hot">
                                    <div class="row clearfix">
                                        <div class="col-md-12 column">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/TB11nuaPpXXXXcKXpXXXXXXXXXX_!!0-item_pic.jpg_230x230.jpg_.webp"
                                                        />
                                                        <div class="caption">
                                                            <h3 style="color: red">
                                                                50RMB
                                                            </h3>
                                                            <p>
                                                                <a>衣品天成短袖T恤男士圆领纯棉半袖衣服2017夏季大码潮流青年体恤</a>
                                                            </p>
                                                            <p>
                                                                <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary"
                                                                    href="#">加入购物车</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp"
                                                        />
                                                        <div class="caption">
                                                            <h3 style="color: red">
                                                                50RMB
                                                            </h3>
                                                            <p>
                                                                <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                            </p>
                                                            <p>
                                                                <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary"
                                                                    href="#">加入购物车</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp"
                                                        />
                                                        <div class="caption">
                                                            <h3 style="color: red">
                                                                50RMB
                                                            </h3>
                                                            <p>
                                                                <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                            </p>
                                                            <p>
                                                                <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary"
                                                                    href="#">加入购物车</a>
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
                                                        <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/TB11nuaPpXXXXcKXpXXXXXXXXXX_!!0-item_pic.jpg_230x230.jpg_.webp"
                                                        />
                                                        <div class="caption">
                                                            <h3 style="color: red">
                                                                50RMB
                                                            </h3>
                                                            <p>
                                                                <a>衣品天成短袖T恤男士圆领纯棉半袖衣服2017夏季大码潮流青年体恤</a>
                                                            </p>
                                                            <p>
                                                                <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary"
                                                                    href="#">加入购物车</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp"
                                                        />
                                                        <div class="caption">
                                                            <h3 style="color: red">
                                                                50RMB
                                                            </h3>
                                                            <p>
                                                                <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                            </p>
                                                            <p>
                                                                <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary"
                                                                    href="#">加入购物车</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp"
                                                        />
                                                        <div class="caption">
                                                            <h3 style="color: red">
                                                                50RMB
                                                            </h3>
                                                            <p>
                                                                <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                            </p>
                                                            <p>
                                                                <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary"
                                                                    href="#">加入购物车</a>
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
                                                        <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i3/TB11nuaPpXXXXcKXpXXXXXXXXXX_!!0-item_pic.jpg_230x230.jpg_.webp"
                                                        />
                                                        <div class="caption">
                                                            <h3 style="color: red">
                                                                50RMB
                                                            </h3>
                                                            <p>
                                                                <a>衣品天成短袖T恤男士圆领纯棉半袖衣服2017夏季大码潮流青年体恤</a>
                                                            </p>
                                                            <p>
                                                                <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary"
                                                                    href="#">加入购物车</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp"
                                                        />
                                                        <div class="caption">
                                                            <h3 style="color: red">
                                                                50RMB
                                                            </h3>
                                                            <p>
                                                                <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                            </p>
                                                            <p>
                                                                <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary"
                                                                    href="#">加入购物车</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img alt="300x200" src="https://g-search3.alicdn.com/img/bao/uploaded/i4/i2/1130055117/TB1hqiWflcHL1JjSZJiXXcKcpXa_!!0-item_pic.jpg_230x230.jpg_.webp"
                                                        />
                                                        <div class="caption">
                                                            <h3 style="color: red">
                                                                50RMB
                                                            </h3>
                                                            <p>
                                                                <a>布先生 2017秋季新款男士长袖t恤翻领薄款青中年商务衬衫领上衣服</a>
                                                            </p>
                                                            <p>
                                                                <a class="btn btn-danger" href="#">立即购买</a> <a class="btn btn-primary"
                                                                    href="#">加入购物车</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="panel-clothes">
                                    <div class="row clearfix">
                                        <div class="col-md-12 column">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="clothes-img1" alt="clothes-img1">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="clothes-price1">

                                                            </h3>
                                                            <p id="clothes-dis1">

                                                            </p>
                                                            <p id="clothes-btn1">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="clothes-img2" alt="clothes-img2">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="clothes-price2">

                                                            </h3>
                                                            <p id="clothes-dis2">

                                                            </p>
                                                            <p id="clothes-btn2">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="clothes-img3" alt="clothes-img3">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="clothes-price3">

                                                            </h3>
                                                            <p id="clothes-dis3">

                                                            </p>
                                                            <p id="clothes-btn3">

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
                                                        <img id="clothes-img4" alt="clothes-img4">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="clothes-price4">

                                                            </h3>
                                                            <p id="clothes-dis4">

                                                            </p>
                                                            <p id="clothes-btn4">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="clothes-img5" alt="clothes-img5">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="clothes-price5">

                                                            </h3>
                                                            <p id="clothes-dis5">

                                                            </p>
                                                            <p id="clothes-btn5">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="clothes-img6" alt="clothes-img6">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="clothes-price6">

                                                            </h3>
                                                            <p id="clothes-dis6">

                                                            </p>
                                                            <p id="clothes-btn6">

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
                                                        <img id="clothes-img7" alt="clothes-img7">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="clothes-price7">

                                                            </h3>
                                                            <p id="clothes-dis7">

                                                            </p>
                                                            <p id="clothes-btn7">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="clothes-img8" alt="clothes-img8">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="clothes-price8">

                                                            </h3>
                                                            <p id="clothes-dis8">

                                                            </p>
                                                            <p id="clothes-btn8">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="clothes-img9" alt="clothes-img9">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="clothes-price9">

                                                            </h3>
                                                            <p id="clothes-dis9">

                                                            </p>
                                                            <p id="clothes-btn9">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="panel-book">
                                    <div class="row clearfix">
                                        <div class="col-md-12 column">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="book-img1" alt="book-img1">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="book-price1">

                                                            </h3>
                                                            <p id="book-dis1">

                                                            </p>
                                                            <p id="book-btn1">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="book-img2" alt="book-img2">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="book-price2">

                                                            </h3>
                                                            <p id="book-dis2">

                                                            </p>
                                                            <p id="book-btn2">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="book-img3" alt="book-img3">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="book-price3">

                                                            </h3>
                                                            <p id="book-dis3">

                                                            </p>
                                                            <p id="book-btn3">

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
                                                        <img id="book-img4" alt="book-img4">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="book-price4">

                                                            </h3>
                                                            <p id="book-dis4">

                                                            </p>
                                                            <p id="book-btn4">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="book-img5" alt="book-img5">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="book-price5">

                                                            </h3>
                                                            <p id="book-dis5">

                                                            </p>
                                                            <p id="book-btn5">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="book-img6" alt="book-img6">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="book-price6">

                                                            </h3>
                                                            <p id="book-dis6">

                                                            </p>
                                                            <p id="book-btn6">

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
                                                        <img id="book-img7" alt="book-img7">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="book-price7">

                                                            </h3>
                                                            <p id="book-dis7">

                                                            </p>
                                                            <p id="book-btn7">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="book-img8" alt="book-img8">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="book-price8">

                                                            </h3>
                                                            <p id="book-dis8">

                                                            </p>
                                                            <p id="book-btn8">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="book-img9" alt="book-img9">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="book-price9">

                                                            </h3>
                                                            <p id="book-dis9">

                                                            </p>
                                                            <p id="book-btn9">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="panel-digital">
                                    <div class="row clearfix">
                                        <div class="col-md-12 column">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="digital-img1" alt="digital-img1">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="digital-price1">

                                                            </h3>
                                                            <p id="digital-dis1">

                                                            </p>
                                                            <p id="digital-btn1">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="digital-img2" alt="digital-img2">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="digital-price2">

                                                            </h3>
                                                            <p id="digital-dis2">

                                                            </p>
                                                            <p id="digital-btn2">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="digital-img3" alt="digital-img3">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="digital-price3">

                                                            </h3>
                                                            <p id="digital-dis3">

                                                            </p>
                                                            <p id="digital-btn3">

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
                                                        <img id="digital-img4" alt="digital-img4">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="digital-price4">

                                                            </h3>
                                                            <p id="digital-dis4">

                                                            </p>
                                                            <p id="digital-btn4">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="digital-img5" alt="digital-img5">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="digital-price5">

                                                            </h3>
                                                            <p id="digital-dis5">

                                                            </p>
                                                            <p id="digital-btn5">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="digital-img6" alt="digital-img6">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="digital-price6">

                                                            </h3>
                                                            <p id="digital-dis6">

                                                            </p>
                                                            <p id="digital-btn6">

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
                                                        <img id="digital-img7" alt="digital-img7">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="digital-price7">

                                                            </h3>
                                                            <p id="digital-dis7">

                                                            </p>
                                                            <p id="digital-btn7">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="digital-img8" alt="digital-img8">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="digital-price8">

                                                            </h3>
                                                            <p id="digital-dis8">

                                                            </p>
                                                            <p id="digital-btn8">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="digital-img9" alt="digital-img9">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="digital-price9">

                                                            </h3>
                                                            <p id="digital-dis9">

                                                            </p>
                                                            <p id="digital-btn9">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="panel-sport">
                                    <div class="row clearfix">
                                        <div class="col-md-12 column">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="sport-img1" alt="sport-img1">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="sport-price1">

                                                            </h3>
                                                            <p id="sport-dis1">

                                                            </p>
                                                            <p id="sport-btn1">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="sport-img2" alt="sport-img2">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="sport-price2">

                                                            </h3>
                                                            <p id="sport-dis2">

                                                            </p>
                                                            <p id="sport-btn2">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="sport-img3" alt="sport-img3">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="sport-price3">

                                                            </h3>
                                                            <p id="sport-dis3">

                                                            </p>
                                                            <p id="sport-btn3">

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
                                                        <img id="sport-img4" alt="sport-img4">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="sport-price4">

                                                            </h3>
                                                            <p id="sport-dis4">

                                                            </p>
                                                            <p id="sport-btn4">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="sport-img5" alt="sport-img5">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="sport-price5">

                                                            </h3>
                                                            <p id="sport-dis5">

                                                            </p>
                                                            <p id="sport-btn5">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="sport-img6" alt="sport-img6">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="sport-price6">

                                                            </h3>
                                                            <p id="sport-dis6">

                                                            </p>
                                                            <p id="sport-btn6">

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
                                                        <img id="sport-img7" alt="sport-img7">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="sport-price7">

                                                            </h3>
                                                            <p id="sport-dis7">

                                                            </p>
                                                            <p id="sport-btn7">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="sport-img8" alt="sport-img8">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="sport-price8">

                                                            </h3>
                                                            <p id="sport-dis8">

                                                            </p>
                                                            <p id="sport-btn8">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="thumbnail">
                                                        <img id="sport-img9" alt="sport-img9">
                                                        <div class="caption">
                                                            <h3 style="color: red" id="sport-price9">

                                                            </h3>
                                                            <p id="sport-dis9">

                                                            </p>
                                                            <p id="sport-btn9">

                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                
                <!-- <div class="row clearfix">
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
                </div> -->
                <hr/>
                <div class="row clearfix">
                    <div class="col-md-12 column col-md-offset-4">
                        <p>Powered by STU|© 2017 我的商城 All Rights Reserved.</p>
                    </div>
                </div>

                <script>
                    $(function () {
                        console.log("aaa");
                        if(window.sessionStorage.getItem("user_name")!=null){
                            $("#user_name").text(window.sessionStorage.getItem("user_name"));
                            $("#user_name").css("color","blue");
                        }else{
                            $("#user_name").text("请登录");
                            $("#user_name").css("color","red");
                        }

                        $("#clothes").click(function () {
                            $.ajax({
                                type: "POST",
                                url: "/STUShopping/findWithCommodityKindName",
                                data: { commodity_kind_name: "clothes" },
                                dataType: 'json',
                                success: function (data) {
                                    console.log(data);
                                    $.each(data.data, function (index, item) {
                                        $("#clothes-img" + index).attr("src", "/STUShopping/images/" + item.commodity_picture);
                                        $("#clothes-price" + index).text(item.commodity_price + "RMB");
                                        $("#clothes-dis" + index).empty();
                                        $("#clothes-dis" + index).append("<a>" + item.commodity_introduce + "</a>");
                                        $("#clothes-btn" + index).empty();
                                        $("#clothes-btn" + index).append("<a class='btn btn-danger'>立即购买</a> <a class='btn btn-primary'>加入购物车</a>");
                                        $("#clothes-btn"+index+" a:eq(0)").click(function(){
                                            console.log("我要购买咯");
                                        });
                                        $("#clothes-btn"+index+" a:eq(1)").click(function(){
                                            var userId = window.sessionStorage.getItem("user_id");
                                            if(userId==null){
                                                alert("请先登录");
                                            }
                                            console.log(window.sessionStorage.getItem("user_id"));
                                            console.log("添加购物车");
                                            $.ajax({
                                                type:"POST",
                                                url:"/STUShopping/shoppingCar/add",
                                                data:{userId:userId,commodityId:item.commodity_id},
                                                dataType:"json",
                                                success:function(data){
                                                    if(data.code==1){
                                                        alert("添加购车车成功");
                                                    }
                                                }
                                            })
                                        })
                                    })
                                }
                            });
                        });

                        $("#book").click(function () {
                            $.ajax({
                                type: "POST",
                                url: "/STUShopping/findWithCommodityKindName",
                                data: { commodity_kind_name: "book" },
                                dataType: 'json',
                                success: function (data) {
                                    console.log(data);
                                    $.each(data.data, function (index, item) {
                                        $("#book-img" + index).attr("src", "/STUShopping/images/" + item.commodity_picture);
                                        $("#book-price" + index).text(item.commodity_price + "RMB");
                                        $("#book-dis" + index).empty();
                                        $("#book-dis" + index).append("<a>" + item.commodity_introduce + "</a>");
                                        $("#book-btn" + index).empty();
                                        $("#book-btn" + index).append("<a class='btn btn-danger' >立即购买</a> <a class='btn btn-primary' >加入购物车</a>");
                                        $("#book-btn"+index+" a:eq(0)").click(function(){
                                            console.log("我要购买咯");
                                        });
                                        $("#book-btn"+index+" a:eq(1)").click(function(){
                                            var userId = window.sessionStorage.getItem("user_id");
                                            if(userId==null){
                                                alert("请先登录");
                                            }
                                            console.log(window.sessionStorage.getItem("user_id"));
                                            console.log("添加购物车");
                                            $.ajax({
                                                type:"POST",
                                                url:"/STUShopping/shoppingCar/add",
                                                data:{userId:userId,commodityId:item.commodity_id},
                                                dataType:"json",
                                                success:function(data){
                                                    if(data.code==1){
                                                        alert("添加购车车成功");
                                                    }
                                                }
                                            })
                                        })
                                    })
                                }
                            });
                        });
                        $("#digital").click(function () {
                            $.ajax({
                                type: "POST",
                                url: "/STUShopping/findWithCommodityKindName",
                                data: { commodity_kind_name: "digital" },
                                dataType: 'json',
                                success: function (data) {
                                    console.log(data);
                                    $.each(data.data, function (index, item) {
                                        $("#digital-img" + index).attr("src", "/STUShopping/images/" + item.commodity_picture);
                                        $("#digital-price" + index).text(item.commodity_price + "RMB");
                                        $("#digital-dis" + index).empty();
                                        $("#digital-dis" + index).append("<a>" + item.commodity_introduce + "</a>");
                                        $("#digital-btn" + index).empty();
                                        $("#digital-btn" + index).append("<a class='btn btn-danger' >立即购买</a> <a class='btn btn-primary'>加入购物车</a>");
                                        $("#digital-btn"+index+" a:eq(0)").click(function(){
                                            console.log("我要购买咯");
                                        });
                                        $("#digital-btn"+index+" a:eq(1)").click(function(){
                                            var userId = window.sessionStorage.getItem("user_id");
                                            if(userId==null){
                                                alert("请先登录");
                                            }
                                            console.log(window.sessionStorage.getItem("user_id"));
                                            console.log("添加购物车");
                                            $.ajax({
                                                type:"POST",
                                                url:"/STUShopping/shoppingCar/add",
                                                data:{userId:userId,commodityId:item.commodity_id},
                                                dataType:"json",
                                                success:function(data){
                                                    if(data.code==1){
                                                        alert("添加购车车成功");
                                                    }
                                                }
                                            })
                                        })
                                    })
                                }
                            });
                        });

                        $("#sport").click(function () {
                            $.ajax({
                                type: "POST",
                                url: "/STUShopping/findWithCommodityKindName",
                                data: { commodity_kind_name: "sport" },
                                dataType: 'json',
                                success: function (data) {
                                    console.log(data);
                                    $.each(data.data, function (index, item) {
                                        $("#sport-img" + index).attr("src", "/STUShopping/images/" + item.commodity_picture);
                                        $("#sport-price" + index).text(item.commodity_price + "RMB");
                                        $("#sport-dis" + index).empty();
                                        $("#sport-dis" + index).append("<a>" + item.commodity_introduce + "</a>");
                                        $("#sport-btn" + index).empty();
                                        $("#sport-btn" + index).append("<a class='btn btn-danger' >立即购买</a> <a class='btn btn-primary' >加入购物车</a>");
                                        $("#sport-btn"+index+" a:eq(0)").click(function(){
                                            console.log("我要购买咯");
                                        });
                                        $("#sport-btn"+index+" a:eq(1)").click(function(){
                                            var userId = window.sessionStorage.getItem("user_id");
                                            if(userId==null){
                                                alert("请先登录");
                                            }
                                            console.log(window.sessionStorage.getItem("user_id"));
                                            console.log("添加购物车");
                                            $.ajax({
                                                type:"POST",
                                                url:"/STUShopping/shoppingCar/add",
                                                data:{userId:userId,commodityId:item.commodity_id},
                                                dataType:"json",
                                                success:function(data){
                                                    if(data.code==1){
                                                        alert("添加购车车成功");
                                                    }
                                                }
                                            })
                                        })
                                    })
                                }
                            });
                        });

                        for(let i=1;i<10;i++){
                            $("#clothes-btn"+i+" > .buy").click(function(){
                                alert("够买了");
                                return false;
                            })
                        }
                        $("#clothes-buy1").click(function(){
                            alert("够买了");
                                return false;
                        })
                        //window.location.href = "index.html";
                        //console.log("aaaaa");
                        // event.preventDefault();
                        // return false;
                    });
                </script>
            </div>
        </body>

        </html>