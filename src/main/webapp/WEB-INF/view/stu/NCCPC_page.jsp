<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>党员组织生活（学生端）</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="robots" content="all,follow">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/css/fontastic.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/css/style.default.css"
	id="theme-stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/lib/css/custom.css">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/lib/img/favicon.ico">
	    <style> 
    .abc{ color:#00F} 
    </style> 
</head>
<body>
	<script type="text/javascript">
		var msg = "${message}";
		if (msg == "1") {
			alert('提交成功');
		}
		if (msg == "2") {
			alert('提交失败');
		}
	</script>
	<div class="page">
		<header class="header"> <nav class="navbar">
		<div class="container-fluid">
			<div
				class="navbar-holder d-flex align-items-center justify-content-between">
				<div class="navbar-header">
					<a href="/mis/stu/mainPage"
						class="navbar-brand d-none d-sm-inline-block">
						<div class="brand-text d-none d-lg-inline-block">党员组织生活（学生端）</div>
						<div class="brand-text d-none d-sm-inline-block d-lg-none">
							<strong>党员组织生活（学生端）</strong>
						</div>
					</a> <a id="toggle-btn" href="#" class="menu-btn active"> <span></span><span></span><span></span>
					</a>
				</div>
				<ul
					class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
					<li class="nav-item"><a href="/mis/logout"
						class="nav-link logout"> <span class="d-none d-sm-inline">退出登录</span><i
							class="fa fa-sign-out"></i>
					</a></li>
				</ul>
			</div>
		</div>
		</nav> </header>
		<div class="page-content d-flex align-items-stretch">
			<nav class="side-navbar">
			<div class="sidebar-header d-flex align-items-center">
				<div class="title">
					<p>欢迎您：</p>
					<h1 class="h4">${student_name}</h1>
				</div>
			</div>
			<ul class="list-unstyled">
				<li><a href="#studyCenter" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-list"></i>学习中心
				</a>
					<ul id="studyCenter" class="collapse list-unstyled ">
						<li class="active"><a href="/mis/stu/NCCPC_page">十九大讲话</a></li>
						<li><a href="/mis/stu/material_page">历史学习资料</a></li>
						<li><a href="/mis/stu/member_read_page">党员必读</a></li>
						<li><a href="/mis/stu/test_page">每日竞答</a></li>
					</ul></li>
				<li><a href="#lifeCenter" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-interface-windows"></i>组织生活
				</a>
					<ul id="lifeCenter" class="collapse list-unstyled ">
						<li><a href="/mis/stu/attendence_page">活动签到/请假</a></li>
						<li><a href="/mis/stu/life_record_page">组织生活记录</a></li>
					</ul></li>
				<li><a href="#selfCenter" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-user"></i>个人中心
				</a>
					<ul id="selfCenter" class="collapse list-unstyled ">
						<li><a href="/mis/stu/info_page">个人信息</a></li>
						<li><a href="/mis/stu/apply_page">申请党员</a></li>
						<li><a href="/mis/stu/activity_record_page">活动记录</a></li>
					</ul></li>
			</ul>
			</nav>
			<div class="content-inner">
				<div style="margin: 0px; background-color: white; margin: 0 10px;">
					<blockquote class="layui-elem-quote">
						<div class="cxbottom">
							<center>
								<h1>&ensp;</h1>
							</center>
						</div>
						<div class="panel-body" style="padding-bottom: 0px;">
							<form class="form-horizontal" name="inputForm "
								action="NCCPC_pageFinder" onsubmit="return validateForm()"
								method="post">

								<div>
									<table width="100%" class="table table-hover table-bordered"
										id="Table" data-toggle="table" data-toggle="table"
										data-pagination="true" data-side-pagination="client">
										<tr>
											<th width="12%">推文题目：</th>
											<td width="21%">
												<div class="" id="data_5">
													<div class="input-daterange input-group" id="datepicker">
														<input type="text" placeholder="模糊查询，推文题目的一部分即可"
															value="${study_title_input}" class="form-control"
															style="border-radius: 3px; height: 30px"
															id="study_title_input" name="study_title_input"></input>
													</div>
												</div>
											</td>
										</tr>

									</table>
									<div class="cxbottom">
										<center>
											<button type="submit">查 询</button>
										</center>
									</div>
							</Form>
						</div>
					</blockquote>
					<div id="content" style="width: 100%; height: 533px;">
						<table  style="border: none"  id="Table"
							data-toggle="table" data-toggle="table" data-pagination="true"
							data-side-pagination="client">
							<thead>
								<tr>
									<th style="display: none">编号</th>
									<th style="display: none">推文题目</th>
									<th style="display: none">上线日期</th>
									<th style="display: none">所在栏目</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${pageInfo.list}" var="study_list">
									<tr style="height: auto;">
										<td style="display: none">${study_list.study_id}</td>
										<td
											onclick="window.open('study?study_id=${study_list.study_id }');"><u>${study_list.study_title }</u></td>
										<td>${study_list.study_date}</td>
										<td>${study_list.means}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<center>
						<div class="col-sm-4 offset-sm-5">
							<ul class="pagination">
								<c:if test="${pageInfo.hasPreviousPage}">
									<li class="page-item"><a class="page-link"
										href="/mis/stu/NCCPC_page?pn=${pageInfo.pageNum -1}"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									</a></li>
								</c:if>
								<c:forEach var="pageNum" items="${pageInfo.navigatepageNums}">
									<c:if test="${pageNum == pageInfo.pageNum }">
										<li class="active page-item"><a class="page-link">${pageNum }</a></li>
									</c:if>
									<c:if test="${pageNum != pageInfo.pageNum }">
										<li class="page-item"><a class="page-link"
											href="/mis/stu/NCCPC_page?pn=${pageNum }">${pageNum }</a></li>
									</c:if>
								</c:forEach>
								<c:if test="${pageInfo.hasNextPage}">
									<li class="page-item"><a class="page-link"
										href="/mis/stu/NCCPC_page?pn=${pageInfo.pageNum +1}"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</c:if>
							</ul>
						</div>
					</center>
					<div class="cxbottom">
						<center>
							<h1>&ensp;</h1>
							<h1>&ensp;</h1>
						</center>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/jquery/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/popper.js/umd/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/jquery.cookie/jquery.cookie.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/chart.js/Chart.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/lib/vendor/jquery-validation/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/lib/js/front.js"></script>
</body>
</html>