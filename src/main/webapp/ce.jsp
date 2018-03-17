<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/1
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="css/text.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="css/form.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="css/buttons.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="screen" title="no title" />

    <link rel="stylesheet" href="css/ui-darkness/jquery-ui-1.8.12.custom.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="css/plugin/jquery.visualize.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="css/plugin/facebox.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="css/plugin/uniform.default.css" type="text/css" media="screen" title="no title"/>
    <link rel="stylesheet" href="css/plugin/dataTables.css" type="text/css" media="screen" title="no title" />
    <link rel="stylesheet" href="css/custom.css" type="text/css" media="screen" title="no title">
    <script src="js/jquery/jquery-1.5.2.min.js"></script>
    <script src="js/jquery/jquery-ui-1.8.12.custom.min.js"></script>
    <script src="js/misc/excanvas.min.js"></script>
    <script src="js/jquery/facebox.js"></script>
    <script src="js/jquery/jquery.visualize.js"></script>
    <script src="js/jquery/jquery.dataTables.min.js"></script>
    <script src="js/jquery/jquery.tablesorter.min.js"></script>
    <script src="js/jquery/jquery.uniform.min.js"></script>
    <script src="js/jquery/jquery.placeholder.min.js"></script>
    <script src="js/widgets.js"></script>
    <script src="js/dashboard.js"></script>
    <script src="bootstrap/jquery.min.js"></script>
    <script src="bootstrap/bootstrap.min.js"></script>
    <script src="js/vue.js"></script>
    <style type="text/css">
        a.metro {
            float:left; margin:4px 16px; font-size:20px; font-weight:bold;
            color:#FFFFFF;background-color:#666666;text-align:center;
            line-height:100px;display:block;width:300px; vertical-align:middle;
        }
        a.metro:hover{
            background-color:#000033; text-decoration:none;
        }
    </style>


</head>
<body>

<div id="cediv">
    <div id="header"  style=" padding: 5px;">
        <div class="content_pad" >
                   <h2  style="color: #dff0d8; margin-left: 180px;margin-top: 5px;">微商代理系统</h2>
              <ul id="nav" >

                <li class="nav_dropdown nav_icon" style="height: 32px;">
                    <a href="javascript:;"><span class="ui-icon ui-icon-wrench"></span>编码管理</a>
                    <div class="nav_menu">
                        <ul  >
                            <li style="height: 32px;"><a href="#">产品创建</a></li>
                            <li style="height: 32px;"><a href="#">产品批次</a></li>
                            <li style="height: 32px;"><a href="#">产品溯源</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav_dropdown nav_icon"  style="height: 32px;">
                    <a href="javascript:;"><span class="ui-icon ui-icon-person"></span>结算管理</a>
                    <div class="nav_menu">
                        <ul>
                            <li style="height: 32px;"><a href="#">基础设置</a></li>
                            <li style="height: 32px;"><a href="#">季度结算</a></li>
                            <li style="height: 32px;"><a href="#">配送费设置</a></li>
                            <li style="height: 32px;"><a href="#">当前积累</a></li>
                            <li style="height: 32px;"><a href="#">代理商排行</a></li>
                            <li style="height: 32px;"><a href="#">店铺排行</a></li>
                            <li style="height: 32px;"><a href="#">消费者排行</a></li>
                            <li style="height: 32px;"><a href="#">代理库存</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav_dropdown nav_icon"  style="height: 32px;">
                    <a href="javascript:;"><span class="ui-icon ui-icon-pencil"></span>站内信管理</a>
                    <div class="nav_menu">
                        <ul>
                            <li style="height: 32px;"><a href="sendmessage.jsp">发送信息</a></li>
                            <li style="height: 32px;"><a href="message.jsp">信息审核</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav_dropdown nav_icon"  style="height: 32px;">
                    <a href="javascript:;"><span class="ui-icon ui-icon-star"></span>店铺管理</a>
                    <div class="nav_menu">
                        <ul>
                            <li style="height: 32px;"><a href="#">商品管理</a></li>
                            <li style="height: 32px;"><a href="#">基本设置</a></li>
                            <li style="height: 32px;"><a href="#">店铺装修</a></li>
                            <li style="height: 32px;"><a href="#">pc商城管理</a></li>
                            <li style="height: 32px;"><a href="#">配送管理</a></li>
                            <li style="height: 32px;"><a href="#">促销打折</a></li>
                            <li style="height: 32px;"><a href="#">入口设置</a></li>
                            <li style="height: 32px;"><a href="#">商品管理</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav_dropdown nav_icon"  style="height: 32px;">
                    <a href="javascript:;"><span class="ui-icon ui-icon-script"></span>财务管理</a>
                    <div class="nav_menu">
                        <ul>
                            <li style="height: 32px;"><a href="#">充值记录</a></li>
                            <li style="height: 32px;"><a href="#">提现申请</a></li>
                            <li style="height: 32px;"><a href="#">下载对账单</a></li>
                            <li style="height: 32px;"><a href="#">待审核提现申请</a></li>
                            <li style="height: 32px;"><a href="#">分销流水</a></li>
                            <li style="height: 32px;"><a href="#">分红流水</a></li>
                            <li style="height: 32px;"><a href="#">区域流水</a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav_current nav_dropdown nav_icon_only"  style="height: 32px;">
                    <a href="javascript:;">&nbsp;</a>
                    <div class="nav_menu">
                        <ul>
                            <li style="height: 32px;"><a href="#">我的工作台</a></li>
                            <li style="height: 32px;"><a href="#">修改密码</a></li>
                            <li style="height: 32px;"><a href="#">退出系统</a></li>
                        </ul>
                    </div> <!-- .menu -->
                </li>
            </ul>
        </div> <!-- .content_pad -->
    </div>
</div> <!-- #header -->



    <script>
        // 声明vue对象
        var ce = new Vue({
            el:'#cediv',
            data:{
                submitUrl:"",
                user:"",
                users:[],
                alabel :"dgh",
                title:""
            },
            methods:{
                getAll : function() {
                    var _this = this ;
                    _this.submitUrl = "";
                    //获得所有对象
                    $.getJSON(_this.submitUrl,function (result , status) {
                        _this._data.users = result ;
                    })
                }
            },
            created:function() {
                this.getAll() ;
            }
        });




    </script>




    <%--<div id="content" class="xgrid">--%>

        <%--<div class="x12">--%>

            <%--<h2>正在等待【交施工费】的工单</h2>--%>

            <%--<table class="data display">--%>
                <%--<thead>--%>
                <%--<tr>--%>
                    <%--<th width="120">工单号</th>--%>
                    <%--<th width="60">类型</th>--%>
                    <%--<th width="80">进度</th>--%>
                    <%--<th width="90">当前处理部门</th>--%>
                    <%--<th width="100">最后操作日期</th>--%>
                    <%--<th width="200">用户名称</th>--%>
                    <%--<th></th>--%>
                <%--</tr>--%>
                <%--</thead>--%>
                <%--<tbody>--%>
                <%--<tr class="odd">--%>
                    <%--<td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0001</a></td>--%>
                    <%--<td>新户</td>--%>
                    <%--<td>交施工费</td>--%>
                    <%--<td>财务室</td>--%>
                    <%--<td>2014-02-18</td>--%>
                    <%--<td>许三多</td>--%>
                    <%--<td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__payForm.html';"><span></span>处理</button></td>--%>
                <%--</tr>--%>
                <%--<tr class="even">--%>
                    <%--<td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140117-0002</a></td>--%>
                    <%--<td>分户</td>--%>
                    <%--<td>交施工费</td>--%>
                    <%--<td>财务室</td>--%>
                    <%--<td>2014-02-18</td>--%>
                    <%--<td>许四多</td>--%>
                    <%--<td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__payForm.html';"><span></span>处理</button></td>--%>
                <%--</tr>--%>
                <%--<tr class="odd">--%>
                    <%--<td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0003</a></td>--%>
                    <%--<td>新户</td>--%>
                    <%--<td>交施工费</td>--%>
                    <%--<td>财务室</td>--%>
                    <%--<td>2014-02-18</td>--%>
                    <%--<td>许五多</td>--%>
                    <%--<td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__payForm.html';"><span></span>处理</button></td>--%>
                <%--</tr>--%>
                <%--<tr class="even">--%>
                    <%--<td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0004</a></td>--%>
                    <%--<td>分户</td>--%>
                    <%--<td>交施工费</td>--%>
                    <%--<td>财务室</td>--%>
                    <%--<td>2014-02-18</td>--%>
                    <%--<td>中国农业银行解放路支行</td>--%>
                    <%--<td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__payForm.html';"><span></span>处理</button></td>--%>
                <%--</tr>--%>
                <%--<tr class="odd">--%>
                    <%--<td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0005</a></td>--%>
                    <%--<td>换表</td>--%>
                    <%--<td>交施工费</td>--%>
                    <%--<td>财务室</td>--%>
                    <%--<td>2014-02-18</td>--%>
                    <%--<td>中国联通广东路营业厅</td>--%>
                    <%--<td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__payForm.html';"><span></span>处理</button></td>--%>
                <%--</tr>--%>
                <%--<tr class="even">--%>
                    <%--<td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0006</a></td>--%>
                    <%--<td>换表</td>--%>
                    <%--<td>交施工费</td>--%>
                    <%--<td>财务室</td>--%>
                    <%--<td>2014-02-18</td>--%>
                    <%--<td>许八多</td>--%>
                    <%--<td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__payForm.html';"><span></span>处理</button></td>--%>
                <%--</tr>--%>
                <%--<tr class="odd">--%>
                    <%--<td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0007</a></td>--%>
                    <%--<td>分户</td>--%>
                    <%--<td>交施工费</td>--%>
                    <%--<td>财务室</td>--%>
                    <%--<td>2014-02-18</td>--%>
                    <%--<td>许蛮多</td>--%>
                    <%--<td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__payForm.html';"><span></span>处理</button></td>--%>
                <%--</tr>--%>
                <%--<tr class="even">--%>
                    <%--<td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0008</a></td>--%>
                    <%--<td>换表</td>--%>
                    <%--<td>交施工费</td>--%>
                    <%--<td>财务室</td>--%>
                    <%--<td>2014-02-18</td>--%>
                    <%--<td>新多国际商务大厦</td>--%>
                    <%--<td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__payForm.html';"><span></span>处理</button></td>--%>
                <%--</tr>--%>
                <%--<tr class="odd">--%>
                    <%--<td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0009</a></td>--%>
                    <%--<td>新户</td>--%>
                    <%--<td>交施工费</td>--%>
                    <%--<td>财务室</td>--%>
                    <%--<td>2014-02-18</td>--%>
                    <%--<td>许钱多</td>--%>
                    <%--<td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__payForm.html';"><span></span>处理</button></td>--%>
                <%--</tr>--%>
                <%--<tr class="even">--%>
                    <%--<td><a href="../page/be_orderInfo.html?id=B1-20140105-0001" target="orderInfo">B1-20140105-0010</a></td>--%>
                    <%--<td>换表</td>--%>
                    <%--<td>交施工费</td>--%>
                    <%--<td>财务室</td>--%>
                    <%--<td>2014-02-18</td>--%>
                    <%--<td>许翔多</td>--%>
                    <%--<td><button class="btn-icon btn-small btn-blue btn-check" onClick="location.href = 'be__payForm.html';"><span></span>处理</button></td>--%>
                <%--</tr>--%>
                <%--</tbody>--%>
            <%--</table>--%>
            <%--<div class="page">--%>
                <%--<a href="#">第一页</a>--%>
                <%--<a href="#">上一页</a>--%>
                <%--<input class="pageIndex" value="1"/> / <input class="pageCount" readonly="readonly" value="98765" />--%>
                <%--<a href="#">下一页</a>--%>
                <%--<a href="#">第未页</a>--%>
            <%--</div>--%>

        <%--</div> <!-- .x12 -->--%>

    <%--</div> <!-- #content -->--%>



</div> <!-- #cediv -->


</body>
</html>