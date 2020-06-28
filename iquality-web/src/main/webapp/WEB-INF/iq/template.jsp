<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="keywords" content="admin, dashboard, bootstrap, template, flat, modern, theme, responsive, fluid, retina, backend, html5, css, css3">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">

    <title>工具管理</title>

    <link href="/static/AdminEx/css/bootstrap.css" rel="stylesheet">
    <link href="/static/AdminEx/js/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet" />

    <link href="/static/AdminEx/js/iCheck/skins/minimal/minimal.css" rel="stylesheet">
    <link href="/static/AdminEx/js/iCheck/skins/square/square.css" rel="stylesheet">
    <link href="/static/AdminEx/js/iCheck/skins/square/red.css" rel="stylesheet">
    <link href="/static/AdminEx/js/iCheck/skins/square/blue.css" rel="stylesheet">
    <link href="/static/AdminEx/css/clndr.css" rel="stylesheet">
    <link href="/static/AdminEx/js/morris-chart/morris.css" rel="stylesheet">

    <link href="/static/AdminEx/css/style.css" rel="stylesheet">
    <link href="/static/AdminEx/css/style-responsive.css" rel="stylesheet">

    <script src="/static/AdminEx/js/html5shiv.js"></script>
    <script src="/static/AdminEx/js/respond.min.js"></script>
    <!-- Placed js at the end of the document so the pages load faster -->
    <script src="/static/AdminEx/js/jquery-1.10.2.min.js"></script>
    <script src="/static/AdminEx/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="/static/AdminEx/js/jquery-migrate-1.2.1.min.js"></script>

    <script src="/static/AdminEx/js/bootstrap.min.js"></script>
    <script src="/static/AdminEx/js/modernizr.min.js"></script>
    <script src="/static/AdminEx/js/bootstrap.js"></script>
    <script src="/static/AdminEx/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
    <script src="/static/AdminEx/js/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>

</head>

<body class="sticky-header">

<section>
    <div class="left-side sticky-left-side">
        <div class="logo">
            <a style="margin-top: 2px;" href="">工具管理</a>
        </div>
        <div class="left-side-inner">
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li class="menu-list"><a href=""><i class="fa fa-laptop"></i> <span>基础工具管理</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="/tool/shard" target="mainframe"> Shard工具</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-content" >
        <div class="header-section">
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
        </div>

        <div class="wrapper">
            <div class="row">
                <jsp:include page="${base.content}.jsp" flush="true"/>
                </div>
        </div>
        <footer>
            &nbsp;&nbsp;&nbsp;2020 &copy; 版权所有 by <a href="" target="_blank">ddyin</a>
        </footer>
    </div>
</section>


<!--easy pie chart-->
<script src="/static/AdminEx/js/easypiechart/jquery.easypiechart.js"></script>
<script src="/static/AdminEx/js/easypiechart/easypiechart-init.js"></script>

<!--Sparkline Chart-->
<script src="/static/AdminEx/js/sparkline/jquery.sparkline.js"></script>
<script src="/static/AdminEx/js/sparkline/sparkline-init.js"></script>

<!--icheck -->
<script src="/static/AdminEx/js/iCheck/jquery.icheck.js"></script>
<script src="/static/AdminEx/js/icheck-init.js"></script>

<!-- jQuery Flot Chart-->
<script src="/static/AdminEx/js/flot-chart/jquery.flot.js"></script>
<script src="/static/AdminEx/js/flot-chart/jquery.flot.tooltip.js"></script>
<script src="/static/AdminEx/js/flot-chart/jquery.flot.resize.js"></script>


<!--Morris Chart-->
<script src="/static/AdminEx/js/morris-chart/morris.init.js"></script>
<script src="/static/AdminEx/js/morris-chart/raphael-min.js"></script>

<!--Calendar-->
<script src="/static/AdminEx/js/calendar/clndr.js"></script>
<script src="/static/AdminEx/js/calendar/evnt.calendar.init.js"></script>
<script src="/static/AdminEx/js/calendar/moment-2.2.1.js"></script>
<!--common scripts for all pages-->
<script src="/static/AdminEx/js/scripts.js"></script>

<!--Dashboard Charts-->
<script src="/static/AdminEx/js/dashboard-chart-init.js"></script>

</body>
</html>
