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

        <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
        <title>用户登录</title>
    </head>

    <body>

        <style>
            .custom-btn {
                width: 260px;
            }

            .m-container {
                position: absolute;
                left: 300px;
            }

            .row-margin-top {
                margin-top: 20px;
            }
        </style>
        <div style="height:150px"></div>
        <div class="container">
            <div class="m-container">
                <h1 class="page-header" style="font-size: x-large;font-weight:bolder;"> 用户登录</h1>
                <!-- <form class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-12">
                        <input type="text" class="form-control " id="username" placeholder="账号" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <input type="password" class="form-control" id="password" placeholder="密码" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-3">
                        <button class="btn btn-info custom-btn" id="submit">登录</button>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-3">
                        <label><a id="register">注册</a></label>
                    </div>
                </div>
            </form> -->
                <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <input type="text" class="form-control " id="username" placeholder="账号" />
                    </div>
                </div>
                <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <input type="password" class="form-control" id="password" placeholder="密码" />
                    </div>
                </div>
                <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <button class="btn btn-info custom-btn" id="submit">登录</button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(function () {
                console.log("aaa");
                $("#submit").click(function () {
                    // alert("进来了");
                    /* let username = $("#username").val();
                    let password = $("#password").val();
                    console.log(username);
                    console.log(password);
                    $.ajax({
                        type: "GET",
                        url: "http://localhost/ssm3/contact/showContact",
                        data: { username: username, password: password },
                        dataType: 'json',
                        success: function (data) {
                            //alert("lalal");
                            if (data[0].id == 1) {
                                //alert("登录成功");
                               window.location.href = "index.jsp";
                            }
                            console.log(data);
                        }
                    }); */
                  window.location.href = "index.jsp";
                  return false;
                });
                //window.location.href = "index.html";
                //console.log("aaaaa");
                event.preventDefault();
                return false;
            });
        </script>

    </body>

    </html>