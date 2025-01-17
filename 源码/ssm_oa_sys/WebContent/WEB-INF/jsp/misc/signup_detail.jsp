<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="./misc_head.jsp"%>
<title>注册-noa</title>
</head>
<body class="simple-page">

	<div class="simple-page-wrap">
		<div class="simple-page-logo">
			<a href="#">
				<span><i class="fa fa-gg"></i></span>
				<span>员工OA系统</span>
			</a>
		</div><!-- logo -->
		
<div class="simple-page-form" id="signup-form">
	<h4 class="form-title m-b-xl text-center">完善性息</h4>
	<form action="signup2" method="post" enctype="multipart/form-data">
		<input type="hidden" name="username" value="${employee.username}">
		<input type="hidden" name="password" value="${employee.password}">

		<!-- 姓名 -->
		<div class="form-group">
			<input id="sign-up-name" name="name" type="text" class="form-control" placeholder="真实姓名">
		</div>
		<!-- 性别 -->
		<div class="form-group">
			<div class="col-xs-3">
				<div class="radio radio-danger">
					<input name="sex" type="radio" id="checkbox-demo-3" checked="checked" value="1"><label>男</label></input>
				</div>
			</div>
			<div class="col-xs-8">
				<div class="radio radio-danger">
					<input name="sex" type="radio" id="checkbox-demo-3" value="0"><label>女</label></input>
				</div>
			</div>

		</div><!-- .form-group -->
		<!-- 头像 -->
		<div class="form-group">		
				<label for="exampleInputFile" class="control-label col-sm-3">上传头像</label>
				<input type="file" id="exampleInputFile" class="form-control" name="employee_pic">
		</div>
		<!-- 职位 -->
		<div class="form-group">
				<lable for="select" >职位</option>
				<select id="select" name="positionId" class="form-control" data-plugin="select2">
					<c:forEach items="${positionList }" var="position">
						<option value="${position.positionId }">${position.positionName }</option>
					</c:forEach>
				</select>

		</div>

		
		<div class="form-group">
 			<c:if test="${message != null}">
				<div class="form-group">
					<p class="text-danger"><i class="fa fa-warning"></i>  ${message}</p>
				</div>
			</c:if>

		</div>

		<input type="submit" class="btn btn-primary" value="下一步">
	</form>
</div><!-- #login-form -->

<div class="simple-page-footer">
	<p>
		<small>老员工误入 ?</small>
		<a href="login">去登录</a>
	</p>
</div><!-- .simple-page-footer -->


	</div><!-- .simple-page-wrap -->
</body>
</html>