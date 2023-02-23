<%@ page import="com.dao.UserDao" %>
<%@ page import="com.entity.User" %>
<%@ page import="com.entity.PInfo" %>
<%@ page import="java.util.List" %>
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
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>列表页</title>
    <meta name="description" content="京东JD.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!" />
    <meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,储卡,京东" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="css/normalize.css" />
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/list.css" />
    <script src="js/jquery.min.js"></script>
    <script src="js/base.js"></script>
    <script src="js/list.js"></script>
</head>
<%
    if(request.getAttribute("choose")==null){
        %>
        <c:if test="${empty goods}"> <c:redirect url="miaosha.do"></c:redirect> </c:if>
<%
    }
%>
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
            <li>
                <a href="#">你好，请登录</a>
                <a href="#" class="f10">免费注册</a>
            </li>
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
            <h1 class="small">  <!-- 提高权重 便利于搜索引擎优化 -->
                <a href="indexlist.do" title="京东">京东</a>
            </h1>
        </div>
        <div class="sk">
            <img src="uploads/secKill_03.png" alt="">
        </div>
        <form action="miaosha.do?search=1" id="search">
            <div class="form">
                <input id="text" type="text" placeholder="${temp}" name="searchsome">
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
        <div class="sk_navi w">
            <div class="sk_list fl">
                <ul>
                    <li class="current"><a href="#">京东秒杀</a></li>
                    <li><a href="#">每日特价</a></li>
                    <li><a href="#">大牌闪购</a></li>
                    <li><a href="#">品类秒杀</a></li>
                </ul>
            </div>
            <div class="sk_more fr">
                <a href="#">
                    更多分类
                    <i></i>
                </a>
            </div>
        </div>
    </div>
</div>
<div class="sk_hd">
    <img src="images/header_textV2.png" alt="">
</div>
<%
    if(((List<PInfo>)request.getAttribute("goods"))==null){
        %>
        <div style="width: 1190px;height: 40px;margin: 0 auto;font-size: 20px;padding-top: 30px;text-align: center;">
            对不起！您搜索的商品我们暂时未上线！
        </div>
<%
    }
%>


<div class="w sk_container">
    <div class="sk_bd">
        <ul>
            <c:forEach var="e" items="${goods}" varStatus="s">
                <li class="sk_goods">
                    <a href="detail.do?pID=${e.pID}"><img src="uploads/${e.pPhoto}" alt="" width="242px" height="242px"></a>
                    <h5 class="sk_goods_title" style="width: 268px;height: 32px;">
                        ${e.pName}
                        <%--【超级爆款】华为 HUAWEI P30 Pro 超感光徕卡四摄10倍混合变焦麒麟980芯片屏--%>
                    </h5>
                    <p class="sk_goods_price">
                        <em>¥${e.price}</em>
                        <del>￥5488</del>
                    </p>
                    <div class="sk_goods_progress">
                        已售<i class="yishou">87%</i>
                        <div class="bar">
                            <div class="bar_in"></div>
                        </div>
                        剩余<em>${e.number}</em>件
                    </div>
                    <a href="detail.do?pID=${e.pID}" class="sk_goods_buy">立即抢购</a>
                </li>
            </c:forEach>
            <%--<li class="sk_goods">--%>
                <%--<a href="detail.html"><img src="uploads/mobile.jpg" alt=""></a>--%>
                <%--<h5 class="sk_goods_title">【超级爆款】华为 HUAWEI P30 Pro 超感光徕卡四摄10倍混合变焦麒麟980芯片屏</h5>--%>
                <%--<p class="sk_goods_price"><em>¥4758.00</em> <del>￥5488</del></p>--%>
                <%--<div class="sk_goods_progress">--%>
                    <%--已售<i>87%</i>--%>
                    <%--<div class="bar">--%>
                        <%--<div class="bar_in"></div>--%>
                    <%--</div>--%>
                    <%--剩余<em>29</em>件--%>
                <%--</div>--%>
                <%--<a href="detail.html" class="sk_goods_buy">立即抢购</a>--%>
            <%--</li>--%>

        </ul>
    </div>
    <form action="miaosha.do" id="changepage">
        <%
            if(request.getAttribute("temp")!=null){
        %>
        <div class="sk_page">
            <span class="page_num">
                <a href="miaosha.do?pageno=${pageindex-1}&searchsome=${temp}" class="pn-prev">&lt;&lt; 上一页</a>
                <c:forEach begin="1" end="${totalPages}" step="1" varStatus="s">
                    <%--<a class="yema" href="pagingBBS.do?pageno=${s.count}">--%>
                    <%--<button>${s.count}</button>--%>
                    <%--</a>--%>
                    <c:if test="${s.count == pageindex}">
                        <a href="miaosha.do?pageno=${s.count}&searchsome=${temp}" style="border-color: red">${s.count}</a>
                    </c:if>
                    <c:if test="${s.count != pageindex}">
                        <a href="miaosha.do?pageno=${s.count}&searchsome=${temp}">${s.count}</a>
                    </c:if>
                    <%--<a href="miaosha.do?pageno=${s.count}">${s.count}</a>--%>
                </c:forEach>
                <a href="#" class="dotted">...</a>
                <a href="miaosha.do?pageno=${pageindex+1}&searchsome=${temp}" class="pn-next">下一页&gt;&gt;</a>
            </span>
            <input type="hidden" name="searchsome" value="${temp}">
            <span class="page_skip">
                共${totalPages}页 到第
                <input type="text" name="pageno"> 页
                <button onclick="document.getElementById('changepage').submit()">确定</button>
                <%--<input type="text"> 页--%>
                <%--<button>确定</button>--%>
            </span>
        </div>
            <%
            }else{
            %>
        <div class="sk_page">
            <span class="page_num">
                <a href="miaosha.do?pageno=${pageindex-1}" class="pn-prev">&lt;&lt; 上一页</a>
                <c:forEach begin="1" end="${totalPages}" step="1" varStatus="s">
                    <%--<a class="yema" href="pagingBBS.do?pageno=${s.count}">--%>
                    <%--<button>${s.count}</button>--%>
                    <%--</a>--%>
                    <c:if test="${s.count == pageindex}">
                        <a href="miaosha.do?pageno=${s.count}" style="border-color: red">${s.count}</a>
                    </c:if>
                    <c:if test="${s.count != pageindex}">
                        <a href="miaosha.do?pageno=${s.count}">${s.count}</a>
                    </c:if>
                    <%--<a href="miaosha.do?pageno=${s.count}">${s.count}</a>--%>
                </c:forEach>
                <a href="#" class="dotted">...</a>
                <a href="miaosha.do?pageno=${pageindex+1}" class="pn-next">下一页&gt;&gt;</a>
            </span>
            <span class="page_skip">
                共${totalPages}页 到第
                <input type="text" name="pageno"> 页
                <button onclick="document.getElementById('changepage').submit()">确定</button>
                <%--<input type="text"> 页--%>
                <%--<button>确定</button>--%>
            </span>
        </div>
        <%
            }
        %>

    </form>

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
    var yishous = document.getElementsByClassName("yishou");
    var bar_ins=document.getElementsByClassName("bar_in");
    function getrandom() {
        return Math.floor(Math.random()*101);
    }
    for(let i=0;i<yishous.length;i++){
        let temp=getrandom();
        yishous[i].innerHTML=temp.toString()+"%";
        bar_ins[i].style.width=(100-temp).toString()+"%";
        console.log(getrandom());
    }
</script>
</html>
