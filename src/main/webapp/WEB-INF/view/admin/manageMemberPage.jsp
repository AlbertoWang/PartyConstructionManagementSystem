<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
table tr th, td {
	border: 1px solid red;
	text-align: center;
}

table tr th {
	border: 1px solid red;
	text-align: center;
}
</style>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>党员管理系统</title>
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
	var isLogin = "<%=session.getAttribute("isLogin")%>";
	if(isLogin!='1'){
		alert("您好，请先登录！");
		window.location.href='<%=request.getContextPath()%>/';
	};

		var msg = "${message}";
		if (msg == "1") {
			alert('党员信息修改成功');
		}
		if (msg == "2") {
			alert('党员信息修改失败');
		}
	</script>
	<div class="page">
		<header class="header"> <nav class="navbar">
		<div class="container-fluid">
			<div
				class="navbar-holder d-flex align-items-center justify-content-between">
				<div class="navbar-header">
					<a href="/mis/main_page_1"
						class="navbar-brand d-none d-sm-inline-block">
						<div class="brand-text d-none d-lg-inline-block">党员管理系统</div>
						<div class="brand-text d-none d-sm-inline-block d-lg-none">
							<strong>党员管理系统</strong>
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
					<h1 class="h4">${admin_name}</h1>
				</div>
			</div>
			<span class="heading">用户管理</span>
			<ul class="list-unstyled">
				<li><a href="/mis/admin/authorityPage"> <i
						class="icon-list-1"></i>权限管理
				</a></li>
				<li class="active"><a href="#memberManager"
					aria-expanded="false" data-toggle="collapse"> <i
						class="icon-user"></i>成员管理
				</a>
					<ul id="memberManager" class="collapse list-unstyled ">
						<li class="active"><a href="/mis/admin/manageMemberPage">成员信息管理</a></li>
						<li><a href="/mis/admin/updateStatusPage">成员政治面貌管理</a></li>
					</ul></li>
				<li><a href="#branchManager" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-list"></i>支部管理
				</a>
					<ul id="branchManager" class="collapse list-unstyled ">
						<li><a href="/mis/admin/addMemberPage">添加支部成员</a></li>
						<li><a href="/mis/admin/manageBranchPage">支部成员管理</a></li>
					</ul></li>
			</ul>
			<span class="heading">组织生活管理</span>
			<ul class="list-unstyled">
				<li><a href="/mis/admin/addActivityPage"> <i
						class="icon-interface-windows"></i>活动的创建与发布
				</a></li>
				<li><a href="/mis/admin/manageSignInPage"> <i
						class="icon-grid"></i>组织生活签到管理
				</a></li>
			</ul>
			<span class="heading">内容管理</span>
			<ul class="list-unstyled">
				<li><a href="#editStudy" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-presentation"></i>学习中心内容编辑
				</a>
					<ul id="editStudy" class="collapse list-unstyled ">
						<li><a href="/mis/admin/insertStudyPage">发布学习内容</a></li>
						<li><a href="/mis/admin/manageStudyPage">管理学习内容</a></li>
					</ul></li>
				<li><a href="/mis/admin/editCompetitionPage"> <i
						class="icon-padnote"></i>竞答编辑
				</a></li>
				<li><a href="#competitionResult" aria-expanded="false"
					data-toggle="collapse"> <i class="icon-line-chart"></i>竞答结果统计
				</a>
					<ul id="competitionResult" class="collapse list-unstyled ">
						<li><a href="/mis/admin/resultByTestPage">按竞答查询</a></li>
						<li><a href="/mis/admin/resultByStudentPage">按学生查询</a></li>
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
								action="/mis/admin/manageMemberPageFinder" method="post">

								<div class="tableWrap">
									<table width="100%" class="table table-hover table-bordered"
										id="Table" data-toggle="table" data-toggle="table"
										data-pagination="true" data-side-pagination="client">
										<tr>
											<th width="12%">学号：</th>
											<td width="21%">
												<div class="" id="data_5">
													<div class="input-daterange input-group" id="datepicker">
														<input type="text" value="${student_num_input}"
															class="form-control"
															style="border-radius: 3px; height: 30px"
															id="student_num_input" name="student_num_input"></input>
													</div>
												</div>
											</td>
											<th width="12%">政治面貌：</th>
											<td width="21%"><select name="student_status_input"
												id="student_status_input">
													<c:forEach var="ssm" items="${ssm}">
														<option>${ssm.means }</option>
													</c:forEach>
											</select></td>
										</tr>
										<tr>
											<th>姓名：</th>
											<td><input type="text" placeholder="模糊查询，姓名中的一部分即可"
												value="${student_name_input}" class="form-control"
												style="border-radius: 3px; height: 30px"
												id="student_name_input" name="student_name_input"></td>
											<th>所在支部：</th>
											<td><input type="text" placeholder="模糊查询，所在支部名称中的一部分即可"
												value="${branch_name_input}" class="form-control"
												style="border-radius: 3px; height: 30px"
												id="branch_name_input" name="branch_name_input"></td>
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
						<table class="table table-hover table-bordered" id="Table"
							data-toggle="table" data-toggle="table" data-pagination="true"
							data-side-pagination="client">
							<thead>
								<tr>
									<th>学号</th>
									<th>姓名</th>
									<th>性别</th>
									<th>政治面貌</th>
									<th>所在支部</th>
									<th>手机号码</th>
									<th>电子邮箱</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="member_list" items="${pageInfo.list}">
									<tr style="height: auto;">
										<td>${member_list.student_num }</td>
										<td>${member_list.student_name}</td>
										<td>${member_list.student_gender}</td>
										<td>${member_list.student_status}</td>
										<td>${member_list.branch_name}</td>
										<td>${member_list.student_tel}</td>
										<td>${member_list.student_email}</td>
										<td>
											<button class="btn btn-warning btn-sm"
												onclick="updateMemberModal(this)" data-toggle="modal">修改信息</button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
<center>
						<li>共<i class="blue">${pageInfo.total}</i>条记录，当前显示第<i
							class="blue">${pageInfo.pageNum}</i>页， 总<i class="blue">${pageInfo.pages }</i>页
							<c:if
								test="${pageInfo.pages !=1&& pageInfo.pageNum!=0}"><a
							href="${pageContext.request.contextPath}/admin/manageMemberPageFinder?currentPage=1"><button
									class="layui-btn layui-btn-normal  layui-btn-sm">首页</button></a> 
									</c:if> <c:if
								test="${pageInfo.hasPreviousPage && pageInfo.pageNum!=1}">
								<a
									href="${pageContext.request.contextPath}/admin/manageMemberPageFinder?currentPage=${pageInfo.pageNum-1}"><button
										class="layui-btn layui-btn-normal  layui-btn-sm">上一页</button></a>
							</c:if> <c:if test="${pageInfo.hasNextPage && pageInfo.pageNum!=pageInfo.pages }">
								<a
									href="${pageContext.request.contextPath}/admin/manageMemberPageFinder?currentPage=${pageInfo.pageNum+1}"><button
										class="layui-btn layui-btn-normal  layui-btn-sm">下一页</button></a>
							</c:if> <c:if
								test="${pageInfo.pages !=1&& pageInfo.pageNum!=0}"><a
							href="${pageContext.request.contextPath}/admin/manageMemberPageFinder?currentPage=${pageInfo.pages}"><button>
									末页</button></a></c:if> 
						</li>
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
	<div class="modal fade" id="updateMemberModal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">修改成员信息</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form name="updateMemberForm" id="updateMemberForm"
					action="/mis/admin/updateMember" onsubmit="return anotherValidateForm()"
					method="post" class="form-validate">
					<div class="modal-body">
						学&ensp;&ensp;&ensp;&ensp;号：<input id="student_num_check"
							style="border: none;" type="text" name="student_num_check"
							readonly>
					</div>
					<div class="modal-body">
						姓&ensp;&ensp;&ensp;&ensp;名： <input id="student_name_check"
							type="text" name="student_name_check">
					</div>
					<div class="modal-body">
						性&ensp;&ensp;&ensp;&ensp;别： <input id="student_gender_check"
							type="text" name="student_gender_check">
					</div>
					<div class="modal-body">
						政治面貌： <input id="student_status_check" style="border: none;"
							type="text" name="student_status_check" readonly>
					</div>
					<div class="modal-body">
						所在支部： <input id="branch_name_check" style="border: none;"
							type="text" name="branch_name_check" readonly>
					</div>
					<div class="modal-body">
						手机号码：<input id="student_tel_check" type="text"
							name="student_tel_check">
					</div>
					<div class="modal-body">
						电子邮箱：<input id="student_email_check" type="text"
							name="student_email_check">
					</div>
					<div class="modal-footer"></div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-success">修改</button>
					</div>
				</form>
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
	<script>
		function updateMemberModal(obj) {
			$("#updateMemberModal").modal('show');
			var $td = $(obj).parents('tr').children('td');
			var student_num_check = $td.eq(0).text();
			var student_name_check = $td.eq(1).text();
			var student_gender_check = $td.eq(2).text();
			var student_status_check = $td.eq(3).text();
			var branch_name_check = $td.eq(4).text();
			var student_tel_check = $td.eq(5).text();
			var student_email_check = $td.eq(6).text();
			$("#student_num_check").val(student_num_check);
			$("#student_name_check").val(student_name_check);
			$("#student_gender_check").val(student_gender_check);
			$("#student_status_check").val(student_status_check);
			$("#branch_name_check").val(branch_name_check);
			$("#student_tel_check").val(student_tel_check);
			$("#student_email_check").val(student_email_check);
		}
	</script>

	<script>
		function anotherValidateForm() {
			var tel = document.forms["updateMemberForm"]["student_tel_check"].value;
			var eMail = document.forms["updateMemberForm"]["student_eMail_check"].value;
			var gender = document.forms["updateMemberForm"]["student_gender_check"].value;

			var eMailReg = /^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g;
			var idcardReg = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;

			if (!(/^1[3456789]\d{9}$/.test(tel))) {
				alert("手机号码有误，请重新填写");
				return false;
			}

			if (eMail != null && eMail != "") {
				if (!eMailReg.test(eMail)) {
					alert("请填写正确的电子邮箱地址");
					return false;
				}
			}

			if (gender != null && gender != "") {
				if (!((gender == "男") || (gender == "女"))) {
					alert("请填写正确性别（男/女）");
					return false;
				}
			}
		}
	</script>
</body>
</html>