<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="shortcut icon" href="icon.ico" type="image/x-icon" />
    <title>小天才算术学习网</title>
	<!-- bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
      body {
      		padding-top: 80px;
      }
      body, h1,h2,h3,h4,h5,p {
            font-family: "微软雅黑";
      }
      .subject {
      		height:400px;
      }
    </style>
    <script type="text/javascript">
	    $(document).ready(function(e) {
	    	var myDate = new Date();
		    $('#data_time').html("数据更新时间："+myDate.getFullYear()+"年"
		    		+myDate.getMonth()+"月"+myDate.getDate()+"日"+myDate.getHours()+"时"+myDate.getMinutes()+"分");
		});
    </script>
  </head>
  <body>
        <jsp:include page="header.jsp" />
        
    	<div class="container">
    	    <!-- 进度条显示 -->
	    	<!-- <div class="progress progress-striped active">
			  <div class="progress-bar progress-bar-success" style="width: 100%"></div>
			</div> -->
			
			<!-- 内容页 -->
	    	<div class="row">
			  <div class="col-md-2">
				<div class="list-group">
					<div class="thumbnail" style="">
					    <img src="img/pupil1.jpg" alt="...">
					    <a id="learn" href="learn.jsp" class="list-group-item active" style="text-align: center;">简单：算术小童</a>
					</div>
					<div class="thumbnail">
					    <img src="img/pupil2.jpg" alt="...">
					    <a id="middle" href="middle.jsp" class="list-group-item" style="text-align: center;">较难：算术神童</a>
					</div>
					<div class="thumbnail">
					    <img src="img/pupil3.jpg" alt="...">
					    <a id="hard" href="hard.jsp" class="list-group-item" style="text-align: center;">困难：算术天才</a>
					</div>
				</div>
			  </div>
			  <div class="col-md-10">
			    <!-- <div class="alert alert-dismissible alert-info">
				    <button type="button" class="close" data-dismiss="alert">&times;</button>
					 你真棒！<a href="#" class="alert-link">万世想</a>同学，再一次见到你很开心！完成300道运算后晋级算术神童！
				</div> -->
				
			    <div class="page-header">
				  <h1>我的排名 <small>厉害了，word哥！</small></h1>
				</div>
				
				<div class="panel panel-default subject">
				  <div class="panel-body subject">
				  	<table class="table table-striped table-hover ">
					  <thead>
					    <tr>
					      <th>名次</th>
					      <th>江湖人称</th>
					      <th>练习时长</th>
					      <th>正确率</th>
					      <th>等级</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr class="warning">
					      <td>1</td>
					      <td>北洋西霸：纪梓潼</td>
					      <td>24小时70分钟</td>
					      <td>100%</td>
					      <td>算术天才</td>
					    </tr>
					    <tr class="danger">
					      <td>2</td>
					      <td>北洋东霸：万世想</td>
					      <td>21小时08分钟</td>
					      <td>100%</td>
					      <td>算术天才</td>
					    </tr>
					    <tr class="warning">
					      <td>3</td>
					      <td>北洋北霸：纪梓潼</td>
					      <td>17小时24分钟</td>
					      <td>91%</td>
					      <td>算术天才</td>
					    </tr>
					    <tr class="warning">
					      <td>4</td>
					      <td>北洋南霸：滕飞</td>
					      <td>10小时12分钟</td>
					      <td>90%</td>
					      <td>算术天才</td>
					    </tr>
					  </tbody>
					</table>
				  </div>
				</div>
				<p id="data_time"></p>
			  </div>
			</div>
    	</div>
	    
  </body>
</html>
