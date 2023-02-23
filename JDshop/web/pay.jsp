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

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>京东(JD.COM)-综合网购首选-正品低价、品质保障、配送及时、轻松购物！</title>
    <meta name="description"
          content="京东JD.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!" />
    <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,京东" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/pay.css" />
    <script src="js/jquery.min.js"></script>
    <script src="js/base.js"></script>
    <script src="js/pay.js"></script>
</head>

<body>
<header>
    <a href="#">
        <img src="images/header.jpg" height="80" width="100%" alt="">
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
                <a href="mobile.html">手机京东</a>
                <img src="images/mobile.png" height="60" width="60" alt="">
                <i class="close-btn">x</i>
            </li>
        </ul>
    </div>
</div>
<div class="m">
    <div class="w middle">
        <div class="logo">
            <h1>
                <!-- 提高权重 便利于搜索引擎优化 -->
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
<div class="content">
    <div class="w">
        <p>填写并核对订单信息</p>
        <div class="content-top">
            <div class="message">
                <p>收件人信息</p>
                <div class="address">
                    <span>甄某 西海岸</span>
                    <p>甄某 America 夏威夷FBI酒店 2-2-2 1575107698*</p>
                </div>
                <a href="#">更多地址</a>
            </div>
            <div class="message">
                <p>选择物流方式</p>
                <ul class="kuaidi">
                    <li class="current"><i></i><span>顺丰</span></li>
                    <li><i></i><span>中通</span></li>
                    <li><i></i><span>圆通</span></li>
                    <li><i></i><span>邮政</span></li>
                    <li><i></i><span>百世</span></li>
                </ul>
            </div>
            <div class="message">
                <p>选择支付方式</p>
                <ul class="m-pay">
                    <li class="current">银联</li>
                    <li>微信</li>
                    <li>支付宝</li>
                    <li>京东白条</li>
                    <li>PayPal</li>
                </ul>
            </div>
            <div class="message">
                <p>送货清单</p>
                <div class="me-bt">
                    <span>配送方式</span>
                    <div class="me-bb">
                        <span><i>顺丰</i>快递</span>
                        <p>配送时间：预计10月24日（周？）09:00-15:00送达</p>
                        <a href="#">修改</a>
                    </div>
                </div>
                <form action="clear.do" method="post" id="goclear">
                    <c:forEach var="e" items="${pInfos}" varStatus="s">
                        <input type="hidden" name="tpID" value="${e.pID}">
                        <div class="me-bd">
                            <span>订单详情</span>
                            <div class="me-bs">
                            <span>
                                <img src="uploads/${e.pPhoto}" width="80px" height="95.3px" alt="">
                            </span>
                                <p>
                                        ${e.pName}
                                        <%--Apple iPhone 6s (A1700) 64G 玫瑰金色 移动联通电信4G手机 硅胶透明防摔软壳 本色系列--%>
                                    <i>7天无理由退货</i>
                                </p>
                                <div class="price">${e.price}</div>
                                <div class="num">X${myShoppings.get(s.index).buyCount}</div>
                                <a href="#">有货</a>
                            </div>
                        </div>
                    </c:forEach>
                </form>


                <%--<div class="me-bd">--%>
                    <%--<span>订单详情</span>--%>
                    <%--<div class="me-bs">--%>
                            <%--<span>--%>
                                <%--<img src="uploads/mobile.png" width="100%" alt="">--%>
                            <%--</span>--%>
                        <%--<p>--%>
                            <%--Apple iPhone 6s (A1700) 64G 玫瑰金色 移动联通电信4G手机 硅胶透明防摔软壳 本色系列--%>
                            <%--<i>7天无理由退货</i>--%>
                        <%--</p>--%>
                        <%--<div class="price">￥5399.00</div>--%>
                        <%--<div class="num">X1</div>--%>
                        <%--<a href="#">有货</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
            </div>
            <div class="message clearfix me-line">
                <p>发票信息</p>
                <div class="address">
                    <span style="font-size: 12px;">普通发票（电子） 个人 明细 <a href="#">修改</a></span>
                </div>
                <dl>
                    <dt>${buyCounts}件商品，总商品金额：</dt>
                    <dd>¥${money1}</dd>
                    <dt>返现：</dt>
                    <dd>-¥0.00</dd>
                    <dt>运费：</dt>
                    <dd class="mess-red">¥0.00</dd>
                </dl>
            </div>
            <div class="me-money">
                <p>应付总额 ： <span>¥${money1}</span></p>
                <p>寄送至：江科大6号楼22* 收货人：甄某 *575107698*</p>
            </div>
            <a href="#" class="me-commit" onclick="document.getElementById('goclear').submit()">提交订单</a>
        </div>
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
            <p>京公网安备
                11000002000088号<span>|</span>京ICP证070359号<span>|</span>互联网药品信息服务资格证编号(京)-经营性-2014-0008<span>|</span>新出发京零
                字第大120007号</p>
            <p>互联网出版许可证编号新出网证(京)字150号<span>|</span>出版物经营许可证<span>|</span>网络文化经营许可证京网文[2014]2148-348号<span>|</span>违法和不良信息举报电话：4006561155
            </p>
            <p>Copyright © 2004 - 2021 京东JD.com
                版权所有<span>|</span>消费者维权热线：4006067733经营证照|(京)网械平台备字(2021)第00003号<span>|</span>营业执照</p>
            <p>Global Site<span>|</span>Сайт России<span>|</span>Situs Indonesia<span>|</span>Sitio de
                España<span>|</span>เว็บไซต์ประเทศไทย</p>
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

</html>
