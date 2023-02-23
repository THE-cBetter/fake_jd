<%@ page import="com.dao.UserDao" %>
<%@ page import="com.entity.User" %>
<%--
  Created by IntelliJ IDEA.
  User: zhencheng
  Date: 2021-10-15
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>京东(JD.COM)-综合网购首选-正品低价、品质保障、配送及时、轻松购物！</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/cart.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/base.js"></script>
    <script src="js/cart.js"></script>
</head>
<body>
<header>
    <a href="#">
        <img src="images/header.jpg" height="80"  width="100%" alt="" >
    </a>
</header>
<div class="shortcut">
    <div class="w">
        <ul class="fl city">
            <li><i class="f10"></i><a href="#">江科大</a></li>
        </ul>
        <ul class="fr nav">
            <%
                if(request.getSession().getAttribute("userName")==null){
            %>
            <li>
                <a href="login.jsp">你好，请登录</a>
                <a href="register.jsp" class="f10">免费注册</a>
            </li>
            <%
                }
            %>
            <li class="space"></li>
            <li>
                <a href="cart.do">我的订单</a>
            </li>
            <li class="space"></li>
            <li>
                <a href="#">我的京东</a>
                <i></i>
                <div class="dropdown-layer">
                    <dl class="d">
                        <dd><a href="#">待处理订单</a></dd>
                        <dd><a href="#">返修退换货</a></dd>
                        <dd><a href="#">降价商品</a></dd>
                    </dl>
                    <dl class="d">
                        <dd><a href="#">消息</a></dd>
                        <dd><a href="#">我的问答</a></dd>
                        <dd><a href="#">我的关注</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的京豆</a></dd>
                        <dd><a href="#">我的白条</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的优惠券</a></dd>
                        <dd><a href="#">我的理财</a></dd>
                    </dl>
                </div>
            </li>
            <li class="space"></li>
            <li>
                <a href="#">京东会员</a>
            </li>
            <li class="space"></li>
            <li>
                <a href="#">企业采购</a>
            </li>
            <li class="space"></li>
            <li>
                <a href="#">客户服务</a>
                <i></i>
                <div class="dropdown-layer">
                    <dl class="d">
                        <dd><a href="#">待处理订单</a></dd>
                        <dd><a href="#">返修退换货</a></dd>
                        <dd><a href="#">降价商品</a></dd>
                    </dl>
                    <dl class="d">
                        <dd><a href="#">消息</a></dd>
                        <dd><a href="#">我的问答</a></dd>
                        <dd><a href="#">我的关注</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的京豆</a></dd>
                        <dd><a href="#">我的白条</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的优惠券</a></dd>
                        <dd><a href="#">我的理财</a></dd>
                    </dl>
                </div>
            </li>
            <li class="space"></li>
            <li>
                <a href="#">网站导航</a>
                <i></i>
                <div class="dropdown-layer">
                    <dl class="d">
                        <dd><a href="#">待处理订单</a></dd>
                        <dd><a href="#">返修退换货</a></dd>
                        <dd><a href="#">降价商品</a></dd>
                    </dl>
                    <dl class="d">
                        <dd><a href="#">消息</a></dd>
                        <dd><a href="#">我的问答</a></dd>
                        <dd><a href="#">我的关注</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的京豆</a></dd>
                        <dd><a href="#">我的白条</a></dd>
                    </dl>
                    <dl>
                        <dd><a href="#">我的优惠券</a></dd>
                        <dd><a href="#">我的理财</a></dd>
                    </dl>
                </div>
            </li>
            <li class="space"></li>
            <li class="mobile">
                <a href="#">手机京东</a>
                <img src="images/mobile.png" height="60" width="60" alt="">
                <i class="close-btn">x</i>
            </li>
        </ul>
    </div>
</div>
<div class="m">
    <div class="w middle">
        <div class="logo">
            <h1>  <!-- 提高权重 便利于搜索引擎优化 -->
                <a href="indexlist.do" title="京东">京东</a>
            </h1>
        </div>
        <form action="miaosha.do?search=1" id="search">
            <div class="form">
                <input id="text" type="text" placeholder="扫描仪" name="searchsome">
                <button onclick="document.getElementById('search').submit()"><i></i></button>
            </div>
        </form>
        <div class="shopCar">
            <i></i><a href="cart.do" class="f10">我的购物车</a>
            <span>
                ${buyCounts}
            </span>
        </div>
        <div class="hotwords">
            <a href="#" class="f10">199减100</a>
            <a href="#">鼠标试用</a>
            <a href="#">农资7折</a>
            <a href="#">低至29元</a>
            <a href="#">抽奖赢空调</a>
            <a href="#">记忆棉</a>
            <a href="#">坐垫</a>
            <a href="#">1分钱买油</a>
            <a href="#">智能手表</a>
        </div>
        <div class="navitems">
            <ul>
                <li><a href="miaosha.do">秒杀</a></li>
                <li><a href="#">优惠券</a></li>
                <li><a href="#">闪购</a></li>
                <li><a href="#">拍卖</a></li>
                <li class="space "></li>
                <li><a href="#">服装城</a></li>
                <li><a href="#">京东超市</a></li>
                <li><a href="#">生鲜</a></li>
                <li><a href="#">全球购</a></li>
                <li class="space"></li>
                <li><a href="#">京东金融</a></li>
            </ul>
        </div>
        <div class="super">
            <a href="#"><img src="images/super.png" alt=""></a>
        </div>
    </div>
</div>
<div class="py-container">
    <div class="w">
        <c:if test="${buyCounts == 0}">
            <div class="cart-empty">
                <div class="message">
                    <ul>
                        <li class="txt">购物车空空的哦~，去看看心仪的商品吧~</li>
                        <li>
                            <a href="miaosha.do" class="ftx-05">去购物&gt;</a>
                        </li>
                    </ul>
                </div>
            </div>
        </c:if>
        <c:if test="${buyCounts > 0}">
            <div class="allgoods">
                <h4>全部商品
                    <span>11</span>
                </h4>
                <div class="cart-main">
                    <div class="cart-th clearfix">
                        <div><input type="checkbox" id="all-checkbox">全选</div>
                        <div class="">商品</div>
                        <div class="">单价（元）</div>
                        <div class="">数量</div>
                        <div class="">小计（元）</div>
                        <div class="">操作</div>
                    </div>
                    <div class="cart-title clearfix">
                        <h5 class="fl">江科大自营</h5>
                        <div class="yunfei fr">
                            运费：￥0.00
                            <span>还差￥9999.00免运费</span>
                        </div>
                    </div>
                    <div class="cart-item-list">
                        <div class="cart-body">
                            <div class="cart-list">
                                <form action="pay.do" method="post" id="gopay">
                                    <c:forEach var="e" items="${pInfos}" varStatus="s">
                                        <%--<li><a href="#"><img src="uploads/${e.pPic}" alt=""></a></li>--%>
                                        <input type="hidden" name="op" value="0">
                                        <input type="hidden" name="tpID" value="${e.pID}">
                                        <ul class="goods-list yui3-g">
                                            <li class="yui3-u-3-8 pr">
                                                <input type="checkbox" class="good-checkbox">
                                                <div class="good-item">
                                                    <div class="item-img">
                                                        <img src="uploads/${e.pPhoto}" width="75.5px" height="90px">
                                                    </div>
                                                    <div class="item-msg" style="width: 400px">
                                                            ${e.pName}
                                                            <%--Apple Macbook Air 13.3英寸笔记本电脑 银色（Corei5）处理器/8GB内存--%>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="yui3-u-1-8">
                                                <span>颜色: ?</span>
                                                <br>
                                                    <%--<span>处理器: Core I5</span>--%>
                                                <br>
                                                    <%--<span>内存: 8GB</span>--%>
                                                <br>
                                                <span>尺寸: ?</span>
                                                <br>
                                            </li>
                                            <li class="yui3-u-1-8">
                                        <span class="price">
                                            ${e.price}
                                            <%--8848.00--%>
                                        </span>
                                            </li>
                                            <li class="yui3-u-1-8">
                                                <div class="clearfix">
                                                    <a href="javascript:;" class="increment mins">-</a>
                                                    <input autocomplete="off" type="text" value="${myShoppings.get(s.index).buyCount}" minnum="1" class="itxt">
                                                    <a href="javascript:;" class="increment plus">+</a>
                                                </div>
                                                <div class="youhuo">有货</div>
                                            </li>
                                            <li class="yui3-u-1-8">
                                        <span class="sum">
                                            ${money.get(s.index)}
                                            <%--8848.00--%>
                                            <%--${e.price}--%>
                                        </span>
                                            </li>
                                            <li class="yui3-u-1-8">
                                                <div class="del1">
                                                    <a href="remove.do?s=${e.pID}">删除</a>
                                                </div>
                                                <div>移到我的关注</div>
                                            </li>
                                        </ul>
                                    </c:forEach>
                                </form>

                                    <%--<ul class="goods-list active yui3-g">--%>
                                    <%--<li class="yui3-u-3-8 pr">--%>
                                    <%--<input type="checkbox" class="good-checkbox">--%>
                                    <%--<div class="good-item">--%>
                                    <%--<div class="item-img">--%>
                                    <%--<img src="uploads/mobile.png">--%>
                                    <%--</div>--%>
                                    <%--<div class="item-msg">Apple Macbook Air 13.3英寸笔记本电脑 银色（Corei5）处理器/8GB内存</div>--%>
                                    <%--</div>--%>
                                    <%--</li>--%>
                                    <%--<li class="yui3-u-1-8">--%>
                                    <%--<span>颜色: 银色</span>--%>
                                    <%--<br>--%>
                                    <%--<span>处理器: Core I5</span>--%>
                                    <%--<br>--%>
                                    <%--<span>内存: 8GB</span>--%>
                                    <%--<br>--%>
                                    <%--<span>尺寸: 13.3英寸</span>--%>
                                    <%--<br>--%>
                                    <%--</li>--%>
                                    <%--<li class="yui3-u-1-8">--%>
                                    <%--<span class="price">8848.00</span>--%>
                                    <%--</li>--%>
                                    <%--<li class="yui3-u-1-8">--%>
                                    <%--<div class="clearfix">--%>
                                    <%--<a href="javascript:;" class="increment mins">-</a>--%>
                                    <%--<input autocomplete="off" type="text" value="1" minnum="1" class="itxt">--%>
                                    <%--<a href="javascript:;" class="increment plus">+</a>--%>
                                    <%--</div>--%>
                                    <%--<div class="youhuo">有货</div>--%>
                                    <%--</li>--%>
                                    <%--<li class="yui3-u-1-8">--%>
                                    <%--<span class="sum">8848.00</span>--%>
                                    <%--</li>--%>
                                    <%--<li class="yui3-u-1-8">--%>
                                    <%--<div class="del1">--%>
                                    <%--<a href="javascript:;">删除</a>--%>
                                    <%--</div>--%>
                                    <%--<div>移到我的关注</div>--%>
                                    <%--</li>--%>
                                    <%--</ul>--%>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cart-tool clearfix">
                    <div class="money-box">
                        <div class="sumprice">
                            <div class="sumprice-top">
                                <span>
                                    已选择
                                    <strong id="sumofcheckeds">0</strong> 件商品</span>
                                <span>
                                <em>总价（不含运费）：</em>
                                <i class="summoney">￥<span>44240.00</span></i>
                            </div>
                            <div class="sumprice-bottom">
                                已节省：￥0.00
                            </div>
                        </div>
                        <div class="sumbtn" style="cursor: pointer">
                            <a class="sum-btn" id="sum-btn" >结算</a>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>

    </div>
</div>
<footer>
    <div class="service">
        <!-- 服务模块 -->
        <div class="w">
            <ul>
                <li>
                    <h5></h5>
                    <p>品类齐全，轻松购物</p>
                </li>
                <li>
                    <h5></h5>
                    <p>品类齐全，轻松购物</p>
                </li>
                <li>
                    <h5></h5>
                    <p>品类齐全，轻松购物</p>
                </li>
                <li>
                    <h5></h5>
                    <p>品类齐全，轻松购物</p>
                </li>
            </ul>
        </div>
    </div>
    <!-- 帮助模块 -->
    <div class="w help">
        <div class="fl">
            <dl>
                <dt>购物指南</dt>
                <dd><a href="#">购物流程</a></dd>
                <dd><a href="#">会员介绍</a></dd>
                <dd><a href="#">生活旅行</a></dd>
                <dd><a href="#">常见问题</a></dd>
                <dd><a href="#">大家电</a></dd>
                <dd><a href="#">联系客服</a></dd>
            </dl>
            <dl>
                <dt>配送方式</dt>
                <dd><a href="#">上门自提</a></dd>
                <dd><a href="#">211限时达</a></dd>
                <dd><a href="#">配送服务查询</a></dd>
                <dd><a href="#">配送费收取标准</a></dd>
                <dd><a href="#">海外配送</a></dd>
            </dl>
            <dl>
                <dt>支付方式</dt>
                <dd><a href="#">货到付款</a></dd>
                <dd><a href="#">在线支付</a></dd>
                <dd><a href="#">分期付款</a></dd>
                <dd><a href="#">邮局汇款</a></dd>
                <dd><a href="#">公司转账</a></dd>
            </dl>
            <dl>
                <dt>售后服务</dt>
                <dd><a href="#">售后政策</a></dd>
                <dd><a href="#">价格保护</a></dd>
                <dd><a href="#">退款说明</a></dd>
                <dd><a href="#">返修/退换货</a></dd>
                <dd><a href="#">取消订单</a></dd>
            </dl>
            <dl>
                <dt>特色服务</dt>
                <dd><a href="#">夺宝岛</a></dd>
                <dd><a href="#">DIY装机</a></dd>
                <dd><a href="#">延保服务</a></dd>
                <dd><a href="#">京东E卡</a></dd>
                <dd><a href="#">京东通信</a></dd>
                <dd><a href="#">京鱼座智能</a></dd>
            </dl>
        </div>
        <div class="fr coverage">
            <h5>京东自营覆盖区县</h5>
            <p>京东已向全国2661个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</p>
            <a href="#">查看详情 > </a>
        </div>
    </div>
    <div class="w copyright">
        <p>
            <a href="#">关于我们</a>
            <span> | </span>
            <a href="#">联系我们</a>
            <span> | </span>
            <a href="#">联系客服</a>
            <span> | </span>
            <a href="#">合作招商</a>
            <span> | </span>
            <a href="#">商家帮助</a>
            <span> | </span>
            <a href="#">营销中心</a>
            <span> | </span>
            <a href="#">手机京东</a>
            <span> | </span>
            <a href="#">友情链接</a>
            <span> | </span>
            <a href="#">销售联盟</a>
            <span> | </span>
            <a href="#">京东社区</a>
            <span> | </span>
            <a href="#">风险监测</a>
            <span> | </span>
            <a href="#">隐私政策</a>
            <span> | </span>
            <a href="#">京东公益</a>
            <span> | </span>
            <a href="#">English Site</a>
            <span> | </span>
            <a href="#">Media & IR</a>
        </p>
        <div>
            <p>京公网安备 11000002000088号<span>|</span>京ICP证070359号<span>|</span>互联网药品信息服务资格证编号(京)-经营性-2014-0008<span>|</span>新出发京零 字第大120007号</p>
            <p>互联网出版许可证编号新出网证(京)字150号<span>|</span>出版物经营许可证<span>|</span>网络文化经营许可证京网文[2014]2148-348号<span>|</span>违法和不良信息举报电话：4006561155</p>
            <p>Copyright © 2004 - 2021  京东JD.com 版权所有<span>|</span>消费者维权热线：4006067733经营证照|(京)网械平台备字(2021)第00003号<span>|</span>营业执照</p>
            <p>Global Site<span>|</span>Сайт России<span>|</span>Situs Indonesia<span>|</span>Sitio de España<span>|</span>เว็บไซต์ประเทศไทย</p>
            <p>京东旗下网站：京东钱包<span>|</span>京东云</p>
        </div>
        <p class="foot-icon">
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
        </p>
    </div>
</footer>
</body>
<script>
    var ops=document.getElementsByName("op");
    var tpIDs=document.getElementsByName("tpID");
    var checkboxs=document.getElementsByClassName("good-checkbox");
    var sumofcheckeds=document.getElementById("sumofcheckeds");
    for(let i=0;i<checkboxs.length;i++){
        checkboxs[i].addEventListener("click",function () {
            if(checkboxs[i].checked){
                ops[i].value="1";
            }else{
                ops[i].value="0";
            }
            let sumofchecked=0;
            for(let n=0;n<checkboxs.length;n++){
                if(checkboxs[n].checked){
                    sumofchecked++;
                }
            }
            sumofcheckeds.innerHTML=sumofchecked;
        })
    }
    document.getElementById("all-checkbox").addEventListener("click",function () {
        if(document.getElementById("all-checkbox").checked){
            for(let i=0;i<ops.length;i++){
                ops[i].value="1";
            }
        }else{
            for(let i=0;i<ops.length;i++){
                ops[i].value="0";
            }
        }
        let sumofchecked=0;
        for(let n=0;n<ops.length;n++){
            if(ops[n].value==="1"){
                sumofchecked++;
            }
        }
        sumofcheckeds.innerHTML=sumofchecked;
    })
    function checkstep(){
        for(let i=0;i<checkboxs.length;i++){
            if(checkboxs[i].checked){
                return true;
            }
        }
        return false;
    }
    document.getElementById("sum-btn").addEventListener("click", function () {
        if (checkstep()) {
            document.getElementById('gopay').action="pay.do"
            document.getElementById('gopay').submit();
            console.log("进去了")
        }else{
            console.log("去不了")
        }
    })
</script>
</html>
