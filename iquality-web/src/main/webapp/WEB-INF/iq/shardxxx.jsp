<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%
    String path = request.getContextPath();
    String serverPath = request.getScheme() + "://" + request.getServerName();
    String basePath = serverPath + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset="utf-8">
    <title>工具</title>
</head>

<!-- Bootstrap Core CSS -->
<link href="/static/AdminEx/js/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet" />


<!-- jQuery -->
<script src="/static/AdminEx/js/jquery-1.10.2.min.js"></script>
<script src="/static/AdminEx/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="/static/AdminEx/js/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>

<script>

    function p_update() {
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/tool/calShard",
            data: {
                key:$("#key").val(),
                dbNum:$("#dbNum").val(),
                tableNum:$("#tableNum").val()
            },
            async:true,
            dataType: "json",
            success: function(data){
                if(data.code=="200"){
                    alert("计算成功:" + data.rst);
                    parent.location.reload(); //刷新父级页面
                }else{
                    alert(data.message);
                }
            },
            error:function(result){
                alert(result.message);
            }
        });

    }

</script>
<body>
<br>
<br>
<div style="margin-left: 30px;">
    <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">分片计算</h4>
    </div>
    <div style="width: 101%;margin-left:15px;">

        <form method="post" action="${pageContext.request.contextPath}/tool/calShard" enctype="multipart/form-data" >

            <div class="form-group">
                <label for="key">key:</label>
                <input type="text" name="key" class="form-control" id="key" >
            </div>
            <div class="form-group">
                <label for="dbNum">dbNum:</label>
                <input type="text" name="dbNum" class="form-control" id="dbNum" >
            </div>
            <div class="form-group">
                <label for="tableNum">tableNum:</label>
                <input type="text" name="tableNum" class="form-control" id="tableNum" >
            </div>

            <input type="submit" class="btn btn-default" value="计算"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button"   class="btn btn-default" onclick="javascript:history.back(-1);" value="返回">
        </form>
    </div>
</div>
</body>
</html>
