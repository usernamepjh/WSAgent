<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/19
  Time: 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <script src="js/vue.js"></script>
    <script src="bootstrap/jquery.min.js"></script>
    <script src="bootstrap/bootstrap.min.js"></script>
</head>
<body>
<body>
<div class="container">
    <hr>
    <button type="button" class="btn btn-primary" v-on:click="addmodalshow">添加</button>
    <table class="table table-bordered table-hover">
        <caption class="h3 text-center text-info">用户列表</caption>
        <thead>
        <tr>
            <th class="text-center">序号</th>
            <th class="text-center">姓名</th>
            <th class="text-center">操作</th>
        </tr>
        </thead>
        <tbody>
        <tr v-for="user in users" class="text-center">
            <td>{{user.uid}}</td>
            <td>{{user.uname}}</td>
            <td>
                <button type="button" v-on:click="deletemodeshow(user.uid)">删除</button>
                <button type="button" v-on:click="updatemodalshow(user.uid)">修改</button>
            </td>
        </tr>
        </tbody>
    </table>

    <!-- 删除模态框 -->
    <div class="modal fade" id="deleteDataModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- 模态框头部 -->
                <div class="modal-header">
                    <h4 class="modal-title">删除数据</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- 模态框主体 -->
                <div class="modal-body">
                    您确定要删除这一条数据吗？
                </div>
                <!-- 模态框底部 -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" v-on:click="deluser">删除</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
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
                <form id="addandupdatefrom" method="post">
                    <!-- 模态框主体 -->
                    <div class="modal-body">
                        <input type="text" name="uname" id="uname" v-bind:value="user.uname">
                    </div>
                </form>
                <!-- 模态框底部 -->
                <div class="modal-footer">
                    <button type="button"  v-on:click="">确定</button>
                    <button type="button"  data-dismiss="modal">取消</button>
                </div>

            </div>
        </div>
    </div>　　　
</div>



</div>



<script>
    // 声明vue对象
    var vm = new Vue({
        el:'.container',
        data:{
            submitUrl:"user/getalluser",
            user:"",
            users:[],
            titleName:"",
            userId : ""
        },
        methods:{
            getAll : function() {
                var _this = this ;
                _this.submitUrl = "user/getalluser";
                //获得所有对象
                $.getJSON(_this.submitUrl,function (result , status) {
                    _this._data.users = result ;
                })
            },
            deluser:function () {
                var _this = this ;
                $.ajax({
                    url:"/user/deleteuser",
                    data:{uid:this.userId},
                    dataType:"JSON",
                    success:function (result){
                            $("#deleteDataModal").modal("hide");

                            _this.getAll() ;
                    }
                });
            },
            getuserbyid:function (id) {
                var _this = this ;
                _this.submitUrl = "/user/getuserbyid" ;
                $.ajax({
                    url:_this.submitUrl,
                    data:{uid:id},
                    dataType:"JSON",
                    success:function (result) {
                        _this.user = result ;

                    }
                });
            },
            deletemodeshow : function (id) {
                this.userId=id;
                $("#deleteDataModal").modal("show");
            },
            //增加
            addmodalshow : function () {
                this.titleName="增加";
                this.submitUrl="/user/adduser";
                $("#DataModal").modal("show");

            },
            //修改
            updatemodalshow : function (id) {
                this.titleName = "修改";
                this.getuserbyid(id);
                this.submitUrl="/user/updateuser?uid="+id;
                $("#DataModal").modal("show");
            },
            addandupdateuser : function () {
                var _this = this ;
                console.info(_this.submitUrl);
                $.ajax({
                    url:_this.submitUrl,
                    data:$("#addandupdatefrom").serialize(),
                    dataType:"JSON",
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
</body>
</html>
