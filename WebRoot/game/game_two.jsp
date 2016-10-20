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
  </head>
  <body>
        <jsp:include page="/common/header.jsp" />
        
    	<div class="container">
			<!-- 内容页 -->
			<!-- http://h.4399.com/play/177788.htm -->
			<iframe seamless=seamless scrolling=no frameborder=0 height="600px" width="100%" src="http://h.4399.com/play/177788.htm"></iframe>
    	    			  
			<jsp:include page="/common/footer.jsp" />
			  
    	</div>
	    
  </body>
</html>
