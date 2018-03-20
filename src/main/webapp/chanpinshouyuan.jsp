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
<div style="margin-bottom: 35px;">
	<jsp:include page="ce.jsp"></jsp:include>
</div>

<div  style="margin-top:9px;background-color:#b0c4de;height: 60px;">
	<div style="padding-top: 15px;margin-left:8px;">
		&nbsp;&nbsp;&nbsp;<select class="" id="selectpickers" >
		<option value="qid">---按ID查询---</option>
		<option value="sid">---按id查询--</option>
	</select>

		&nbsp;&nbsp;&nbsp;关键词：<input type="text" id="sousuo" class="" placeholder="请输入：" style="width:150px; height:32px;">

		<!-- 标准的按钮 -->
		<button type="button" class="btn btn-default glyphicon glyphicon-search" onclick="sousuo()">开始搜索</button>

	</div>
</div>


<div class="quarterdiv">

	<div>
		<table class="table table-bordered table-hover" style="text-align:center;">
			<thead>
			<tr>
				<th class="text-center">季度</th>
				<th class="text-center">返还季度</th>
				<th class="text-center">统计月份</th>
				<th class="text-center">统计时间</th>
				<th class="text-center">季度总额（元）</th>
				<th class="text-center">状态</th>
				<th class="text-center">操作</th>
			</tr>
			</thead>
			<tbody>
			<tr v-for="quarter in quarters" class="text-center" >

				<td>{{quarter.qid}}</td>
				<td>{{quarter.qname}}</td>
				<td>{{quarter.qnum}}</td>
				<td>{{quarter.qtime}}</td>
				<td>{{quarter.qmoney}}</td>
				<td>
					总人数()<br/>(待处理0)
				</td>
				<td>
					<button type="button" v-on:click="lookit(quarter)">查看详情</button>
				</td>
			</tr>
			</tbody>
		</table>
	</div>

</div>




</body>
</html>