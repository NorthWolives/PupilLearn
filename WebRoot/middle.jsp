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
    <script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML"></script>
    <script type="text/x-mathjax-config">
	    MathJax.Hub.Config({
            tex2jax: {
                inlineMath: [['$','$'], ['\\(','\\)']],
                processEscapes: true
            }
        });
	</script>
    <style type="text/css">
      body {
      		padding-top: 80px;
      }
      body, h1,h2,h3,h4,h5,p {
            font-family: "微软雅黑";
      }
      .subject {
      		height:350px;
      }
    </style>
    <script type="text/javascript">
	    function view_result() {
	    	alert("正确结果： "+${requestScope.result});
	    	$("#result").removeAttr("display");
	    }
	    function submit_result() {
	    	alert("敬待完善");
	    }
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
					    <a id="learn" href="learn.jsp" class="list-group-item" style="text-align: center;">简单：算术小童</a>
					</div>
					<div class="thumbnail">
					    <img src="img/pupil2.jpg" alt="...">
					    <a id="middle" href="middle.jsp" class="list-group-item active" style="text-align: center;">较难：算术神童</a>
					</div>
					<div class="thumbnail">
					    <img src="img/pupil3.jpg" alt="...">
					    <a id="hard" href="hard.jsp" class="list-group-item" style="text-align: center;">困难：算术天才</a>
					</div>
				</div>
			  </div>
			  
			  <div class="col-md-10">
			    <div class="alert alert-dismissible alert-info">
				    <button type="button" class="close" data-dismiss="alert">&times;</button>
					 你真棒！<a href="#" class="alert-link">万世想</a>同学，再一次见到你很开心！完成5000道运算后晋级算术天才！
				</div>
				
			    <div class="page-header">
				  <h1>算术天才训练营 <small>较难模式：7个数字，20以内加减乘除整数四则运算</small></h1>
				</div>
				
				<div class="panel panel-default subject">
				  <div class="panel-body subject" style="text-align: center;">
				    <c:if test="${empty requestScope.formular}">
				        <a href="generate_middle.do" class="btn btn-primary btn-lg" style="margin-top:100px;width:200px;">开始练习</a>
				    </c:if>
				    <c:if test="${not empty requestScope.formular}">
				        <h1 style="margin-top:100px;">算一算：$ ${requestScope.formular} $</h1>
				        <h1 id="result">正确结果：$ ${requestScope.result} $</h1>
					</c:if>
				  </div>
				</div>
				<ul class="pager" style="font-size: 18px;">
				  <li class="previous"><a href="generate_middle.do">再来一题 &rarr;</a></li>
				  <li class="next"><a onclick="view_result()"> 正确答案</a></li>
				  <li class="next"><a onclick="submit_result()">提交答案</a></li>
				  <!-- <li class="next"><a href="#">清空</a></li> -->
				</ul>
			  </div>
			</div>
    	</div>
	    
  </body>
</html>
