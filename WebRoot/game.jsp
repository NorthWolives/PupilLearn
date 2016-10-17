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
			<!-- http://h.4399.com/play/163150.htm -->
			<iframe seamless=seamless scrolling=no frameborder=0 height="600px" width="100%" src="http://h.4399.com/play/163150.htm"></iframe>
    	</div>
	    
  </body>
</html>
