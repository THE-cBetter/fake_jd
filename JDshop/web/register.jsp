<%@ page import="com.util.Mail_java" %><%--
  Created by IntelliJ IDEA.
  User: zhencheng
  Date: 2021-10-16
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人注册</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/Register.css">
    <script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/emailAutoComplete.js"></script>
</head>

<body class="root61">
<div class="header">
    <div class="logo-con w clearfix">
        <a href="https://www.jd.com" class="logo">
        </a>
        <div class="logo-title">欢迎注册</div>

        <div class="have-account">已有账号？ <a href="">请登录&gt;</a>
        </div>

    </div>
</div>

<div class="container w">
    <%
        String index=(String) request.getAttribute("index");
        if(index==null){
            %>
            <div class="progress-bar clearfix">
        <div class="pro-step cur-step ">
            <span class="step-index info1" style="color: white;">1</span>
            <p class="step-desc">验证手机号</p>
        </div>
        <div class="pro-line pro-line1 person-pro-line person-pro-line1 "></div>
        <div class="pro-step pro-step2 person-pro-step2  ">
            <span class="step-index info2">2</span>
            <p class="step-desc">填写账号信息</p>
        </div>
        <div class="pro-line pro-line2 person-pro-line person-pro-line2 "></div>
        <div class="pro-step pro-step3 person-pro-step3  ">
            <span class="step-index info3">3</span>
            <p class="step-desc">注册成功</p>
        </div>
    </div>
    <%
        }else if(index.equals("2")){
            %>
            <div class="progress-bar clearfix">
        <div class="pro-step cur-step ">
            <span class="step-index info1" style="color: green;background-position: 0 0!important;"></span>
            <p class="step-desc">验证手机号</p>
        </div>
        <div class="pro-line pro-line1 person-pro-line person-pro-line1" style="background-position: 0 -130px;">
        </div>
        <div class="pro-step pro-step2 person-pro-step2  ">
            <span class="step-index info2" style="color: white;background-position: 0 -200px!important;">2</span>
            <p class="step-desc">填写账号信息</p>
        </div>
        <div class="pro-line pro-line2 person-pro-line person-pro-line2 "></div>
        <div class="pro-step pro-step3 person-pro-step3  ">
            <span class="step-index info3">3</span>
            <p class="step-desc">注册成功</p>
        </div>
    </div>
    <%
        }
    %>

    <div class="main">
        <div class="reg-form">
            <%
                if(index==null){
                    %>
                    <form action="registerJD.do?choice=1" id="step1" method="post">
                        <div id="step1-wrap">
                    <div class="item-phone-wrap">
                        <div class="form-item form-item-phone">
                            <label class="select-country" id="select-country" country_id="0086"
                                   style="border: 0;">中国
                                0086<a href="#" class="arrow"></a></label>
                            <div class="item-input-wrap"
                                 style="border: 0;border-left: 1px solid rgb(221, 221, 221);">
                                <txt id="form-phone1"
                                     style="width:190px;position: absolute; z-index: 2; line-height: 46px; margin-left: 20px; margin-top: 1px; font-size: 14px; font-family: Arial; color: rgb(204, 204, 204); display: inline;">
                                    建议使用常用手机号</txt>
                                <input type="text" id="form-phone" maxlength="11" name="phone" class="field"
                                       placeholder=" " autocomplete="off"
                                       default="<i class='i-def'></i>验证完成后，你可以使用该手机登录或找回密码">
                                <i class="i-status"></i>
                                <i class="i-cancel" style="display: none;"></i>
                            </div>

                            <div class="input-tip2" id="error11" style="padding-top: 56px;">
                                <span class="error"><i class="i-error"></i>验证完成后，你可以使用该手机登录或找回密码</span>
                            </div>
                            <div class="input-tip" id="error12" style="padding-top: 56px;">
                                <span class="error"><i class="i-error"></i>手机格式有误！</span>
                            </div>
                        </div>
                    </div>

                    <div class="item-getcode-wrap" id="txyanzheng">
                        <div class="form-item form-item-getcode" clstag="pageclick|keycount|reg_puser_201804031|7"
                             id="TencentCaptcha" data-appid="2041127177" data-cbfn="callback" type="button">
                            点击按钮进行验证 <div id="slideAuthCode" class="JDValidate-wrap"></div>
                        </div>
                        <div class="input-tip" id="error13">
                            <span class="error"><i class="i-error"></i>请完成验证</span>
                        </div>
                    </div>
                    <div class="item-phonecode-wrap" style="display: none;" id="yanzhengma">
                        <div class="form-item form-item-phonecode">
                            <div class="phonecode-left">
                                <label style="border-right: 1px solid rgb(221, 221, 221);">手机验证码</label>
                                <input type="text" name="mobileCode" maxlength="6" autocomplete="off" id="phoneCode"
                                       class="field phonecode" placeholder="输入验证码">
                            </div>
                            <!-- <button id="getPhoneCode" class="btn-phonecode" type="button">重新获取</button> -->
                            <div class="input-tip"><span></span></div>
                            <div class="audio-tip" style="display: none;">收不到短信验证码？点击&nbsp;<span
                                    class="get-auth-code">获取语音验证码</span></div>
                        </div>
                    </div>
                    <div class="form-agreen">
                    </div>
                    <div class="btn-register" id="step1-next">
                        下一步
                    </div>
                </div>
                    </form>
                    <div class="reg-other clearfix">
                <a href="#" class="reg-other-item reg-other-person">
                    <i class="reg-ohter-icon"></i>企业用户注册 </a>
                <a href="#" class="reg-other-item reg-other-inter">
                    <i class="reg-ohter-icon"></i>海外用户注册 </a>
            </div>
            <%
                }else if(index.equals("2")){
                    String phone=(String) request.getAttribute("phone");
                    request.setAttribute("phone", phone);
                    %>
                    <form action="registerJD.do?choice=2" id="step2" method="post">
                        <input type="hidden" name="phone2" value="<%=phone%>">
                <div id="step2-wrap" style="display: block;">
                    <div class="h86">
                        <div class="form-item form-item-account" id="form-item-account"
                             style="border-color: rgb(153, 153, 153);">
                            <label>用　户　名</label>
                            <input type="text" id="form-account" _input="true" name="regName" class="field"
                                   autocomplete="off" maxlength="20" placeholder="您的账户名和登录名"
                                   default="<i class='i-def'></i>支持中文、英文、数字、“-”、“_”的组合，4-20个字符">
                            <i class="i-status"></i>
                            <i class="i-cancel" style="display: none;"></i>
                        </div>
                        <div class="input-tip2" id="error21">
                            <span class="error"><i class="i-error"></i>支持中文,英文,数字,'-','_'的组合4-20个字符</span>
                        </div>
                        <div class="input-tip" id="error22">
                            <span class="err..or"><i class="i-error"></i>不符合用户名规范！</span>
                        </div>
                    </div>
                    <div class="h86">
                        <div class="form-item" style="z-index: 12; border-color: rgb(153, 153, 153);">
                            <label>设 置 密 码</label>
                            <input autocomplete="off" type="password" name="pwd" id="form-pwd" _input="true"
                                   class="field" style="width: 230px;" maxlength="20" placeholder="建议使用两种或两种以上字符组合"
                                   default="<i class='i-def'></i>建议使用字母、数字和符号两种及以上的组合，8-20个字符"
                                   aria-describedby="form-pwd-error">
                            <i class="i-status"></i>
                            <i class="i-cancel" style="display: none;"></i>
                            <div class="capslock-tip tips" style="display: none;">大写已开启<b class="arrow"></b><b
                                    class="arrow-inner"></b></div>
                        </div>
                        <div class="input-tip2" id="error23">
                            <span class="error"><i class="i-error"></i>建议使用字母,数字和符号两种及以上的组和,8-20个字符</span>
                        </div>
                        <div class="input-tip" id="error24">
                            <span class="error"><i class="i-error"></i>不符合密码规范！</span>
                        </div>
                    </div>
                    <div class="h86">
                        <div class="form-item" style="z-index: 12; border-color: rgb(153, 153, 153);">
                            <label>确 认 密 码</label>
                            <input type="password" name="pwdRepeat" id="form-equalTopwd" _input="true" class="field"
                                   placeholder="请再次输入密码" default="<i class='i-def'></i>请再次输入密码">
                            <i class="i-status"></i>
                            <i class="i-cancel" style="display: none;"></i>
                            <div class="capslock-tip tips" style="display: none;">大写已开启<b class="arrow"></b><b
                                    class="arrow-inner"></b></div>
                        </div>
                        <div class="input-tip2" id="error25">
                            <span class="error"><i class="i-error"></i>请再次输入密码</span>
                        </div>
                        <div class="input-tip" id="error26">
                            <span class="error"><i class="i-error"></i>您两次输入的密码不同，请重试</span>
                        </div>
                    </div>
                    <div class="item-email-wrap h86" style="display: block;">
                        <div class="form-item" style="border-color: rgb(153, 153, 153);">
                            <label>邮 箱 验 证</label>
                            <div class="parentCls">
                                <input type="text" class="inputElem field" name="email" id="form-email"
                                       autocomplete="off" maxlength="50" placeholder="请输入邮箱"
                                       default="<i class='i-def'></i>验证完成后，你可以使用该邮箱登录">
                                <i class="i-status"></i>
                            </div>
                        </div>
                        <div class="input-tip2" id="error27">
                            <span class="error"><i class="i-error"></i>验证完成后您可以使用邮箱登录</span>
                        </div>
                        <div class="input-tip" id="error28">
                            <span class="error"><i class="i-error"></i>邮箱格式错误</span>
                        </div>
                    </div>

                    <div class="item-mailcode-wrap h86" style="display: block;">
                        <div class="form-item form-item-mailcode">
                            <div class="mailcode-left"
                                 style="border-color: rgb(221, 221, 221); border-right-width: 1px; border-right-style: solid;">
                                <label>邮箱验证码</label>
                                <input type="text" name="mailCode" maxlength="6" autocomplete="off" id="mailCode"
                                       class="field mailcode" placeholder="请输入邮箱验证码">
                                <i class="i-status" style="top: 16px!important;right: 10px!important"></i>
                                <i class="i-cancel"></i>
                            </div>
                            <button id="getMailCode" class="btn-mailcode" type="button" onclick="doSubmit(this)"
                                    style="cursor: pointer;border-top: 1px solid rgb(221, 221, 221); border-right: 1px solid rgb(221, 221, 221); border-bottom: 1px solid rgb(221, 221, 221); border-left: none; border-image: initial;">获取验证码</button>
                            <div class="input-tip" id="error29">
                                <span class="error"><i class="i-error"></i>邮件已发送</span>
                            </div>
                            <div class="input-tip" id="error210">
                                <span class="error"><i class="i-error"></i>验证码错误!</span>
                            </div>
                        </div>
                    </div>
                    <div>
                        <button type="button" class="btn-register" id="form-register">立即注册</button>
                    </div>
                    <div class="input-tip">
                        <span></span>
                    </div>
                    <!--<div class="back-btn" id="back-btn">返回上一步</div>-->
                </div>
            </form>
                    <div class="reg-other clearfix">
                <a href="#" class="reg-other-item reg-other-person">
                    <i class="reg-ohter-icon"></i>企业用户注册 </a>
                <a href="#" class="reg-other-item reg-other-inter">
                    <i class="reg-ohter-icon"></i>海外用户注册 </a>
            </div>
            <%
                }else if(index.equals("3")){
                    %>
                    <div class="step3">
                <div class="step3bg">
                </div>
                <div class="gongxi">
                    恭喜您&nbsp;<%=(String)request.getSession().getAttribute("userName")%>
                </div>
                <div class="happy">
                    您已成功注册为京东用户，祝您购物愉快~
                </div>
                        <a href="registerJD.do?choice=3">
                            <div class="goshopping">
                                去购物
                            </div>
                        </a>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>
<div id="form-footer" class="footer w">
    <div class="links">
        <a rel="nofollow" target="_blank" href="#"> 关于我们</a>|
        <a rel="nofollow" target="_blank" href="#">联系我们</a>|
        <a rel="nofollow" target="_blank" href="#">人才招聘</a>|
        <a rel="nofollow" target="_blank" href="#">商家入驻</a>|
        <a rel="no  follow" target="_blank" href="#">广告服务</a>|
        <a rel="nofollow" target="_blank" href="#">手机京东</a>|
        <a target="_blank" href="#">友情链接</a>|
        <a target="_blank" href="#">销售联盟</a>|
        <a href="#" target="_blank">京东社区</a>|
        <a href="#" target="_blank">京东公益</a>|
        <a target="_blank" href="#">English Site</a>
    </div>
    <div class="copyright">
        Copyright©2004-2021&nbsp;&nbsp;京东JD.com&nbsp;版权所有
    </div>
</div>
</body>
<!-- // 首先得先引入资源如下 -->
<script src="https://ssl.captcha.qq.com/TCaptcha.js"></script>

<!-- // 基础使用 -->
<script src="js/Register.js"></script>


</html>