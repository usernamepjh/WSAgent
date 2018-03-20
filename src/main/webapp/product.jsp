<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">

    <script src="bootstrap/jquery.min.js"></script>
    <script src="bootstrap/bootstrap.min.js"></script>
	<script src="js/vue.js"></script>
</head>

<body>
<div class="container">
	<hr>
	<button type="button" class="btn btn-primary" v-on:click="addmodalshow">添加</button>
	<table class="table table-bordered table-hover">
		<caption class="h3 text-center text-info">产品创建</caption>
		<thead>
		<tr>
			<th class="text-center">id</th>
			<th class="text-center">产品名称</th>
			<th class="text-center">商品名称</th>
			<th class="text-center">产品标识</th>
			<th class="text-center">备注</th>
			<th class="text-center">操作</th>
		</tr>
		</thead>
		<tbody>
		<tr v-for="product in products" class="text-center">
			<td>{{product.pid}}</td>
			<td>{{product.pname}}</td>
			<td>{{product.goods.gname}}</td>
			<td>{{product.goods.gloge}}</td>
			<td>{{product.pbz}}</td>
			<td>
				<button type="button" v-on:click="deletemodeshow(product.pid)">删除</button>
				<button type="button" v-on:click="updatemodalshow(product.pid)">修改</button>
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
						<input type="text" name="pname" id="pname" v-bind:value="product.pname">
						<input type="text" name="pbz" id="pbz" v-bind:value="product.pbz">
					</div>
				</form>
				<!-- 模态框底部 -->
				<div class="modal-footer">
					<button type="button"  v-on:click="addandupdateuser">确定</button>
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
            submitUrl:"/select1.action",
            product:"",
            products:[],
            titleName:"",
            productId : ""
        },
        methods:{
            select1 : function() {
                var _this = this ;
                _this.submitUrl = "/select1.action" ;
                //获得所有对象
                $.getJSON(_this.submitUrl,function (result , status) {
                    console.info(result);
                    _this._data.products = result ;
                })
            },
            deluser:function () {
                var _this = this ;
                $.ajax({
                    url:"/delete.action",
                    data:{pid:this.productId},
                    dataType:"JSON",
                    success:function (result){
                        $("#deleteDataModal").modal("hide");
                        _this.select1() ;
                    }
                });
            },
            getuserbyid:function (id) {
                var _this = this ;
                _this.submitUrl = "/getuserbyid.action" ;
                $.ajax({
                    url:_this.submitUrl,
                    data:{pid:id},
                    dataType:"JSON",
                    success:function (result) {
                        _this.product = result ;

                    }
                });
            },
            deletemodeshow : function (id) {
                this.productId=id;
                $("#deleteDataModal").modal("show");
            },
            //增加
            addmodalshow : function () {
                this.titleName="增加";
                this.submitUrl="/addproduct.action";
                $("#DataModal").modal("show");

            },
            //修改
            updatemodalshow : function (id) {
                this.titleName = "修改";
                this.getuserbyid(id);
                this.submitUrl="/updateproduct.action?pid="+id;
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
                        _this.select1() ;
                        $("#DataModal").modal("hide");
                    }
                });
            }
        },
        created:function() {
            this.select1() ;
        }
    });

</script>

</body>
</html>