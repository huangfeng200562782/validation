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
<html lang="en">
<head>
<meta charset="utf-8">
<title>Missbe-Validate</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Loading Bootstrap -->
<link
	href="${basePath }static/dist/css/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Loading Flat UI -->
<link href="${basePath }static/dist/css/flat-ui.css" rel="stylesheet">

<link rel="shortcut icon" href="${basePath }static/dist/img/favicon.ico">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="dist/js/vendor/html5shiv.js"></script>
      <script src="dist/js/vendor/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container">
		<!--上面的说明文字--->
		<div class="row clearfix">
			<div class="col-xs-10 column">
				<div class="jumbotron col-xs-offset-2">
					<h2>扫码签到说明</h2>
					<p>你可以选择手机号码或者学号进行扫码签到，请正确输入你所留下的信息。
						当你输入正确的手机号码或者学号，将进行信息确认。确认你的信息是否 正确，如果不正确，请向相关负责人员反映处理。</p>
					<p>Demo测试数据：123456</p>
				</div>
			</div>
		</div>
		<!--进行参数选择，手机号码或者学号验证--->
		<div class="col-xs-10 col-xs-offset-2">
			<div class="row">
				<div class="col-xs-6">
					<select id="switchParam" name="switchParam" data-toggle="select"
						class="form-control select select-primary mrs mbm">
						<option value="phone">手机号码验证֤</option>
						<option value="id">学生学号验证</option>
					</select>
				</div>
			</div>
		</div>
		<!--设置两者之间高度矩离-->
		<div class="col-xs-12" style="margin-top: 20px;"></div>
		<!--输入框的DIV-->
		<div class="col-xs-10 col-xs-offset-2">
			<div class="row">
				<div class="col-xs-6 form-group">
					<input class="form-control typeahead-only" type="text"
						id="inputParam" /> <span
						class="form-control-feedback fui-radio-unchecked"></span>
				</div>
				<div class="col-xs-3 col-xs-offset-0">
					<a id="validate" class="btn btn-block btn-embossed btn-primary">Validate</a>
				</div>
			</div>
		</div>
	</div>
		<!-- /.container -->

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="${basePath }static/dist/js/vendor/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="${basePath }static/dist/js/flat-ui.min.js"></script>

		<script src="${basePath }static/assets/js/application.js"></script>
		<script>
       $("#validate").click(function(){
    	   var swicth=$("#switchParam").val();
    	   var input=$("#inputParam").val();
    	   console.log(swicth+":"+input);    	   
    	   window.location.href="validate.action?switchParam="+swicth+"&inputParam="+input;
       });
    </script>
</body>
</html>