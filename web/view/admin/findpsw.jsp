<%--
  Created by IntelliJ IDEA.
  User: 21989
  Date: 2020/4/23
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>找回密码</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css" id="theme-stylesheet">
</head>
<body>
<div class="page login-page">
    <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
            <div class="row">
                <!-- Logo & Information Panel-->
                <div class="col-lg-6">
                    <div class="info d-flex align-items-center">
                        <div class="content">
                            <div class="logo">
                                <h1>导游管理信息系统</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Form Panel    -->
                <div class="col-lg-6 bg-white">
                    <div class="form d-flex align-items-center">
                        <div class="content">
                            <div style="text-align: center">
                                <h1>找回密码</h1>
                                <br>
                            </div>
                            <form action="" method="post">
                                <div class="form-group">
                                    <input id="register-username" class="input-material" type="text" name="adId" placeholder="请输入账号" >
                                    <div class="invalid-feedback">
                                        用户名必须在2~10位之间
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input id="register-password" class="input-material" type="password" name="adPsw" placeholder="请输入密码"   >
                                    <div class="invalid-feedback">
                                        密码必须在6~10位之间
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input id="register-passwords" class="input-material" type="password" name="adPsw1" placeholder="确认密码"   >
                                    <div class="invalid-feedback">
                                        两次密码必须相同 且在6~10位之间
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button id="regbtn" type="button" name="registerSubmit" class="btn btn-primary">提交</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script>
    $(function(){
        /*错误class  form-control is-invalid
        正确class  form-control is-valid*/
        var flagName=false;
        var flagPas=false;
        var flagPass=false;
        /*验证用户名*/
        var name,passWord,passWords;
        $("#register-username").change(function(){
            name=$("#register-username").val();
            if(name.length<2||name.length>10){
                $("#register-username").removeClass("form-control is-valid")
                $("#register-username").addClass("form-control is-invalid");
                flagName=false;
            }else{
                $("#register-username").removeClass("form-control is-invalid")
                $("#register-username").addClass("form-control is-valid");
                flagName=true;
            }
        })
        /*验证密码*/
        $("#register-password").change(function(){
            passWord=$("#register-password").val();
            if(passWord.length<6||passWord.length>18){
                $("#register-password").removeClass("form-control is-valid")
                $("#register-password").addClass("form-control is-invalid");
                flagPas=false;
            }else{
                $("#register-password").removeClass("form-control is-invalid")
                $("#register-password").addClass("form-control is-valid");
                flagPas=true;
            }
        })
        /*验证确认密码*/
        $("#register-passwords").change(function(){
            passWords=$("#register-passwords").val();
            if((passWord!=passWords)||(passWords.length<6||passWords.length>18)){
                $("#register-passwords").removeClass("form-control is-valid")
                $("#register-passwords").addClass("form-control is-invalid");
                flagPass=false;
            }else{
                $("#register-passwords").removeClass("form-control is-invalid")
                $("#register-passwords").addClass("form-control is-valid");
                flagPass=true;
            }
        })


        $("#regbtn").click(function(){
            if(flagName&&flagPas&&flagPass){
                localStorage.setItem("name",name);
                localStorage.setItem("passWord",passWord);
                location="login.html"
            }else{
                if(!flagName){
                    $("#register-username").addClass("form-control is-invalid");
                }
                if(!flagPas){
                    $("#register-password").addClass("form-control is-invalid");
                }
                if(!flagPass){
                    $("#register-passwords").addClass("form-control is-invalid");
                }
            }
        })
    })
</script>
</body>
</html>
