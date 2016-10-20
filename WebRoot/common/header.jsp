<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
      <a class="navbar-brand" href="#">小天才算术学习</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">首页<span class="sr-only">(current)</span></a></li>
        <li><a href="learn/easy.jsp">随机题库</a></li>
        <li><a href="paper/paper.jsp">真实考题</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">趣味游戏<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="game/game_one.jsp">数字存活</a></li>
            <li class="divider"></li>
            <li><a href="game/game_two.jsp">2048</a></li>
          </ul>
        </li>
        <li><a target="_blank" href="https://shixiangwan.github.io/">联系我们</a></li>
        <!-- <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">更多内容<span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li class="divider"></li>
            <li><a target="_blank" href="https://shixiangwan.github.io/">联系我们</a></li>
            <li class="divider"></li>
            <li><a href="rank.jsp">我的排名</a></li>
          </ul>
        </li> -->
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li>
        <a href="#">分享至QQ空间</a>
        <!-- <a href="javascript:void(0);" onclick="window.open('http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+encodeURIComponent(document.location.href));return false;" title="分享到QQ空间"><img src="http://qzonestyle.gtimg.cn/ac/qzone_v5/app/app_share/qz_logo.png" alt="分享到QQ空间" /></a>
         -->
        </li>
      </ul>
    </div>
  </div>
</nav>