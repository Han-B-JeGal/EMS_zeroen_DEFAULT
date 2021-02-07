<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<%@include file="./include/common.jsp"%>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<!-- Main Header -->
		<%@include file="./include/header.jsp"%>
		<!-- Left side column. contains the logo and sidebar -->
		<%@include file="./include/menu.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<!-- <section class="content-header">
      <h1>
        Page Header
        <small>Optional description</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section> -->
			<!-- Main content -->
			<section class="content container-fluid pd0">
				<div id="wrap">
					<div id="header" class="type2">
						<div class="inp_wrap">
							<span>학교</span>
							<div class="select_wrap">
								<select name="" id="">
									<option value="">선택하세요</option>
									<option value="">전곡중학교</option>
								</select>
							</div>
						</div>
						<div class="inp_wrap">
							<span>학급</span>
							<div class="select_wrap">
								<select name="" id="">
									<option value="">선택하세요</option>
									<option value="">1학년</option>
									<option value="">2학년</option>
									<option value="">3학년</option>
								</select>
							</div>
						</div>
					</div>
					<div id="container" class="dashboard dashboard2 clear">
						<div class="box_wrap box1 clear">
							<div class="cont bd0">
								<span class="title">온도</span>
								<div class="icon icon1">
									<span class="ico"></span>
								</div>
								<span class="data">${model.get(0) }</span>
							</div>
							<div class="cont">
								<span class="title">습도</span>
								<div class="icon icon2">
									<span class="ico"></span>
								</div>
								<span class="data">${model.get(1) }</span>
							</div>
							<div class="cont">
								<span class="title">조도</span>
								<div class="icon icon3">
									<span class="ico"></span>
								</div>
								<span class="data">${model.get(2) }</span>
							</div>
							<div class="cont">
								<span class="title">탄소농도</span>
								<div class="icon icon4">
									<span class="ico"></span>
								</div>
								<span class="data">${model.get(3) }</span>
							</div>
							<div class="cont">
								<span class="title">재실</span>
								<div class="icon icon5">
									<span class="ico"></span>
								</div>
								<span class="data">${model.get(4) }</span>
							</div>
						</div>
						<div class="box_wrap box2">
							<div class="cont">
								<div class="row_title title1">
									<span>온도</span>
								</div>
								<div class="chart bar_chart" id="line-chart"></div>
								<ul class="list">
									<li><span class="title">금일최소</span><span class="data">10℃</span></li>
									<li><span class="title">금일최대</span><span class="data">30℃</span></li>
									<li><span class="title">평균</span><span class="data">20℃</span></li>
								</ul>
							</div>
							<div class="cont">
								<div class="row_title title2">
									<span>습도</span>
								</div>
								<div class="chart bar_chart" id="line-chart2"></div>
								<ul class="list">
									<li><span class="title">금일최소</span><span class="data">20%</span></li>
									<li><span class="title">금일최대</span><span class="data">50%</span></li>
									<li><span class="title">평균</span><span class="data">35%</span></li>
								</ul>
							</div>
							<div class="cont">
								<div class="row_title title3">
									<span>조도</span>
								</div>
								<div class="chart bar_chart" id="line-chart3"></div>
								<ul class="list">
									<li><span class="title">금일최소</span><span class="data">0lx</span></li>
									<li><span class="title">금일최대</span><span class="data">400lx</span></li>
									<li><span class="title">평균</span><span class="data">200lx</span></li>
								</ul>
							</div>
							<div class="cont">
								<div class="row_title title4">
									<span>탄소농도</span>
								</div>
								<div class="chart bar_chart" id="line-chart4"></div>
								<ul class="list">
									<li><span class="title">금일최소</span><span class="data">0%</span></li>
									<li><span class="title">금일최대</span><span class="data">40%</span></li>
									<li><span class="title">평균</span><span class="data">20%</span></li>
								</ul>
							</div>
							<div class="cont">
								<div class="row_title title5">
									<span>재실</span>
								</div>
								<div class="chart bar_chart" id="line-chart5"></div>
								<ul class="list">
									<li><span class="title">금일최소</span><span class="data">0명</span></li>
									<li><span class="title">금일최대</span><span class="data">30명</span></li>
									<li><span class="title">평균</span><span class="data">15명</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<!-- Main Footer -->
		<%@include file="./include/footer.jsp"%>		
		<!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->
	<script type="text/javascript">
		$(function() {
			
		});
	</script>
</body>
</html>