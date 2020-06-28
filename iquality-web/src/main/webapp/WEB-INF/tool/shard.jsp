<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%
    String path = request.getContextPath();
    String serverPath = request.getScheme() + "://" + request.getServerName();
    String basePath = serverPath + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>Shard Tool</title>

    <link href="/ivory/static/AdminEx/css/style.css" rel="stylesheet">
    <link href="/ivory/static/AdminEx/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="/ivory/static/AdminEx/js/html5shiv.js"></script>
    <script src="/ivory/static/AdminEx/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="login-body">

<div class="container">

    <form class="form-signin" method="post" action="${pageContext.request.contextPath}/tool/calShard" enctype="multipart/form-data">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">Welcome to Ivory</h1>
        </div>
        <h4 id="myModalLabel" align="center">分片计算</h4>
        <div class="login-wrap">
            input: <br>
            <input type="text" class="form-control" placeholder="key" name="key" id="key" value="${shardToolInfo.key}">
            <input type="text" class="form-control" placeholder="dbNum" name="dbNum" id="dbNum" value="${shardToolInfo.dbNum}">
            <input type="text" class="form-control" placeholder="tableNum" name="tableNum" id="tableNum" value="${shardToolInfo.tableNum}">

            output: <br>
            <input type="text" class="form-control" placeholder="dbNumRst" name="dbNumRst" id="dbNumRst" value="${shardToolInfo.dbNumRst}">
            <input type="text" class="form-control" placeholder="tableNumRst" name="tableNumRst" id="tableNumRst" value="${shardToolInfo.tableNumRst}">

            <button class="btn btn-lg btn-login btn-block" type="submit">
                <i class="fa fa-check"></i>
            </button>
        </div>
    </form>

</div>



<!-- Placed js at the end of the document so the pages load faster -->

<!-- Placed js at the end of the document so the pages load faster -->
<script src="/ivory/static/AdminEx/js/jquery-1.10.2.min.js"></script>
<script src="/ivory/static/AdminEx/js/bootstrap.min.js"></script>
<script src="/ivory/static/AdminEx/js/modernizr.min.js"></script>

</body>
</html>
