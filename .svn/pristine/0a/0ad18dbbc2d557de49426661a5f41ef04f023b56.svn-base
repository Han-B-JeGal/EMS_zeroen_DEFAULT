<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ZeroEN 에너지 모니터링 시스템</title>
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/bower_components/Ionicons/css/ionicons.min.css">
<!-- DataTables -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<!-- datepicker -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- datetimepicker -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/bower_components/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/dist/css/skins/skin-blue.min.css">
<!-- Dashboard style-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/adminlte/dist/css/style.css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
<!-- Google Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
	$.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/resources/adminlte/dist/js/adminlte.min.js"></script>
<!-- Morris.js charts -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/raphael/raphael.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="${pageContext.request.contextPath}/resources/adminlte/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/adminlte/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/moment/min/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- datetimepicker -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath}/resources/adminlte/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/fastclick/lib/fastclick.js"></script>
<!-- amcharts -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/amcharts/plugins/export/export.css" type="text/css" media="all" />
<script src="${pageContext.request.contextPath}/resources/amcharts/amcharts.js"></script>
<script src="${pageContext.request.contextPath}/resources/amcharts/serial.js"></script>
<script src="${pageContext.request.contextPath}/resources/amcharts/xy.js"></script>
<script src="${pageContext.request.contextPath}/resources/amcharts/funnel.js"></script>
<script src="${pageContext.request.contextPath}/resources/amcharts/gauge.js"></script>
<script src="${pageContext.request.contextPath}/resources/amcharts/pie.js"></script>
<script src="${pageContext.request.contextPath}/resources/amcharts/radar.js"></script>
<script src="${pageContext.request.contextPath}/resources/amcharts/plugins/export/export.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/amcharts/themes/dark.js"></script>
<script src="${pageContext.request.contextPath}/resources/amcharts/themes/light.js"></script>
<!-- FastPivot -->
<script src="${pageContext.request.contextPath}/resources/adminlte/bower_components/FastPivot/fastpivot.min.js"></script>
<!-- Others -->
<script src="${pageContext.request.contextPath}/resources/adminlte/assets/js/xlsx.full.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/adminlte/assets/js/FileSaver.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- <script src="${pageContext.request.contextPath}/resources/adminlte/dist/js/pages/dashboard.js"></script> -->
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
<script src="${pageContext.request.contextPath}/js/common.js?v=<%=System.currentTimeMillis() %>"></script>
</head>