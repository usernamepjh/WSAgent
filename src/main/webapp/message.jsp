<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/19
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <script src="js/vue.js"></script>
    <script src="bootstrap/jquery.min.js"></script>
    <script src="bootstrap/bootstrap.min.js"></script>
    
</head>


<body>

<div style="margin-bottom: 35px;">
    <jsp:include page="ce.jsp"></jsp:include>
</div>

<div class="messagediv">
    <div>
    <hr>
    <%--<button type="button" class="btn btn-primary" v-on:click="addmodalshow">添加</button>--%>
    <table class="table table-bordered table-hover" style="width: 60%;margin: 0 auto">
        <caption class="h3 text-center text-info">用户列表</caption>
        <thead>
        <tr>
            <th class="text-center">id</th>
            <th class="text-center">姓名</th>
            <th class="text-center">真实姓名</th>
            <th class="text-center">标题</th>
            <th class="text-center">状态</th>
            <th class="text-center">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr v-for="message in messages" class="text-center">
            <td>{{message.mid}}</td>
            <td>{{message.agent.aname}}</td>
            <td>{{message.mtitle}}</td>
            <td>{{message.mcotent}}</td>
            <td v-if="message.mstate==0">
                待审核
            </td>
            <td v-else-if="message.mstate==1">
                 已通过
            </td>
            <td v-else-if="message.mstate==2">
                已驳回
            </td>
            <td>
                <button type="button" v-on:click="lookmessage(message)">查看详情</button>
            </td>
        </tr>
        </tbody>
    </table>　
    </div>
    <!--增加修改模态框 -->
    <div class="modal fade" id="DataModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- 模态框头部 -->
                <div class="modal-header">
                    <h4 class="modal-title">{{ titleName }}</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <form id="viamessagefrom" method="post">
                    <!-- 模态框主体 -->
                    <div class="modal-body">
                        <input  type="text"  name="mid" id="mid"  style="display: none" v-bind:value="message.mid">
                      标题  <input type="text" name="mtitle" id="mtitle" v-bind:value="message.mtitle"><br/><br/>
                      内容<textarea name="mcotent" id="mcotent" v-bind:value="message.mcotent"></textarea><br/><br/>
                      驳回理由<input type="text" name="mreason" id="mreason" v-bind:value="message.mreason"><br/><br/>
                    </div>
                </form>
                <!-- 模态框底部 -->
                <div class="modal-footer">
                    <button type="button"  v-on:click="viamessage()">通过</button>
                    <button type="button"  v-on:click="downmessage()">驳回</button>
                </div>
            </div>
        </div>
    </div>

    　
</div>





<script>
    // 声明vue对象
    var messagejsp = new Vue({
        el:'.messagediv',
        data:{
            submitUrl:"/getallmessage.action",
            message:"",
            messages:[],
            titleName:"",
            mId : ""
        },
        methods:{
            getAll : function() {
                var _this = this ;
                _this.submitUrl = "/getallmessage.action";
                //获得所有对象
                $.getJSON(_this.submitUrl,function (result , status) {
                    _this._data.messages = result ;
                })
            },
            lookmessage: function (message) {
                this.titleName="代理商站内信详情";
                this.message=message;
                $("#DataModal").modal("show");
            },
            //审核通过
            viamessage : function () {
                var _this = this ;
                $.ajax({
                    url:"/viamessagefrom.action",
                    data:$("#viamessagefrom").serialize(),
                    dataType:"JSON",
                    type: "POST",
                    success:function (result) {
                        _this.getAll() ;
                        $("#DataModal").modal("hide");
                    }
                });
            },
            downmessage :function (message) {
                var _this = this ;
                $.ajax({
                    url:"/downmessagefrom.action",
                    data:$("#viamessagefrom").serialize(),
                    dataType:"JSON",
                    type: "POST",
                    success:function (result) {
                        _this.getAll() ;
                        $("#DataModal").modal("hide");
                    }
                });
            }
        },
        created:function() {
            this.getAll() ;
        }
    });
</script>


</body>
</html>