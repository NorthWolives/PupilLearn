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
	    	<div class="row">
			  <div class="col-md-4">
				<div class="list-group">
				  <a href="#one_up" class="list-group-item" data-toggle="tab">一年级（上）：人教版数学期末试卷<span class="badge">1</span></a>
				  <a href="#one_dw" class="list-group-item" data-toggle="tab">一年级（下）：人教版数学期末试卷<span class="badge">1</span></a>
				  <a href="#two_up" class="list-group-item" data-toggle="tab">二年级（上）：人教版数学期末试卷<span class="badge">1</span></a>
				  <a href="#two_dw" class="list-group-item" data-toggle="tab">二年级（下）：人教版数学期末试卷<span class="badge">1</span></a>
				  <a href="#thr_up" class="list-group-item" data-toggle="tab">三年级（上）：人教版数学期末试卷<span class="badge">1</span></a>
				  <a href="#thr_dw" class="list-group-item" data-toggle="tab">三年级（下）：人教版数学期末试卷<span class="badge">1</span></a>
				  <a href="#fou_up" class="list-group-item" data-toggle="tab">四年级（上）：人教版数学期末试卷<span class="badge">1</span></a>
				  <a href="#fou_dw" class="list-group-item" data-toggle="tab">四年级（下）：人教版数学期末试卷<span class="badge">1</span></a>
				  <a href="#fiv_up" class="list-group-item" data-toggle="tab">五年级（上）：人教版数学期末试卷<span class="badge">1</span></a>
				  <a href="#fiv_dw" class="list-group-item" data-toggle="tab">五年级（下）：人教版数学期末试卷<span class="badge">1</span></a>
				</div>
			  </div>
			  
			  <div class="col-md-8">
				  <div class="tab-content">
					  <div id="one_up" class="tab-pane active" >
					    <h3>一年级（上）：人教版数学期末试卷</h3>
					    <p><small>试卷来源：<a target="_blank" href="http://tj.aoshu.com/">奥数网</a></small></p>
					    <hr style="width:100%;margin:10px;"/>
						<img src="img/one/one_1.png" alt="...">
						<img src="img/one/one_2.png" alt="...">
					  </div>
					  <div id="one_dw" class="tab-pane">
					    <h3>一年级（下）：人教版数学期末试卷</h3>
					    <p><small>试卷来源：<a target="_blank" href="http://tj.aoshu.com/">奥数网</a></small></p>
					    <hr style="width:100%;margin:10px;"/>
						<img src="img/one/one_3.png" alt="...">
						<img src="img/one/one_4.png" alt="...">
						<img src="img/one/one_5.png" alt="...">
					  </div>
					  
					  <div id="two_up" class="tab-pane" >
					    <h3>二年级（上）：人教版数学期末试卷</h3>
					    <p><small>试卷来源：<a target="_blank" href="http://tj.aoshu.com/">奥数网</a></small></p>
					    <hr style="width:100%;margin:10px;"/>
						<img src="img/two/two_1.jpg" alt="..."/>
						<img src="img/two/two_2.jpg" alt="..."/>
						<img src="img/two/two_3.jpg" alt="..."/>
					  </div>
					  <div id="two_dw" class="tab-pane">
					    <h3>二年级（下）：人教版数学期末试卷</h3>
					    <p><small>试卷来源：<a target="_blank" href="http://tj.aoshu.com/">奥数网</a></small></p>
					    <hr style="width:100%;margin:10px;"/>
						<img src="img/two/two_4.jpg" alt="...">
						<img src="img/two/two_5.jpg" alt="...">
						<img src="img/two/two_6.jpg" alt="...">
						<img src="img/two/two_7.jpg" alt="...">
					  </div>
					  
					  <div id="thr_up" class="tab-pane" >
					    <h3>三年级（上）：人教版数学期末试卷</h3>
					    <p><small>试卷来源：<a target="_blank" href="http://tj.aoshu.com/">奥数网</a></small></p>
					    <hr style="width:100%;margin:10px;"/>
						<img src="img/three/1.jpeg" alt="..."/>
						<img src="img/three/2.jpeg" alt="..."/>
						<img src="img/three/3.jpeg" alt="..."/>
					  </div>
					  <div id="thr_dw" class="tab-pane">
					    <h3>三年级（下）：人教版数学期末试卷</h3>
					    <p><small>试卷来源：<a target="_blank" href="http://tj.aoshu.com/">奥数网</a></small></p>
					    <hr style="width:100%;margin:10px;"/>
						<img src="img/three/1.jpg" alt="..."/>
						<img src="img/three/2.jpg" alt="..."/>
						<img src="img/three/3.jpg" alt="..."/>
						<img src="img/three/4.jpg" alt="..."/>
					  </div>
					  
					  <div id="fou_up" class="tab-pane" >
					    <h3>四年级（上）：人教版数学期末试卷</h3>
					    <p><small>试卷来源：<a target="_blank" href="http://tj.aoshu.com/">奥数网</a></small></p>
					    <hr style="width:100%;margin:10px;"/>
						<img src="img/four/1.jpeg" alt="..."/>
						<img src="img/four/2.jpeg" alt="..."/>
						<img src="img/four/3.jpeg" alt="..."/>
					  </div>
					  <div id="fou_dw" class="tab-pane">
					    <h3>四年级（下）：人教版数学期末试卷</h3>
					    <p><small>试卷来源：<a target="_blank" href="http://tj.aoshu.com/">奥数网</a></small></p>
					    <hr style="width:100%;margin:10px;"/>
						<img src="img/four/5.jpg" alt="..."/>
						<img src="img/four/6.jpg" alt="..."/>
						<img src="img/four/7.jpg" alt="..."/>
						<img src="img/four/8.jpg" alt="..."/>
						<img src="img/four/9.jpg" alt="..."/>
					  </div>
					  
					  <div id="fiv_up" class="tab-pane" >
					    <h3>五年级（上）：人教版数学期末试卷</h3>
					    <p><small>试卷来源：<a target="_blank" href="http://tj.aoshu.com/">奥数网</a></small></p>
					    <hr style="width:100%;margin:10px;"/>
						<img src="img/five/1.png" alt="..."/>
						<img src="img/five/2.png" alt="..."/>
						<img src="img/five/3.png" alt="..."/>
						<img src="img/five/4.png" alt="..."/>
					  </div>
					  <div id="fiv_dw" class="tab-pane">
					    <h3>五年级（下）：人教版数学期末试卷</h3>
					    <p><small>试卷来源：<a target="_blank" href="http://tj.aoshu.com/">奥数网</a></small></p>
					    <hr style="width:100%;margin:10px;"/>
						<img src="img/five/1.jpg" alt="..."/>
						<img src="img/five/2.jpg" alt="..."/>
						<img src="img/five/3.jpg" alt="..."/>
						<img src="img/five/4.jpg" alt="..."/>
					  </div>
				  </div>
			  </div>
			  
			  <p style="height:100px;"></p>
			  <jsp:include page="/common/footer.jsp" />
			  
			</div>
    	</div>
    	
  </body>
</html>
