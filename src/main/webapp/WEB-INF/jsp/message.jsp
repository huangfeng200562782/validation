<%@page import="java.awt.event.ItemEvent"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	System.out.println("Login:" + basePath);
%>
<c:set var="basePath" value="<%=basePath%>" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Missbe-Message</title>
<!-- Loading Bootstrap -->
<link href="${basePath }static/dist/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" style="margin-top:60px;">
		<div class="row clearfix">
			<div class="col-md-6 column col-md-offset-3">			
				
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion" class="btn btn-block btn-lg btn-success"
								href="#collapseOne">信息核对确认 </a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse alert-infocollapse in">
						<div class="panel-body">请你核对你提交的信息，如果有错误请及时反映相关情况</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-6 column col-md-offset-3">
				<table class="table table-hover table-bordered ">
					<tbody>
						<c:if test="${null != requestScope.list }">
							<c:forEach var="item" items="${requestScope.list }" step="1"
								varStatus="var">
								<tr>
									<td class="text-center text-info">${item  }</td>
								<tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>