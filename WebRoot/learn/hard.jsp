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
	    	$("#result").html("正确结果："+${requestScope.result});
	    }
	    function submit_result() {
	    	var input_value = $("#input").val();
	    	var correct_value = ${requestScope.result};
	    	if (input_value == correct_value) {
	    		alert("完美的计算！");
	    	} else {
	    		alert("结果不正确，再试试吧！");
	    	}
	    	
	    }
    </script>
  </head>
  <body>
        <jsp:include page="/common/header.jsp" />
        
    	<div class="container">
    	    <!-- 进度条显示 -->
	    	<!-- <div class="progress progress-striped active">
			  <div class="progress-bar progress-bar-success" style="width: 100%"></div>
			</div> -->
			
			<!-- 内容页 -->
	    	<div class="row">
			  <div class="col-md-2">
				<jsp:include page="sidebar.jsp" />
			  </div>
			  <div class="col-md-10">
			    <div class="alert alert-dismissible alert-info">
				    <button type="button" class="close" data-dismiss="alert">&times;</button>
				        哈啰！再一次见到你很开心！快和我一起开心算术吧！完成20000道运算后去拼搏奥林匹克竞赛吧！
				</div>
				
			    <div class="page-header">
				  <h1>算术天才训练营 <small>困难模式：7个数字，20以内分数整数混合四则运算</small></h1>
				</div>
				
				<div class="panel panel-default subject">
				  <div class="panel-body subject" style="text-align: center;">
				    <!-- <h1>$$1 + 2 - 3 \times 4 \div 5 () = \frac{1}{2}$$</h1> -->
				    <c:if test="${empty requestScope.formular}">
				        <a href="generate_hard.do" class="btn btn-primary btn-lg" style="margin-top:100px;width:200px;">开始练习</a>
				    </c:if>
				    <c:if test="${not empty requestScope.formular}">
				        <h1 style="margin-top:100px;">计算：$ ${requestScope.formular} $</h1>
				        <p style="height:5px;"></p>
				        <div class="form-group">
						  <div class="input-group" style="width:200px;margin:0 auto;">
						    <input id="input" type="text" class="form-control">
						    <span class="input-group-btn">
						      <button class="btn btn-success" onclick="submit_result()" type="button">提交答案</button>
						    </span>
						  </div>
						</div>
				        <h4 id="result"></h4>
					</c:if>
				  </div>
				</div>
				<ul class="pager" style="font-size: 18px;">
				  <li class="previous"><a href="generate_hard.do">再来一题 &rarr;</a></li>
				  <li class="next"><a onclick="view_result()"> 正确答案</a></li>
				</ul>
			  </div>
			  			  
			  <jsp:include page="/common/footer.jsp" />
			  
			</div>
    	</div>
	<script type="text/javascript">
	    $(document).ready(function(e) {
		    $('#hard').addClass("active");
		});
    </script>
  </body>
</html>
