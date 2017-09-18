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
        <div style="height:30px"></div>

        <div class="container">
            <div class="m-container">
                <h1 class="page-header" style="font-size: x-large;font-weight:bolder;"> 用户注册</h1>
                <!-- <form class="form-horizontal ">
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text" class="form-control " placeholder="账号" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text" class="form-control " placeholder="用户名" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text" class="form-control " placeholder="电子邮箱" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text" class="form-control " placeholder="手机号" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text" class="form-control " placeholder="地址" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="password" class="form-control" value="" placeholder="密码" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="password" class="form-control" value="" placeholder="确认密码" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-3">
                            <button class="btn btn-info custom-btn" id="register">注册</button>
                        </div>
                    </div>
                </form> -->

                <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <input type="text" class="form-control " id="user_account" placeholder="账号" />
                    </div>
                </div>
                <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <input type="text" class="form-control" id="user_name" placeholder="用户名" />
                    </div>
                </div>
                <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <input type="text" class="form-control " id="user_email" placeholder="电子邮箱" />
                    </div>
                </div>
                <!-- <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <input type="password" class="form-control" id="phone" placeholder="手机号" />
                    </div>
                </div>
                <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <input type="text" class="form-control " id="address" placeholder="地址" />
                    </div>
                </div> -->
                <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <input type="password" class="form-control" id="user_password1" placeholder="密码" />
                    </div>
                </div>
                <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <input type="password" class="form-control" id="user_password2" placeholder="确认密码" />
                    </div>
                </div>
                <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <button class="btn btn-info custom-btn" id="register">注册</button>
                    </div>
                </div>
                <div class="row clearfix row-margin-top">
                    <div class="col-md-12 column">
                        <div id="newContent"></div>
                    </div>
                </div>
            </div>
        </div>


        <script>
            $(function () {
                console.log("aaa");

                // $("#username").blur(function(){
                //     let username = $("#username").val();
                //     if(username === "zengzehao"){
                //         alert("该用户名已经被注册！");
                //     }
                // });
                $("#user_email").blur(function(){
                    let email = $("#user_email").val();
                    let reg =  /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
                    //alert(reg.test(email));
                    if(!reg.test(email)){
                        alert("邮箱格式不正确，请重新输入");
                    }
                })
                $("#user_password2").blur(function(){
                    let password1 = $("#user_password1").val();
                    let password2 = $("#user_password2").val();
                    if(password1 != password2){
                        alert("两次密码不一致");
                    }
                });                

                $("#register").click(function () {
                    // alert("进来了");
                    let user_account = $("#user_account").val();
                    let user_name = $("#user_name").val();
                    let user_email = $("#user_email").val();
                    let user_password = $("#user_password2").val();
                    //let password = $("#password").val();
                    //console.log(username);
                    //console.log(password);
                    console.log(user_password);
                    $.ajax({
                        type: "POST",
                        url: "/STUShopping/registerUser",
                        data: { user_account:user_account,user_name:user_name,user_email:user_email,user_password:user_password},
                        dataType: 'json',
                        success: function (data) {
                            //alert("lalal");
                            if(data.code==1){
                                alert(data.mes);
                                window.location.href="login.jsp";
                            }else{
                                alert(data.mes);
                            }
                        }
                    });
                });
                //window.location.href = "index.html";
                //console.log("aaaaa");
                event.preventDefault();
                return false;
            });
        </script>

    </body>

    </html>