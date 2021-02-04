$(function() {
	common.init();
});

var common = {
	init : function() {
		this.event();
	},
	event : function() {
		var me = this;
	},
	callAjax : function(url, sync, type, param, callback) {
		$.ajax({
			url : url,
			type : "post",
			dataType : type,
			data : param,
			async : sync,
			success : function(data) {
				callback(data);
				serverErr = true;
			},
			error : function(request, status, error) {
				console.log("처리중 오류 발생", request.responseText);
			},
			beforeSend : function() {
			},
			complete : function() {
			}
		});
	},
	initForm : function(obj) {
		$("#" + obj)[0].reset();
	},
	num_comma : function(val) {
		val = val == "" ? 0 : val;
		val = String(val).replace(/,/gi, "")
		val = String(val);
		val = val.replace(/,/gi, "");
		var str = String(val);

		if (str.indexOf(".") > -1) {
			var vlaue = val.split(".");
			return vlaue[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "."
					+ vlaue[1];
		} else {
			return str.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
	},
	getNowDate : function() {
		var date = new Date();
		// date Object를 받아오고
		var year = date.getYear();
		var month = date.getMonth();
		// 달을 받아옵니다
		var clockDate = date.getDate();
		// 몇일인지 받아옵니다

		return (1900 + year) + "-"
				+ ((month + 1) < 10 ? "0" + (month + 1) : (month + 1)) + "-"
				+ clockDate;
	},
	setDataTable : function(obj) {
		"use strict";
		if ($('#' + obj.id).length !== 0) {
			$('#' + obj.id).DataTable().destroy();
			var options = {
				data : obj.data,
				columns : obj.columns,
				// 표시 건수기능 숨기기
				lengthChange : false,
				// 검색 기능 숨기기
				searching : false,
				// 정렬 기능 숨기기
				ordering : false,
				// 정보 표시 숨기기
				info : true,
				// 페이징 기능 숨기기
				paging : false,
				// 초기 표시에 경우 정렬 안함
				order : [],
				// 가로 스크롤바를 표시
				// 설정 값은 true 또는 false
				scrollX : true,
				// 세로 스크롤바를 표시
				// 설정 값은 px단위
				scrollY : obj.height,
				responsive : true,
				autoWidth : true
			};

			return $('#' + obj.id).DataTable(options);
		}
	},
	find_in_object : function(my_object, my_criteria) {
		return my_object.filter(function(obj) {
			return Object.keys(my_criteria).every(function(c) {
				return obj[c] == my_criteria[c];
			});
		});
	},
	downloadExcel : function(table_id, filename) {
		console.log("downloadExcel>>table_id", table_id);
		console.log("downloadExcel>>filename", filename);
		var result = this.doit(table_id, filename, 'xlsx');
	},
	doit : function(table_id, filename, type, fn, dl) {
		console.log("doit>>table_id", table_id);
		console.log("doit>>filename", filename);
		console.log("doit>>type", type);
		console.log("doit>>fn", fn);
		console.log("doit>>dl", dl);
		var elt = document.getElementById(table_id);
		var wb = XLSX.utils.table_to_book(elt, {
			sheet : filename
		});
		return dl ? XLSX.write(wb, {
			bookType : type,
			bookSST : true,
			type : 'base64'
		}) : XLSX.writeFile(wb, fn || (filename + '.' + (type || 'xlsx')));
	}
};