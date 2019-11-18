<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
</head>
<body>
	<script type="text/javascript">
		var msg = "${message}";
		if (msg == "1") {
			alert('修改成功');
		}
		if (msg == "2") {
			alert('修改失败');
		}
	</script>
	<div class="page">
		<header class="header"> <nav class="navbar">
		<div class="container-fluid">
			<div
				class="navbar-holder d-flex align-items-center justify-content-between">
				<div class="navbar-header">
					<a href="/mis/stu/mainPage" class="navbar-brand d-none d-sm-inline-block">
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
						<li><a href="stu/NCCPC_page">十九大讲话</a></li>
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
				<li class="active"><a href="#selfCenter" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-user"></i>个人中心
				</a>
					<ul id="selfCenter" class="collapse list-unstyled ">
						<li class="active"><a href="/mis/stu/info_page">个人信息</a></li>
						<li><a href="/mis/stu/apply_page">申请党员</a></li>
						<li><a href="/mis/stu/activity_record_page">活动记录</a></li>
					</ul></li>
			</ul>
			</nav>
			<div class="content-inner">
				<div style="width: 100%; heigth: 100%">
					<div class="card">
						<div class="card-body">
							<form class="form-horizontal" name="inputForm"
								action="/mis/stu/updateInfo" onsubmit="return validateForm()"
								method="post">
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">学号</label>
									<div class="col-sm-9">
										<input type="text" disabled=""
											placeholder=${vstudent.student_num } class="form-control">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">姓名</label>
									<div class="col-sm-9">
										<input type="text" disabled=""
											placeholder=${vstudent.student_name } class="form-control">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">所属支部</label>
									<div class="col-sm-9">
										<input type="text" disabled=""
											placeholder=${vstudent.branch_name } class="form-control">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">当前状态</label>
									<div class="col-sm-9">
										<input type="text" disabled=""
											placeholder=${vstudent.student_status } class="form-control">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">当前权限</label>
									<div class="col-sm-9">
										<input type="text" disabled=""
											placeholder=${vstudent.student_permission }
											class="form-control">
									</div>
								</div>
								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">联系电话</label>
									<div class="col-sm-9">
										<input type="text" name="student_tel"
											placeholder=${vstudent.student_tel } class="form-control">
									</div>
								</div>
								<div class="line"></div>
								<div class="form-group row">
									<label class="col-sm-3 form-control-label">电子邮箱</label>
									<div class="col-sm-9">
										<input type="text" name="student_email"
											placeholder=${vstudent.student_email } class="form-control">
									</div>
								</div>
								<div class="line"></div>
								<div class="form-group row">
									<div class="col-sm-4 offset-sm-3">
										<button type="submit" class="btn btn-primary">提交</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function validateForm() {
			var user_phone = document.forms["inputForm"]["student_tel"].value;
			if (user_phone == null || user_phone == "") {
				return true;
			}
			var myreg = /^1(3|4|5|7|8)\d{9}$/;//正则表达式：有效手机号码
			if (!myreg.test(user_phone)) {
				alert("请输入正确联系电话（手机号码）");
				return false;
			}
		}
	</script>
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