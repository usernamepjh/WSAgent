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

<div class="sendmessagediv">

     <button type="button" onclick="$('#sendmessageModal').modal('show')"></button>




    <!--增加修改模态框 -->
    <div class="modal fade" id="sendmessageModal">
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

                        标题  <input type="text" name="mtitle" id="mtitle" ><br/><br/>
                        内容<textarea name="mcotent" id="mcotent" ></textarea><br/><br/>
                    </div>
                </form>
                <!-- 模态框底部 -->
                <div class="modal-footer">
                    <button type="button"  v-on:click="addsendmessage()">确认发送</button>
                </div>

            </div>
        </div>
    </div>







    　
</div>





<script>
    // 声明vue对象
    var sendmessagejsp = new Vue({
        el:'.sendmessagediv',
        data:{
            submitUrl:"/sendmessagefrom.action",
        },
        methods:{
            addsendmessage : function() {

                $.ajax({
                    url:"/sendmessagefrom.action",
                    data:$("#sendmessagefrom").serialize(),
                    dataType:"JSON",
                    type: "POST",
                    success:function (result) {

                        //$("#DataModal").modal("hide");
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