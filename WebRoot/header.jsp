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
        <li><a href="learn.jsp">开始学习</a></li>
        <li><a href="rank.jsp">我的排名</a></li>
        <li><a href="game.jsp">最难游戏</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">个人信息 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">修改资料</a></li>
            <li class="divider"></li>
            <li><a href="#">家长监督</a></li>
            <li><a href="#">班级作业</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="趣味游戏">
        </div>
        <button type="submit" class="btn btn-warning">搜索</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">登录</a></li>
        <li><a href="#">注册</a></li>
      </ul>
    </div>
  </div>
</nav>