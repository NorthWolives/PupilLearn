<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="shortcut icon" href="icon.ico" type="image/x-icon" />
    <title>小天才算数学习网</title>
	<!-- bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
      body {
      		  background:url(img/bg.jpg) no-repeat;
      		  background-size: 100%;
            }
      body, h1,h2,h3,h4,h5,p {
              font-family: "微软雅黑";
            }
      .jumbotron {
      		  color: #EAB9B9;
      		  background-color:transparent;
      		  margin: 100px 0 0 180px;
      		  float: left;
      		}
      .navbar {
      		  background-color:transparent;
              border: 0px;
            }
    </style>
  </head>
  <body>
        <jsp:include page="header.jsp" />
    
	    <div class="jumbotron">
	      <div class="container">
			  <h1>加减乘除，从未如此简单</h1>
			  <br/><br/>
			  <h4>● 个性化随机题库，哪里不会练哪里</h4>
			  <h4>● 对接真实考试试题，练习卓有成效</h4>
			  <h4>● 寓教于乐，唤醒孩子心中洪荒之力</h4>
			  <br/><br/>
			  <p><a class="btn btn-primary btn-lg">开始学习</a></p>
		  </div>
		</div>
  </body>
</html>
