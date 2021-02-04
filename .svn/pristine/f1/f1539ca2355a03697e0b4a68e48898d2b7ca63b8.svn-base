<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel (optional) -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/resources/adminlte/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
			</div>
			<!-- <div class="pull-left info">
				<p>Alexander Pierce</p>
				Status
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div> -->
		</div>
		<!-- search form (Optional) -->
		<!-- <form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control" placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn" class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form> -->
		<!-- /.search form -->
		<!-- Sidebar Menu -->
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">NAVIGATION</li>
			<!-- Optionally, you can add icons to the links -->
			<!-- <li class="active"><a href="#"><i class="fa fa-link"></i> <span>Link</span></a></li>
        <li><a href="#"><i class="fa fa-link"></i> <span>Another Link</span></a></li> -->
			<li class="treeview <c:if test="${upMenuId == 'dashboard'}">active</c:if>"><a href="#"><i class="fa fa-link"></i> <span>Dashboard</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i>
				</span> </a>
				<ul class="treeview-menu">
					<li <c:if test="${menuId == 'dashboard002'}">class="active"</c:if>><a href="${pageContext.request.contextPath}/dashboard002.do">dashboard2</a></li>
				</ul></li>
		</ul>
		<!-- /.sidebar-menu -->
	</section>
	<!-- /.sidebar -->
</aside>