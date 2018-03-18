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

<div class="sendmessagediv" style="margin: 0 auto">


    <button type="button" onclick="$('#sendmessageModal').modal('show')" style="margin-left: 300px;">发布信息</button>

    <table class="table table-bordered table-hover" style="width: 60%;margin: 0 auto">

        <caption class="h4 text-center text-info">已信息发布</caption>
        <thead>
        <tr>
            <th class="text-center">id</th>
            <th class="text-center">标题</th>
            <th class="text-center">状态</th>
            <th class="text-center">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr v-for="message in sendmessages" class="text-center">
            <td>{{message.mid}}</td>
            <td>{{message.mtitle}}</td>
            <td>{{message.mcotent}}</td>
            <td>
                <button type="button" v-on:click="looksendmessage(message)">查看详情</button>
                <button type="button" v-on:click="delsendmessage(message.mid)">删除</button>
            </td>
        </tr>
        </tbody>
    </table>　





    <!--增加模态框 -->
    <div class="modal fade" id="sendmessageModal" style="margin: 0 auto">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- 模态框头部 -->
                <div class="modal-header">
                    <h4 class="modal-title">{{ titleName }}</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <form id="sendmessagefrom" method="post">
                    <!-- 模态框主体 -->
                    <div class="modal-body">

                        标题 <input type="text" style="width: 90%;" name="mtitle"  ><br/><br/>
                        内容<textarea style="width: 90%;height:20%;" name="mcotent"  ></textarea><br/><br/>
                    </div>
                </form>
                <!-- 模态框底部 -->
                <div class="modal-footer">
                    <button type="button"  v-on:click="addsendmessage()">确认发送</button>
                </div>

            </div>
        </div>
    </div>



         <!--查看详情 -->
         <div class="modal fade" id="sendDataModal" style="margin: 0 auto">
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
                             标题  <input style="width: 90%;" type="text" name="mtitle"  v-bind:value="message.mtitle"><br/><br/>
                             内容<textarea style="width: 90%;height:20%;" name="mcotent"  v-bind:value="message.mcotent"></textarea><br/><br/>
                         </div>
                     </form>
                 </div>
             </div>
         </div>




　
</div>





<script>
    // 声明vue对象
    var sendmessagejsp = new Vue({
        el:'.sendmessagediv',
        data:{
            submitUrl:"/getallsendmessage.action",
            message:"",
            sendmessages:[],
            titleName:"",
            mId : ""
        },
        methods:{
            getsendmessage:function () {
                var _this = this ;
                _this.submitUrl = "/getallsendmessage.action";
                //获得所有对象
                $.getJSON(_this.submitUrl,function (result , status) {
                    _this._data.sendmessages = result ;
                })
            },
            addsendmessage : function() {
                $.ajax({
                    url:"/sendmessagefrom.action",
                    data:$("#sendmessagefrom").serialize(),
                    dataType:"JSON",
                    type: "POST",
                    success:function (result) {
                        $("#sendDataModal").modal("hide");
                        var _this=this;
                        _this.getsendmessage() ;
                          alert("发布成功");
                    }
                });
            },
            looksendmessage: function (message) {
                this.titleName="信息详情";
                this.message=message;
                $("#sendDataModal").modal("show");
            },
            delsendmessage:function (id) {
                var _this=this;
                $.getJSON("/delsendmessage.action?mid="+id,function (mid , id) {
                    _this.getsendmessage() ;
                })
            }
        },
        created:function() {
            this.getsendmessage() ;
        }
    });
</script>


</body>
</html>